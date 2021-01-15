# UpDownGame

> [iOS 개발자 '야곰'님의 iOS 기초 강의를 보고 공부합니다.](https://blog.yagom.net/category/ios-dev/ios-for-starter/)

## Script

-   프로젝트 생성(프로젝트 네이밍: camelCase, `Bundle Identifier`: 회사 도메인을 반대로 작성. 예를 들어 com.xtring)
-   Xcode에서 제공하는 `UI Library` : `cmd + shift + l`
-   첫 번째 함수 작성

```swift
...
@IBAction func sliderValueChanged(_ sender: UISlider) {
   print(sender.value)
}
...
```

-   View의 UI와 함수를 연결할 때는 ViewController를 선택하고 Connection inspector에서 해당 함수를 연결해줍니다.
-   `@IBAction`은 인터페이스 빌더에 어떤 요소들이 이벤트를 받았을 때 어떤 액션을 취할 것인지 정의할 때 사용
-   `@IBOutlet`은 인터페이스 빌더에 올라와 있는 UI 요소에 값을 가져오고 싶을 때 사용
-   `Event-driven Programming` : 프로그래밍 기법의 일종. 이벤트에 따라서 어떤 행위를 할지 결정하는 방식.(어떤 이벤트가 발생했을 때 이런 코드를 실행하겠다.) ~터치, Push Notification이 있을 때 어떤 동작을 정한다.과 같은 흐름의 프로그래밍.
-   함수작성 시 **함수명을 수정해야 할때**는 해당 함수명을 선택 후 마우스 오른쪽 클릭 > `Refactor` > `Rename...` 클릭 > touchUpREsetButton을 touchUpResetButton으로 수정 후 `Rename` 클릭
-   Label 폰트 스타일링 시 Font를 `System XX`으로 사용하면 Font가 가변적으로 변하지 못함. 따라서 System이 아닌 각 Front Style에 맞는 것을 사용하는 것이 좋다.

```
headline - 강조(볼드)
Body - 일반
```

-   `Asset Catelog` >> `Assets.xcassets` : assets들을 모아놓는 곳. assets를 사용하는 이유? 여러기기에 최적화된 assets을 제공해야 하기 때문에. 따라서 여러 사이즈(해상도)의 리소스가 필요. `App Icon`, `Color Set`, `Data set(Sounds, Docs, Videos, ...)`, `Image Set`, `Launch Image`, `Sticker`, `Watch`, `Complication`, ... 등
-   `Auto Layout` : 애플 대부분 플랫폼에 통용되는 레이아웃 엔진. 사용자 인터페이스를 균일하게 보여주기 위해 사용. **`Constraints`(제약)** : 고정된 값을 통한 상태를 주는 것. >> 얼마나 떨어져 있을지? 어떻게 정렬할 것인지?. `Constraints`를 잘못 설정했다. `Size Inspector`를 통해 수정해야한다.
-   원하는 UI에 이미지 넣기

```swift
...
override func viewDidLoad() {
    super.viewDidLoad()

    // Storyboard에서 직접 이미지를 지정하지 못하는 경우 사용. 아래 예제는 slider의 thumb 이미지를 변경하는 것
    slider.setThumbImage(image literal, for: .normal)   // image literal을 통해 이미지를 지정
}
...
```

-   `Swift`의 주석

```swift
// single-line comments
/*
    multi-
    line
    comments
*/
```

-   `Swift`의 함수 분석하기

```swift
@IBAction func sliderValueChanged(_ sender: UISender) { ... }
// (1) @IBAction : 인터페이스 빌더에서 연결할 액션함수. 특정 이벤트와 연결할 수 있다.
// (2) func : 함수!
// (3) sliderValueChanged : 함수명
// (4) (_ sender: UISender) : 파라미터(매개변수명: type)
```

-   `Swift`의 변수(Variables)와 상수(Constants)

```swift
Variables => var
Constants => let

var randomValue : Int = 0
let hitValue : Int = 0
```

-   Data Types(일반적으로 다른 언어와 같음)
-   Range of Variables >> Inside of braces pair `{}`
-   Alert 만들기(func showAlert())

```swift
func showAlert(message: String) {
    let alert = UIAlertController(title: nil,   // nil == null
                                    message: message,
                                    preferredStyle: .alert)
    let okAction = UIAlertAction(title: "OK",
                                    style: .default) { (action) in
        self.reset()
    }
    alert.addAction(okAction)
    present(alert,
            animated: true,
            completion: nil)
}
```

-   새로운 화면 만들기

```markdown
1. `File` > `New` > `File...`
2. `CoCoa Touch Class` 선택 > `Next`
3. Subclass of : `UIViewController` 선택
4. Class : `[화면이름]ViewController` > `Create`
5. `Main.Storyboard`에서 새로운 화면 올려주기 > `cmd` + `shift` + `l` > 'View Controller' 검색 > 드래그해서 원하는 위치에 드랍
6. 새로운 View Controller 선택 > 우측에 Identity Inspector 클릭 > Custom Class의 Class: `방금 만든 View Controller` 선택
```

-   Text View

```markdown
-   `Label` vs `TextView` => 둘 다 Text를 표현한다
    => TextView는 Label과 다르게 **사용자와 인터렉션**할 수 있다.
    => TextView는 글의 길이가 늘어나면 **자동으로 Scroll**이 적용됩니다.
```

-   Text Field : 사용자에게 한줄의 입력을 받을 수 있다.
-   Text View에 이메일, 전화번호 등 특정 포멧을 가진 데이터를 입력하면 `Data Detectors`를 이용해 자동으로 해당 데이터를 인식해 사용할 수 있다.
-   화면과 화면을 버튼으로 연결하기((1) => (2))

```markdown
-   View(1)의 버튼을 클릭하고 control(^)을 눌러 이동할 Veiw에 가져다 놓는다. > 팝업의 `Action Segue` 중 하나를 선택(예제에서는 `Present Modally` 선택)
-   View 사이의 `Storyboard Segue`가 생깁니다. 이는 **화면 간의 전환을 정의**합니다.
-   `Storyboard Segue`를 선택하면 화면 전환 시 어떤 효과를 줄 것인지 정의할 수 있습니다.(예제에서는 Transition을 `Cross Dissolve`로 선택)
```

-   화면 이동 후 다시 이전 페이지로 돌아가기

```swift
// 바로 위에서 알아본 Action Segue를 사용하면 X(만약, 그렇게 한다면 다시 이전 화면을 새롭게 생성합니다. 즉, 기존 상태가 유지되지 안습니다.)
// [생성한 화면]ViewController에 코드 작성

...
@IBAction func touchUpDismissButton(_ sender: UIButton) {
    dismiss(animated: true,     // dismiss() : 화면에서 사라지게 하는 메서드(<-> present() : 화면에 보이게)
            completion: nil)
}
...
```

(2) 화면의 ViewController 선택 후 Connection Inspector의 Recived Actions에 방금 작성한 `touchUpDismissButton`를 찾습니다. 이를 드레그로 돌아갈 기능을 하는 버튼에 드랍하고 `Touch Up Inside`를 선택합니다.
