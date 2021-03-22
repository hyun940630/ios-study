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

## 옵셔널(Optional)

Swift가 가진 가장 큰 특징 중 하나가 옵셔널(Optional)입니다. 직역하면 '선택적인'이라는 뜻입니다. 이는 값이 있을 수도 있고 없을 수도 있다는 것을 나타냅니다.
"swift", ""는 값이 있는 것이며 ""는 빈 문자열 입니다. 값이 없는 문자열은 `nil`입니다.

정수형의 경우 123, 0은 값이 있는 것입니다. 0도 숫자값이죠. 없는 값의 경우 `nil`이라고 표현합니다.
마찬가지로 빈 배열과 빈 딕셔너리라고 해서 '값이 없는' 것이 아닌 '비어 있을' 뿐입니다. 배열과 딕셔너리의 경우에도 '없는 값'은 `nil`입니다.

값이 없는 경우 `nil`을 사용합니다. 하지만 모든 변수에 `nil`을 넣을 수 있는 것은 아닙니다.

```swift
var name: String = "Mark"
name = nil  // Compile Error
```

> Nil cannot be assigned to type 'String'

값이 있을 수도 있고 없을 수도 잇는 변수를 정의할 때는 `타입 어노테이션`에 `?`를 붙여야 합니다. 이렇게 정의한 변수를 옵셔널(Optional)이라고 합니다. 옵셔널에 초깃값을 지정하지 않으면 기본값은 `nil`입니다.

```swift
var email: String?
print(email)    // nil

email = "hh940630@gmail.com"
print(email)    // Optional("hh940630@gmail.com")
```

옵셔널로 정의한 변수는 옵셔널이 아닌 변수와는 다릅니다. 예를 들어, 아래와 같은 코드는 사용할 수 없습니다.

```swift
let optionalEmail: String? = "hh940630@gmail.com"
let requiredEmail: String = optionalEmail   // Compile Error
```

`requiredEmail` 변수는 옵셔널이 아닌 `String`이기 때문에 항상 값을 가지고 있어야 합니다. 하지만 `optionEmail`은 옵셔널로 선언된 변수이기 때문에 실제 코드가 실행되기 전까지 값이 있는지 없는지 알 수 없습니다. 따라서 Swift 컴파일러는 안전을 위해 `requiredEmail`에는 옵셔널로 선언된 변수를 대입할 수 없게 만들었습니다.

옵셔널은 개념적으로 아래와 같이 표현 가능합니다. 어떤 값 또는 `nil`을 가지고 있습니다.

```
        ,-- 어떤 값 (String, Int, ...)
Optional
        `-- nil
```

## 옵셔널 바인딩(Optional Binding)

옵셔널의 값을 가져오고 싶은 경우에는 옵셔널 바인딩(Optional Binding)을 사용합니다.

옵셔널 바인딩은 옵셔널의 값이 존재하는지를 검사한 뒤, 존재한다면 그 값을 다른 변수에 대입시켜줍니다. `if let` 또는 `if var`를 사용하며 옵셔널을 벗겨서 값이 있으면(`nil`이 아니면) `if`문 안으로 들어가고, 값이 `nil`이라면 그냥 통과하게 됩니다.

예를 들어 아래 코드에서 `optionalEmail`에 값이 존재한다면 `email`이라는 변수 안에 실제 값이 저장되고, `if`문 내에서 그 값을 사용할 수 있습니다. 만약 `optionalEmail`이 `nil`이라면 `if`문이 실행되지 않고 넘어갑니다.

```swift
if let email = optionalEmail {
    print(email)    // optionalEmail의 값이 존재한다면 해당 값이 출력됩니다.
}
// optionalEmail의 값이 존재하지 않는다면 if문을 그냥 지나칩니다.
```

하나의 `if`문에서 콤마(`,`)로 구분하여 여러 옵션을 바인딩할 수 있습니다. 이곳에 사용된 모든 옵셔널의 값이 존재해야 `if`문 안으로 진입합니다.

```swift
var optionalName: String? = "Mark"
var optionalEmail: String? = "hh940630@gmail.com"

if let name = optionalName, email = optionalEmail {
    // name과 email 값이 존재
}
```

아래의 방법은 위 예시와 같습니다.

```swift
if let name = optionalName,
  let email = optionalEmail {
  // name과 email 값이 존재
}
```

두번째 let 부터는 생략이 가능합니다.

또한 `,`를 사용하여 옵셔널 바인딩이 일어난 후 조건을 검사하게 됩니다.

```swift
var optionalAge: Int? = 22

if let age = optionalAge, age >= 20 {
  // age의 값이 존재하고, 20 이상입니다.
}
```

위와 동일합니다.

```
if let age = optionalAge {
  if age >= 20 {
    // age의 값이 존재하고, 20 이상입니다.
  }
}
```

## 옵셔널 체이닝(Optional Chaining)

Swift의 옵셔널 체이닝을 사용하면 값이 빈 값을 가지고 있는지 쉽게 확인이 가능합니다. 예시를 살펴봅니다.
아래 코드는 옵셔널 체이닝을 사용하지 않는 경우입니다.

```swift
let array: [String]? = []
var isEmptyArray = false

if let array = array, array.isEmpty {
  isEmptyArray = true
} else {
  isEmptyArray = false
}

isEmptyArray
```

옵셔널 체이닝을 사용하면 이 코드를 더 간결하게 사용가능합니다.

```swift
let isEmptyArray = array?.isEmpty == true
```

옵셔널 체이닝은 옵셔널의 속성에 접근할 때, 옵셔널 바인딩 과정을 `?` 키워드로 줄여주는 역할을 합니다.

-   `array`가 `nil`인 경우

```swift
array?.isEmpty  // array?까지 실행되고 nil을 반환
```

-   `array`가 빈 배열인 경우

```swift
array?.isEmpty  // array?.isEmpty까지 실행되고 `true`를 반환
```

-   `array`에 요소가 있는 경우

```swift
array?.isEmpty  // array?.isEmpty까지 실행되고 `false`를 반환
```

위의 결과에서 볼 수 있듯이 결과로 나올 수 있는 값은 `nil`, `true`, `false`가 있습니다.
`isEmpty`의 반환값은 `Bool`인데, 옵셔널 체이닝으로 인해 `Bool?`을 반환하도록 바뀐 것이죠. 따라서 값이 실제로 `true`인지 확인하려면, ` == true`를 해주어야 합니다.

## 옵셔널 벗기기

옵셔널을 사용할 때마다 옵셔널 바인딩을 하는 것이 가장 바람직합니다. 하지만 분명히 값이 존재하는 변수임에도 불구하고 옵셔널로 사용해야 하는 경우가 있으며 이때 옵셔널 벗기기를 해야합니다. 옵셔널에 값이 있다고 가정하고 값에 바로 접근할 수 있도록 도와주는 키워드인 `!`를 붙여서 사용하면 됩니다.

```swift
print(optionalEmail)    // optional("hh940630@gmail.com")
print(optionalEmail!)   // hh940630@gmail.com
```

`!`를 사용할 때는 반드시 주의해야합니다. 만약 옵셔널 값이 `nil`인 경우 런타임 에러가 발생하며 iOS 앱은 강제로 종료(크레시)됩니다.

```swift
var optionalEmail: String?
print(optionalEmail!)   // Runtime Error: optionalEmail is nil
```

> fatal error: unexpectedly found nil while unwrapping an Optional value

## 암묵적으로 벗겨진 옵셔널(Implicitly Unwrapped Optional)

만약 옵셔널을 정의할 때 `?` 대신 `!`를 붙이면 `ImplicitlyUnwrappedOptional`이라는 옵셔널로 정의됩니다. 이를 '암묵적으로 벗겨진 옵셔널'이라고 합니다.

```swift
var email: String! = "hh940630@gmail.com"
print(email)    // hh940630@gmail.com
```

이렇게 정의된 옵셔널은 `nil`을 포함할 수 있는 옵셔널이지만, 접근할 때 옵셔널 바인딩이나 옵셔널을 벗기능 과정을 거치지 않고도 값에 바로 접근할 수 있다는 점에서 일반적인 옵셔널과 조금 다릅니다.

옵셔널 벗기기와 마찬가지로, 값이 없는데 접근을 시도하면 런타임 애러가 발생합니다.

```swift
var email: String!
print(email)    // Runtime Error!
```

> fatal error: unexpectedly found nil while unwrapping an Optional value

**가급적이면 일반적인 옵셔널을 사용해서 정의하고 옵셔널 바인딩 또는 옵셔널 체이닝을 통해 값에 접근하는 것이 바람직합니다.**

## 함수

Swift에서 함수는 `func` 키워드를 사용해서 정의합니다. 그리고 `->`를 사용해서 함수의 반환(return) 타입을 지정합니다.

```swift
func hello(name: String, time: Int) -> String {     // hello 함수는 name(string), time(int) parameter들을 받으며 String 타입을 반환합니다.
    var string = ""
    for _ in 0..<time {
        string += "\(name)님 안녕하세요!\n"
    }
    return string
}
```

Swift에서는 함수를 호출할 때 파라미터 이름을 함께 써주어야 합니다.

```swift
hello(name: "Mark", time: 3)    // 함수 호출 시 파라미터에 각 파라미터 명을 써주어야 함
```

함수 호출 시 사용하는 파라미터 이름과 함수 내부에서 사용하는 파라미터 이름을 다르게 사용할 수 있습니다.

```swift
func hello(to name: String, numberOfTimes time: Int) {
    // 함수 내부에서는 `name`, `time`을 사용합니다.
    for _ in 0..<time {
        print(name)
    }
}

hello(to: "Mark", numberOfTimes: 3)     // 함수를 호출 할 때는 `to`, `numberOfTimes`를 사용합니다.
```

파라미터 이름을 `_`로 정의하면 함수를 호출할 때 파라미터 이름을 생략할 수 있습니다.

```swift
func hello(_ name: String, time: Int) {
    // ...
}

hello("Mark", time: 3)      // 'name: '이 생략됨
```

파라미터에 기본값을 지정할 수도 있습니다. 기본값이 지정되어 있다면 함수 호출 시 생략이 가능합니다.

```swift
func hello(name: String, time: Int = 1) {
    // ...
}

hello("Mark")       // time은 기본값이 지정되어 있으므로 생략이 가능
```

`...`을 사용하면 개수가 정해지지 않은 파라미터(Variadic Parameters)를 받을 수 있습니다.

```swift
func sum(_ numbers: Int...) -> {
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum(1, 2)
sum(3, 4, 5)
// * number parameter를 정하지 않고 받을 수 있음
```

함수 안에 함수를 다시 작성하는 것이 가능합니다.

```swift
func hello(name: String, time: Int) {
    func message(name: String) {
        return "\(name)님 안녕하세요!"
    }

    for _ in 0..<time {
        print(message(name: name))
    }
}
```

함수 안에 정의한 함수를 반환 할 수 있습니다.

```swift
func helloGenerator(message: String) -> (String) -> String {
    func hello(name: String) -> String {
        return name + message
    }

    return hello
}

let hello = helloGenerator(message: "님 안녕하세요!")
hello("Mark")   // Mark님 안녕하세요!
```

여기서 핵심은 `helloGenerator()` 함수의 반환 타입이 `(String) -> String`라는 것입니다. 즉, `helloGenerator()`는 '문자열을 받아서 문자열을 반환하는 함수'를 반환하는 함수라는 것입니다.
`helloGenerator()` 안에 정의한 `hello()` 함수가 여러개의 파라미터를 받는다면 아래와 같이 사용합니다.

```swift
func helloGenerator(message: String) -> (String, String) -> String {
    func hello(firstName: String, lastName: String) -> String {
        return lastName + firstName + message
    }
    return hello
}

let hello = helloGenerator(message: "님 안녕하세요!")
hello("Mark", "Hwang")
```

## 클로저(Closure)

클로저(Closure)를 사용하면 바로 위에 작성한 코드를 조금 더 간결하게 만들 수 있습니다. 클로저는 중괄호(`{}`)로 감싸진 '실행 가능한 코드 블럭'입니다.

```swift
func helloGenerator(message: String) -> (String, String) -> String {
    return { (firstName: String, lastName: String) -> String in
        return lastName + firstName + message
    }
}
```

일반적인 함수와 다르게 함수 이름을 정의하지 않습니다. 하지만 파라미터를 받을 수 있고 반환 값이 존재할 수 있습니다. 이렇게 생긴 형태를 클로저(Closure)라고 합니다.

클로저는 중괄호(`{}`)로 감싸져있습니다. 그리고 파라미터를 괄호로 감싸서 정의합니다. 함수와 마찬가지로 `->`를 사용해서 반환 타입을 명시합니다. 조금 다른 점은 `in` 키워드를 사용해서 파라미터, 반환 타입 영역과 실제 클로저의 코드를 분리하고 있습니다.

```swift
{ (firstName: String, lastName: String) -> in
    return lastName + firstName + message
}
```

클로저의 장점은 **간결함**과 **유연함**에 있습니다.

Swift 컴파일러의 타입 추론 덕분에, `helloGenerator()`함수에서 반환하는 타입을 가지고 클로저에서 어떤 파라미터를 받고 어떤 타입을 반환하는지를 알 수 있습니다. >> **파라미터 타입을 생략 가능**

```swift
func helloGenerator(message: String) -> (String, String) -> String {
    return { firstName, lastName in
        return lastName + firstName + message
    }
}
```

파라미터에 임의의 변수를 통해 접근이 가능합니다.

```swift
func helloGenerator(message: String) -> (String, String) -> String {
    return {
        return $1 + $0 + message
    }
}
```

클로저 내부의 코드가 한 줄이라면, `return`까지도 생략할 수 있습니다.

```swift
func helloGenerator(message: String) -> (String, String) -> String {
    return { $1 + $0 + message }
}
```

코드를 최대한으로 생략하면 아래의 코드가 나옵니다.

```swift
let hello: (String, String) -> String = { $1 + $0 + "님 안녕하세요!" }
hello("Mark", "Hwang")
```

여기에는 옵셔널과 옵셔널 체이닝도 사용가능합니다.

```swift
let hello: ((String, String) -> String)?
hello?("Mark", "Hwang")
```

클로저를 변수로 정의하고 함수에서 반환할 수도 있는 것처럼, 파라미터로도 받을 수 있습니다.

```swift
func manipulate(number: Int, using block: Int -> Int) -> Int {
    return block(number)
}

manipulate(number: 10, using: { (number: Int) -> Int in
    return number * 2
})
```

이것도 생략이 가능합니다.

```swift
manipulate(number: 10, using: {
    $0 * 2
})
```

만약 함수의 마지막 파라미터가 클로저라면, 괄호와 파라미터 이름마저 생략할 수 있습니다.

```swift
manipulate(number: 10) {
    $0 * 2
}
```

이런 구조로 만들어진 예시가 `sort()`와 `filter()`입니다. 함수가 클로저 하나만을 파라미터로 받는다면, 괄호를 아예 쓰지 않아도 됩니다.

```swift
let numbers = [1, 3, 2, 6, 7, 5, 8, 4]
let sortedNumbers = numbers.sort { $0 < $1 }
print(sortedNembers)    // [1, 2, 3, 4, 5, 6, 7, 8]

let evens = numbers.filter { $0 % 2 == 0 }
print(evens)    // [2, 6, 8, 4]
```

## 클로저 활용하기

클로저는 Swift의 많은 곳에서 사용됩니다. `sort()`, `filter()`와 같은 배열에 많이 사용됩니다. 대표적인 메서드로는 `sort()`, `filter()`, `map()`, `reduce()`가 있습니다.

`map()`은 파라미터로 받은 클로저를 모든 요소에 실행하고, 그 결과를 반환합니다.

```swift
let arr1 = [1, 3, 6, 2, 7, 9]
let arr2 = arr1.map { $0 * 2 }  // [2, 6, 12, 4, 14, 18]
```

`reduce()`는 초깃값이 주어지고, 초깃값과 첫 번째 요소의 클로저 실행 결과, 그리고 그 결과와 두 번째 요소의 클로저 실행 결과, 그리고 그 결과의 세 번째 요소의 클로저 실행 결과, ... 를 끝까지 실행한 후의 값을 반환합니다.

```swift
arr1.reduce(0) { $0 + $1 }  // 28
```

> Swift에서는 연산자도 함수입니다. 따라서 이와 같은 문법도 가능합니다. `arr1.reduce(0, +) // 28`
