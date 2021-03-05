# Objective-C Programming

> 📗 Ref. [Apple Developer Documentation](https://developer.apple.com/library/archive/documentation/Cocoa/Conceptual/ProgrammingWithObjectiveC/Introduction/Introduction.html#//apple_ref/doc/uid/TP40011210-CH1-SW1)

<br />
<br />
<br />

# Objective-C 동작 원리

## TL;DR

1. 앱 실행 시 `main`함수는 `UIApplicationMain` 함수를 호출하며 `UIApplication`은 인스턴스를 생성하고 이를 `AppDelegate`에게 위임하여 관리한다.
2. 앱 로딩 과정에서 Info.plist 내에서 메인 nib 파일 이름을 명시했다면, 자동으로 해당 nib 파일을 읽어들여서 UI 관련 객체들을 초기화한다.

## 그렇다면 iOS앱이 시작되는 과정을 살펴보자.

iOS앱은 사실 `UIApplication`이라는 클래스의 객체이다. 프로젝트의 `main` 함수는 기본적으로 `UIApplication` 클래스의 인스턴스를 만들어서 GUI를 사용하기 위한 런루프를 돌려주는 작업을 수행한다. 그리고 그 이후에 앱 내에서 일어나는 모든 처리는 `UIApplication` 객체가 관리하게 된다.

(1) `main` 함수가 실행된다.  
(2) `main` 함수는 다시 `UIApplicationMain` 함수를 호출한다.  
(3) 이 함수는 앱의 본체에 해당하는 객체인 `UIApplication` 객체를 생성한다.(인스턴스 생성)  
(4) 또 `Info.plist` 파일을 읽어들여 파일에 기록된 정보를 참고하여 그외에 필요한 데이터를 로드한다.  
(5) 메인 nib 파일을 사용하는 경우 (4)의 과정에서 로드된다.  
(6) 메인 nib 파일이 없거나, 그 속에 AppDelegate가 없는 경우, AppDelegate 객체를 만들고 앱 객체와 연결한다.  
(7) Run loop를 만드는 등 실행에 필요한 준비를 마무리해 간다.  
(8) 실행 완료를 앞두고 앱 객체가 AppDelegate에게 `application:didFinishLaunchingWithOptions:` 메시지를 보낸다.

## main.m?

`main.m`은 Objective-C로 구현된 iOS 어플리케이션의 진입 함수를 가진 파일이다. ObjC 기반의 iOS 프로젝트에는 main.m이 함수가 정의되어 있다. ObjC도 C계열 언어이며 그 구조가 동일하다. 따라서 프로그램이 실행될 때 가장 먼저 호출되어야하는 진입점이 main 함수가 되고 이는 프로그램 전체의 본체이다. Swift에서는 프로그램 실행 시 AppDelegate가 제일 처음 호출되는 반면 ObjC에서는 main.m을 호출gkrh AppDelegate를 호출한다. 그리고 대부분의 경우 AppDelegate의 `didFinishLaunchingWithOptions`에서 부터 시작하니 별로 건드릴 일은 없을 것 같다.(RN에서는 외부 라이브러리를 사용할 때 정도 수정했었다.)'

## UIApplicationMain 함수

iOS앱은 GUI 기반의 앱이다. 보통 간단하게 연습삼아 만드는 명령줄 프로그램과는 성격이 다르다. 프로그램은 실행된 이후에 (초기화와 관련된 몇 가지 자체 구성을 제외하면) 아무런 일도 하지 않으며, 사용자가 직접 끝내지 않는 이상 종료되지 않는다. 그러니까, `main()` 함수를 호출해서 `0`을 리턴하고 딱 끝나는 C 프로그램하고는 뭔가 다른 것이다.

`UIApplicationMain` 함수는 Cocoa Touch 프레임워크에서 앱의 라이프 사이클을 시작하는 함수이다. 이 함수는 `UIApplication` 객체의 인스턴스를 만들고, 해당 객체의 앱으로서 기능하기 위한 제반 조치를 취한다. Cocoa Touch에서 이 과정은 "앱 로딩 프로세스"라고 불린다. **앱 로딩 프로세스는 앱 객체가 생성되는 것을 시작으로, 앱 구동에 필요한 delegate, window, view, view controller들을 로딩하고 초기화하여 이들의 유기적인 관계를 재구성하며 GUI 동작에 필요한 런루프를 만드는 등의 많은 일을 포함한다.** 이 일 중의 거의 대부분은 프로그래머가 일일이 설정하거나 세팅해줄 필요가 없게 끔 되어 있다. 앱 로딩 과정에서 앱이 참조해야 하는 수 많은 정보들은 소스코드가 아니라 info-plist라는 프로퍼티 리스트 파일에 정의된다.

`UIApplicationMain` 함수는 `main`의 고정 파라미터인 `argc`, `argv`를 그대로 넘겨받으면서 추가적으로 두 가지 인자를 더 받고 있다. `principalClassName`은 앱 객체가 될 클래스의 이름인데 이건 특수한 경우가 아닌 이상 'UIApplication'일 것이다.(그래서 `nil`을 넣으면 `UIApplication`으로 대체한다.) 마지막 인자는 AppDelegate 클래스 이름이다. 역시 많은 경우에 nib 파일 내에 해당 객체가 이미 만들어져 있기 때문에, 이 값도 넘겨줄 필요가 없다.

하지만 nib 파일을 사용하지 않거나, nib 파일 내에 AppDelegate가 없는 경우도 있을 수 있다. 하지만 nib 파일은 없어도 되지만, iOS앱 구조상 AppDelegate는 절대 없어서 안된다. 물론, 그러니까 UIApplicationMain 함수에서 파라미터로까지 정의해놓지 않았겠나 싶다. nib 파일을 로딩했는데 AppDelegate가 없다면, `UIApplicationMain` 함수가 인자로 받은 이름을 기반으로, AppDelegate 역할을 수행할 객체를 자동으로 생성하고 AppDelegate로 임명하게 된다.

## AppDelegate의 역할

AppDelegate는 이름 그대로 앱 객체(Instance)의 대리인 역할을 한다. `UIApplication`은 서브 클래싱을 하는 경우도 드물고, 별로 그럴 이유도 없으며 그게 쉽지도 않다. 하지만 분명히 앱의 라이프 사이클의 여러 스테이지에서 수행되어야 하는 일은 있다. 따라서 앱 객체 클래스를 직접 서브 클래싱 하지 않고 delegate를 통해 처리하게 된다. 이러한 패턴처럼 Cocoz 및 Cocoa Touch는 상속을 통한 커스텀 클래스를 만들어 나가면서 객체를 확장하기 보다는 다른 이런 언어의 특성들을 사용하여 가능한 서브 클래싱을 피하는 쪽을 권장한다.

## 앱의 시작과 종료

앱이 시작되면 AppDelegate는 `application:didFinishLaunchingWithOptions:`라는 메시지를 받게 된다. **이 메소드는 앱이 실행 준비를 거의 마쳤을 때 호출되는데, 이 때 앱에 필요한 크리티컬한 데이터의 초기화를 하면 된다.** 단, 아직 앱이 화면에 나타나기 이전이므로 시간이 많이 걸리는 작업을 여기서 하면 안된다.(앱의 초기 로딩이 길어질 수 있다.) 데이터의 초기화를 위해 이 메소드는 거의 모든 경우에 오버라이드(Override)된다.

```objectivec
- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
```

**특히 메인 nib 파일을 사용하지 않는 앱이라면, 윈도 및 메인 뷰가 없는 상태이므로, 이 메소드에서 생성하여 설치해야 한다.**

그리고 앱에 종료되기 직전에는 다시 이를 알려주는 메시지가 전달된다. AppDelegate에서는 잃어서는 안되는 사용자 데이터를 종료 전에 미리 저장해 둘 기회를 얻는 셈이다.

```objectivec
- (void)applicationWillTerminate:(UIApplication *)application
```

그 외에도 AppDelegate는 앱의 상태 변화에 대해 감지할 수 있다. 비활성화 된다거나 잠자기에 들어간다거나 저장된 상태로부터 복구된다거나 하는 것을 알아차리며, iOS 디바이스가 회전했을 때, 방향에 따라 화면을 회전할 것인지 결정할 수도 있다. AppDelegate의 주요 메소드에 대해서는 [`UIAppDelegateProtocol`](https://developer.apple.com/documentation/uikit/uiapplication#//apple_ref/doc/uid/TP40006728) 공식 문서를 참고하면된다.

<br />
<br />

# UIViewController

: 앱의 기초가 되는 내부 구조

-   앱은 ViewController로 이루어져 있다. 어떤 앱이던 한 개 이상의 ViewController를 가지고 있다.
-   ViewController는 View를 가지고 있다.
-   대부분의 앱은 수많은 ViewController로 이루어져있기도 하다.

## View의 계층관리

> Each view controller manages a view hierarchy, the root view of which is stored in the view property of this class. The root view acts primarily as a container for the rest of the view hierarchy. The size and position of the root view is determined by the object that owns it, which is either a parent view controller or the app’s window. The view controller that is owned by the window is the app’s root view controller and its view is sized to fill the window.

-   각각의 ViewController는 View의 계층을 관리한다.
-   이 계층을 나눌 때에 가장 근원이 되는 것이 **RootView**이다.
    -   때문에 모든 ViewController는 한개의 RootView를 가진다.
-   화면에 표시되는 모든 뷰는 RootView의 계층 안에 있어야 한다.

## View와 관련된 Notifications을 다루는 것

> When the visibility of its views changes, a view controller automatically calls its own methods so that subclasses can respond to the change. Use a method like viewWillAppear: to prepare your views to appear onscreen, and use the viewWillDisappear: to save changes or other state information. Use other methods to make appropriate changes.

<img width="582" alt="스크린샷 2021-03-05 17 33 13" src="https://user-images.githubusercontent.com/33711323/110089128-11816500-7dd9-11eb-9b2f-d5de79a09a76.png" style="margin: 0 auto;">
