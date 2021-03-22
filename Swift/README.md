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

## 조건문과 반복문

조건을 검사할 때는 `if`, `swift`를 사용합니다.

```swift
var age = 19
var student = ""

if age >= 8 && age < 14 {
    student = "초등학생"
} else if age < 17 {
    student = "중학생"
} else if age < 20 {
    student = "고등학생"
} else {
    student = "기타"
}

student // 고등학생
```

`if` 문의 조건절에는 값이 정확하게 참 혹은 거짓으로 나오는 `Bool` 타입을 사용해야 합니다. Swift는 타입 검사를 매우 엄격하게 하기 때문에, 다른 언어에서 사용 가능한 아래 코드를 사용할 수 없습니다.

```swift
var number = 0
if !number {    // Compile Error!
    // ...
}
```

> Unary operator '!' cannot be applied to an operand of type 'Int'

대신, 아래와 같이 사용이 가능합니다.

```swift
if number == 0 {
    // ...
}
```

빈 문자열이나 배열 등을 검사할 때에도 명확하게 길이가 0인지를 검사해야 합니다. `.isEmpty` 메소드 사용

```swift
if name.isEmpty { ... }
if languages.isEmpty { ... }
```

Swift의 `switch`문에는 조금 특별한 점이 있습니다. 패턴 매칭을 통해 범위에 포함시킬 수 있습니다.

```swift
switch age {
case 8..<14:
    student = "초등학생"
case 14..<17:
    student = "중학생"
case 17..<20:
    student = "고등학생"
default:
    student = "기타"
}
```

`8..<14`와 같이 범위(Range) 안에 age가 포함되어 있는지 검사할 수 있습니다.

반복되는 연산을 할 때에는 `for`, `while`을 사용합니다. `for` 구문을 사용해서 배열과 딕셔너리를 차례로 순환할 때에는 아래와 같이 사용합니다.

```swift
// Array를 for문에서 사용하기
for language in languages {
    print("저는 \(language) 언어를 다룰 수 있습니다.")
}

// Dictionary를 for문에서 사용하기
for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital)입니다.")
}
```

간단한 반복문을 만드록 싶다면 범위를 만들어서 반복시킬 수도 있습니다.

```swift
for i in 0..<100 {
    i
}
```

만약 i를 사용하지 않는 단순 반복문은 `i` 대신 `_`를 사용할 수 있습니다.

```swift
for _ in 0..<10 {
    print("Hello!")
}
```

`_`(underscore) 키워드는 어디서나 변수 이름 대신에 사용할 수 있습니다.

`while`은 조건문의 값이 `true`일 때 계속 반복됩니다.

```swift
var i = 0
while i < 100 {
    i += 1
}
```
