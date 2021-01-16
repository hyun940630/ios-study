import UIKit

var str = "Hello, playground"

/*
 *  Playground 사용해보기
 */

// for in 사용
// 0..<100 : 0에서 100까지
for i in 0..<100 {
    i
}

// 0부터 100까지 돌면서 sin() 실행하기
// sin() line의 우측 끝 눈양을 누르면 해당 코드가 어떤 식으로 실행되는지 확인 할 수 있다.
for i in 0..<100 {
    sin(Double(i) / 2)
}


/* Swift 둘러보기 */


// 변수와 상수
// 변수(variable)는 값을 수정할 수 있고, 상수(constant)는 그렇지 않습니다. Swift에서는 언제 어디서 값이 어떻게 바뀔지 모르는 변수보다는 상수를 사용하는 것을 권장합니다. 그래야 안전하거든요.
// 변수는 var로 선언하고, 상수는 let으로 선언합니다.

//var name = "Hyun"
//let birthyear = 1994

// 만약 이름을 바꾸고 싶다면 가능해요.
//name = "현"

// 하지만 아래와 같이 태어난 해를 바꾸려 한다면 컴파일 에러가 발생합니다.
//birthyear = 2000  // Error!

// 즉, let 키워드로 선언된 상수 값을 변경할 수 없다는 에러입니다.

// Swift는 정적 타이핑 언어입니다. 변수나 상수를 정의할 때 그 자료형(타입)이 어떤 것인지를 명시해주어야 하는 언어를 말합니다.
var name: String = "Hwang Hyun"
let birthyear: Int = 1994
var height: Float = 180.3

// 위 처럼 콜론(:)을 붙이고 자료형을 써주면 된답니다.
// : String과 : Int 등을 타입 어노테이션(Type Annotation)이라고 합니다.

// Swift에서는 타입을 엄격하게 다루기 때문에, 다른 자료형끼리는 기본적인 연산조차 허용되지 않습니다. 아래와 같이 Int 타입인 birthyear과 Float 타입인 height를 더하려고만 해도 컴파일 에러가 발생합니다.
//birthyear + height    // Error!

// 이런 경우 꼭 연산을 해야한다면 아래와 같이 타입을 명확하게 만들어 사용합니다. 강제로 형을 변환하는 것이죠.
Float(birthyear) + height   // 2174.3

// 조금 더 응용하면 아래와 같이 숫자를 문자열로 만들 수도 있습니다.
String(birthyear) + "년에 태어난 " + name + "아 안녕!"  // 1994년에 태어난 Hwang Hyun아 안녕!

// 이렇게 간단하게도 사용가능 합니다! 결과는 같습니다.
"\(birthyear)년에 태어난 \(name)아 안녕!" // 1994년에 태어난 Hwang Hyun아 안녕!


// 타입 추론(Type Inference)
// 우리가 맨 처음 작성한 예제에서는 자료형을 명시하지 않았지만 Swift는 에러를 보여주지 않았어요. Swift 컴파일러는 자동으로 ""는 String, 숫자는 Int 타입인 것을 인식할 수 있답니다. 이렇게 타입을 직접 명시하지 않고도 값을 가지고 정적 타이핑을 할 수 있게 해주는 것을 타입 추론(Type Inference)라고 합니다.

// 배열(Array)과 딕셔너리(Dictionary)
// 배열과 딕셔너리는 모두 대괄호([])를 이용해서 정의할 수 있습니다.
//var languages = ["Swift", "Objective-C", "Python"]
//var capitals = [
//    "한국" : "서울",
//    "일본" : "도쿄",
//    "중국" : "베이징",
//]

// 딕셔너리는 키를 가진 배열입니다!
// 배열과 딕셔너리에 접근하거나 값을 변경할 때에도 대괄호를 사용합니다.
//languages[0]    // Swift
//languages[1] = "Ruby"

//capitals["한국"]  // 서울
//capitals["프랑스"] = "파리"  // "프랑스" : "파리" 추가

// 참고로, 다른 상수와 마찬가지로 배열과 딕셔너리를 let으로 선언한다면 값을 수정할 수 없습니다. 물론 값을 추가하거나 빼는 것도 불가능합니다.

// 그렇다면 위에서 정의한 languages와 capitals의 타입은 어떻게 쓸 수 있을까요? 대괄호를 사용합니다! 대괄호 안에 어떤 타입을 받을 것인지를 명시합니다.
var languages: [String] = ["Swift", "Objective-C", "Python"]
var capitals: [String: String] = [
    "한국" : "서울",
    "일본" : "도쿄",
    "중국" : "베이징",
]

// 만약, 빈 배열이나 빈 딕셔너리를 정의하고 싶다면? 빈 대괄로를 사용합니다.
var blankLanguages: [String] = []
var blankCapitals: [String: String] = [:]

// 빈 배열로 선언하는 것은 좀 더 간결하게 사용할 수도 있습니다.
var blank2Languages = [String]()
var blank2Capitals = [String: String]()

// 타입 뒤에 괄호( () )를 쓰는 것은 생성자(Initializer)를 호출하는 것입니다. 따라서, blank2Languages는 String 값을 가진 배열을 생성하는 것이고, blank2Capitals는 String: String 값을 가진 딕셔너리를 배열을 생성하는 것입니다.




// 조건문과 반복문
// 조건을 검사할 때는 if, switch를 사용합니다. 아래 코드는 if를 사용한 예시입니다.
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

student     // 고등학생

// if문의 조건절에서는 값이 참 혹은 거짓을 통해서 분기를 처리합니다. Swift는 다른 언어와 다르게 타입을 굉장히 엄격하게 하기 때문에, 다른 언어에서 사용 가능한 아래와 같은 코드를 사용하지 못합니다.
//var number = 0
//if !number {    // Error!
//    ...
//}

// 대신 아래와 같이 사용해야 합니다.
//if number == 0 {
//    ...
//}

// 빈 문자열이나 배열 등을 검사할 때도 명확하게 길이가 0인지를 검사해야 합니다.
if name.isEmpty {print("Name is Empty")}
if languages.isEmpty {print("Languages is Empty")}

// switch
// switch문의 경우 다른 언어와 또 다른 특성을 가지고 있습니다. 다른 언어들에서는 switch는 단순히 값이 '같은지'만을 검사하는 것으로 알고 있습니다. 하지만 패턴 매칭이 가능합니다. 무슨 말인지 아래 코드를 확인해봅니다.
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
// 8..<14와 같이 범위(Range) 안에 age가 포함되었는지 여부를 검사할 수 있습니다.

// 반복되는 연산을 할 때는 for, while을 씁니다. for 구문을 사용해서 배열과 딕셔너리를 차례로 순환할 때는 아래와 같이 사용합니다.

// 배열의 반복
for language in languages {
    print("저는 \(language) 언어를 다룰 수 있습니다.")
}

// 딕셔너리의 반복
for (country, capital) in capitals {
    print("\(country)의 수도는 \(capital)입니다")
}

// 다순 반복문을 만들고 싶다면 범위를 만들어서 반복 시킬 수 도 있습니다
for i in 0..<100 {
    i
}

// 만약, i를 사용하지 않는데 단순한 반복을 하고 싶다면, i 대신 _를 사용해서 무시할 수도 있습니다.
for _ in 0..<100 {
    print("Hello!")
}
// _ 키워드는 어디서나 변수 대신에 사용할 수 있는데요. 알아두면 유용하게 사용할 수 있습니다.

// while은 조건문의 값이 true일 때 계속 반복됩니다.
var i = 0
while i < 100 {
    i += 1
}

