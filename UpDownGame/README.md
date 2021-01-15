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

<br />
<br />
<br />

## Unit Test

```swift
//
//  UpDownGameTests.swift
//  UpDownGameTests
//
//  Created by xtring on 2021/01/10.
//

import XCTest
@testable import UpDownGame

class UpDownGameTests: XCTestCase {

    /*
     * setUp()과 tearDown()는 클래스의 각 테스트 메소드의 호출 전(setUp)/후(tearDown)에 호출됩니다.
     * setUp()과 tearDown()의 역할 : 항목이 존재해야하거나 특정 상태가 필요한 테스트가 있으므로 setUp에 이러한 작업(객체 인스턴스 만들기, db 초기화, 규칙 작성 등)을 수행
     *                           또한 각 테스트가 시작된 위치에서 멈춰야한다는 것을 알기 때문에 앱 상태를 초기 상태(예: 파일 닫기, 연결, 새로 만든 항목 제거, 트랜잭션 콜백 등)
     *                           로 복원원해야 함을 의미합니다.(이 단계는 tearDown에 포함됨)
     *
     * 따라서 테스트 자체에는, 결과를 얻기 위해 테스트 객체에서 수행 할 동작만 포함되어야하며 setUp 및 tearDown은 테스트 코드를 깨끗하고 유연하게 유지하는데 도움이되는 메서드입니다.
     */

    // setUp() : 초기화 코드
    // setUp() 클래스 메소드는 테스트 케이스가 시작될 때 테스트 케이스의 첫 번째 테스트가 실행되기 전에 정확히 한 번 호출됩니다.
    override func setUpWithError() throws {
        // ...
    }

    // tearDown() : 해체 코드
    // tearDown() 클래스 메소드는 모든 개별 테스트가 실행된 후 테스트 케이스가 끝날 때 정확히 한 번 호출됩니다.
    override func tearDownWithError() throws {
        // ...
    }

    func testExample() throws {
    }

    func testPerformanceExample() throws {
        self.measure {
        }
    }
}

```

<br />
<br />
<br />

## UI Test

```swift
//
//  UpDownGameUITests.swift
//  UpDownGameUITests
//
//  Created by xtring on 2021/01/10.
//

import XCTest

class UpDownGameUITests: XCTestCase {   // XCTestCase는 테스트에 필요한 기본적인 기능을 제공하기 때문에, 모든 테스트 클래스는 XCTestCase를 상속받아 구현해야함

    // let app = XCUIApplication()  // 테스트를 위한 UIApplication 세팅

    /*
     *  setUp & tearDown : 테스트 전과 후에 필요한 작업을 실행할 수 있는 기회가 제공되는ㄴ setUp과 tearDown 함수는 아래와 같은 순서로 출됩니다.
     *  setUp() -> test_func() -> tearDown()
     *
     *  UI 테스트를 위해서는 XCUIApplication의 launch 함수를 호출하여 앱을 실행해주어야 하는데, setUp에서 호출해주면 테스트 함수가 실행되기 직전에 매번 앱이 실행됩니다.
     */

    override func setUpWithError() throws {

        continueAfterFailure = false
        // app.lauch() // 테스트 앱 실행
    }

    override func tearDownWithError() throws {
        // ...
    }

    /*
     *  XCUIElement : UI 테스트에서 UIButton 또는 UILabel 등의 컴포넌트를 대신하는 객체입니다.
     *              UI 테스트는 사람이 실제로 앱을 사용하는 것처럼 현재 실행 중인 앱에서 필요한 UI 컴포넌트를 찾아 Tap을 하거나, 텍스트를 입력하고 스크롤을 하는 등의 동작을 구현해야 합니다.
     *              Element 존재 여부인 exists, 터치를 위한 tap, 텍스트 입력을 위한 typeText 함수가 주로 사용하는 XCUIElement의 대표적인 Property 및 함수입니다.
     */

    /*
     *  XCUIElementQuery : 화면에 그려진 XCUIElement를 찾기 위해서는 XCUIElementQuery를 사용할 수 있는데, 클래스 이름처럼 Query를 통해 현재 앱에 보이고 있는 Element를 찾을 수 있습니다. 컴포넌트를 찾는 원리는 매우 간단합니다. 뷰는 트리 형태로 구성되어 있어 Element Hierarchy를 이해하면 Element를 쉽게 찾을 수 있습니다.
     */

    func test_func() throws {
    }

    func testLaunchPerformance() throws {
        if #available(macOS 10.15, iOS 13.0, tvOS 13.0, *) {
            measure(metrics: [XCTApplicationLaunchMetric()]) {
                XCUIApplication().launch()
            }
        }
    }
}
```
