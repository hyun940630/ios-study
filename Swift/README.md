# Swift 정리

> [전수열님의 GitBook](https://devxoul.gitbooks.io/ios-with-swift-in-40-hours/content/Chapter-2/variables-and-constants.html)을 기반으로 정리합니다.

## 변수와 상수

Swift에서는 변수(variable)를 `var`, 상수(constant)를 `let`로 사용하고 있습니다.

Swift는 언제 어디서 값이 바뀔지 모르는 변수보다는 상수를 사용하는 것을 권장합니다.

```swift
var name = "Hwang Hyun"
let birthyear = 1994
```

변수는 값의 변경이 가능합니다!

```swift
name = "Mark"
```

하지만 아래와 같이 **상수의 값을 변경하려고 하면 컴파일 에러가 발생**합니다!

```swift
birthyear = 20000   // Compile Error!
```

> Cannot assign to value: 'birthyear' is a 'let' constant

## 정적 타이핑

Swift는 `정적 타입핑 언어`입니다. 변수나 상수를 정의할 때 그 자료형(타입)이 어떤 것인지를 명시해주어야 하는 언어를 말합니다.

```swift
var name: String = "Mark"
let birthyear: Int = 1994
var height: Float = 180.3
```

변수와 상수명 오른쪽에 `: String`, `: Int`, `: Float`와 같이 변수에 담길 값의 타입을 지정해주는 것을 `정적 타입핑`한다라고 합니다.
그리고 `: String`를 `Type Annotation`이라고 합니다.

Swift에서는 **타입을 매우 엄격**하게 다루기 때문에 다른 자료형끼리는 기본적인 연산조차 되지 않습니다.

```swift
birthyear + height  // Compile Error!
```

> Binary operator '+' cannot be applied to operands of type 'Int' and 'Float'

이를 해결하는 방법은 강제로 형을 변환하여 사용하는 것입니다.

```swift
Float(birthyear) + height   // 2174.3
```

Swift에서 문자열에 변수를 넣는 방법은 아래와 같습니다.

```swift
String(birthyear) + "년에 태어난 " + name + "아 안녕!"  // 1994년에 태어난 Mark야 안녕!
```

이렇게 사용하면 가독성이 조금은 떨어지는 것 같습니다. Swift에는 조금 더 간결한 작성법이 있습니다!

```swift
"\(birthyear)에 태어난 \(name)아 안녕!"
```

## 타입 추론(Type Inference)

맨 처음에 사용한 예제에서는 자료형을 명시하지 않았는데도 `name`이 문자열이라는 것을 알았으며 `birthyear`가 정수형이라는 것을 알았습니다.

```swift
var name = "Hwang Hyun"
let birthyear = 1994
```

이게 어떻게 가능할까요?

Swift는 큰 따옴표(`""`)로 감싸진 텍스트는 `String` 타입인 것을 알고, 숫자는 `Int` 타입인 것을 추론합니다. 이 처럼 타입을 직접 명시하지 않아도 정적 타입핑을 할 수 있게 해주는 것을 `타입 추론(Type Inference)`라고 합니다.

## 배열(Array)과 딕셔너리(Dictionary)

배열과 딕셔너리는 모두 대괄호(`[]`)를 이용해서 정의할 수 있습니다.

```swift
var languages = ["Swift", "Objective-C", "Python"]
var capitals = [
    "한국": "서울",
    "일본": "도쿄",
    "중국": "베이징",
]
```

배열과 딕셔너리의 값에 접근해 봅시다.

```swift
languages[0]    // Swift
languages[1] = "Ruby"

capitals["한국"]    // 서울
capitals["프랑스"] = "파리"
```

배열과 딕셔너리 역시 `let`으로 정의하면 값을 수정(수정/추가/제거)할 수 없습니다.

만약 빈 배열이나 딕셔너리를 정의하는 방법은 아래와 같습니다.

```swift
var languages: [String] = []
var capitals: [String: String] = [:]
```

빈 배열로 선언하는 것을 조금 더 간결하게 하고싶다면, 아래와 같습니다.

```swift
var languages = [String]()
var capitals = [String: String]()
```

대괄호 뒤에 괄호(`()`)를 쓰는 것은 생성자(Initializer)를 호출하는 것입니다.
