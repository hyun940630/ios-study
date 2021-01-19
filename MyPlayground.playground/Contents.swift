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



// 옵셔널(Optional)
// Swift가 가지고 있는 가장 큰 특징 중 하나가 바로 옵셔널(Optional)입니다. '선택적인'이라는 뜻은 곳 값이 있을 수도 있고 없을 수도 있는 것을 나타냅니다.
// 예를 들어 문자열에 값이 있으면 "가나다"가 됩니다. 값이 없다면 ""일까요? 아니요 ""도 엄연히 값이 있는 문자열입니다. 정확히는 '값이 없다'가 아닌 '빈 값'입니다. 값이 없는 문자열은 바로 nil입니다.
// 또 다른 예로 정수형의 값이 있으면 123입니다. 값이 없다면 0일까요? 0은 0이라는 숫자 '값'입니다. 이 경우에도 값이 없는 정수는 nil입니다.
// 마찬가지로, 빈 배열이나 빈 딕셔너리라고 해서 '값이 없는'것이 아닙니다. 다만 '비어 있을'뿐이죠. 배열과 딕셔너리의 경우에도 '없는 값'은 nil입니다.
// 이렇게, 값이 없는 경우를 나타낼 때는 nil을 사용합니다. 그렇다고 해서 모든 변수에 nil을 넣을 수 있는 것은 아닙니다. 예로, 우리가 위에서 정의한 name이라는 변수에 nil을 넣으려 하면 에러가 발생합니다.
//name = nil  // Error!

// 값이 있을 수도 있고 없을 수도 있는 변수르 정의할 때는 타입 어노테이션에 ?을 붙여야 합니다. 이렇게 정의한 변수를 바로 옵셔널(Optional)이라고 하고요. 옵셔널에 초깃값을 지정하지 않으면 기본값은 nil입니다.
//var email: String?
//print(email)    // nil

//email = "hh940630@gmail.com"
//print(email)    // Opional("hh940630@gmail")

// 옵셔널로 정의한 변수는 옵셔널이 아닌 변수와 다릅니다. 예를 들어 아래와 같은 코드는 사용할 수 없습니다.
//let optionalEmail: String? = "hh940630@gmail.com"
//let requiredEmail: String = optionalEmail   // Error!

// requiredEmail 변수는 옵셔널이 아닌 String이기 때문에 항상 값을 가지고 있어야 합니다. 반면에, optionalEmail은 옵셔널로 선언된 변수이기 때문에 실제 코드가 실행되기 전까지는 값이 있는지 없는지 알 수 없습니다. 따라서 Swift 컴파일러는 안전을 위해 requiredEmail에는 옵셔널로 선언된 변수를 대입할 수 없게 만들었습니다.
// 옵셔널은 개념적으로 이렇게 표현할 수 있습니다. 어떤 값 또는 nil을 가지고 있는 녀석이죠.
// Optional == 'Any Type data' or 'nil'

// 옵셔널 바인딩(Optional Binding)
// 그렇다면 옵셔널 값을 가져오고 싶을 땐 어떻게 할까요? 그럴때는 옵셔널 바인딩을 사용합니다.
// 옵셔널 바인딩은 옵셔널의 값이 존재하는지를 검사한 뒤, 존재하면 그 값을 다른 변수에 대입시켜줍니다. if let 또는 if var를 사용합니다. 옵셔널의 값을 벗겨서 값이 있다면 if 문 안으로 들어가고, 값이 nil이라면 그냥 통과하게 됩니다.
// 예를 들어, 아래의 코드에 optionalEmail에 값이 존재한다면 email이라는 변수 안에 실제 값이 저장되고, if문 내에서 그 값을 사용할 수 있습니다. 만약 optionalEmail이 nil이라면 if문이 실행되지 않고 넘어갑니다.
//if let email = optionalEmail {    // 만약 optionalEmail의 값이 존재하지 않는다면 if문을 그냥 지나칩니다.
//    print(email)
//}

// 하나의 if문에서 콤마(,)로 구분하여 여러 옵셔널을 바인딩할 수 있습니다. 이곳에 사용된 모든 옵셔널의 값이 존재해야 if문 안으로 진입합니다.
var optionalName: String? = "황현"
var optionalEmail: String? = "hh940630@gmail.com"

if let name2 = optionalName,
   let email2 = optionalEmail {
   // name2과 email2 값이 존재
    print(name2)
    print(email2)
}

// 옵셔널 바인딩 시 ,를 사용해서 조건도 함께 지정할 수 있습니다. ,이후의 조건절은 옵셔널 바인딩이 일어난 후에 실행됩니다. 즉, 옵셔널이 벗겨진 값을 가지고 조건을 검사하게 됩니다.
var optionalAge: Int? = 22

if let age = optionalAge, age >= 20 {
    print("age")
}

// 옵셔널 체이닝(Optional Chaining)
// 배열이 '빈 배열'인지를 검사하려면 어떤 방법이 있을까요? nil이 아니면서 빈 배열인지를 확인해보면 될 것입니다
let array: [String]? = []
var isEmptyArray = false

if let array = array, array.isEmpty {
    isEmptyArray = true
} else {
    isEmptyArray = false
}

isEmptyArray

// 옵셔널 체이닝을 사용하면 이 코드를 더 간결하게 쓸 수 있습니다.
let isEmptyArray2 = array?.isEmpty == true

// 옵셔널 체이닝은 옵셔널의 속성에 접근할 때, 옵셔널 바인딩 과정을 ? 키워드로 줄여주는 역할을 합니다. 다음 같이 3가지의 경우의 수를 생각해봅시다.
// (1) array가 nil인 경우
//array?.isEmpty    // array?까지 실행되고 'nil'을 반환

// (2) array가 빈 배열인 경우
//array?.isEmpty    // array?.isEmpty까지 실행되고 'true'를 반환

// (3) array에 요소가 있는 경우
//array?.isEmpty    // array?.isEmpty까지 실행되고 'false'를 반환

// array?.isEmpty의 결과로 나올 수 있는 값은 nil, true, false가 됩니다. isEmpty의 반환값은 Bool인데, 옵셔널 체이닝으로 인해 Bool?을 반환하도록 바뀐 것입니다. 따라서 실제로 값이 실제로 true인지 확인하기 위해서 == true 를 해주어야 합니다.

// 옵셔널 벗기기
// 옵셔널을 사용할 때마다 옵셔널 바인딩을 하는 것이 가장 바람직합니다. 하지만, 개발을 하다보면 분명히 값이 존재할 것임에도 불구하고 옵셔널로 사용해야 하는 경우가 종종있습니다. 이럴 때는 옵셔널에 값이 있다고 가정하고 값에 바로 접근 할 수 있도록 도와주는 키워드인 !를 붙여서 사용하면 됩니다.
//print(optionalEmail)    // Optional("hh940630@gmail.com")
//print(optionalEmail!)   // hh940630@gmail.com

// !를 사용 할때는 주의할 점이 있습니다. 옵셔널 값이 nil인 경우에는 런타임 에러가 발생한는 것입니다! Java의 NullPointException과 비슷하다고 생각하면 됩니다.
// var optionalEmail: String?
// print(optionalEmail!)

// ** 런타임 에러가 발생하면 iOS 앱은 강제로 종료(크래시)됩니다. 그러니 굉장히 신경써야 합니다.

// 암묵적으로 벗겨진 옵셔널(Implicitly Unwrapped Optional)
// 만약, 옵셔널을 정의할 때 ? 대신 !를 붙이면 ImplicitlyUnwrappedOptional 이라는 옵셔널로 정의됩니다. 이름이 굉장히 깁니다. 직역하면 '암묵적으로 벗겨진 옵셔널'입니다.
//var email: String! = "hh940630@gmail.com"
//print(email)  // hh940630@gmail.com

// 이렇게 정의된 옵셔널은 nil을 포함할 수 있는 옵셔널이긴 한데, 접근할 때 옵셔널 바인딩이나 옵셔널을 벗기는 과정을 거치지 않고도 바로 값에 접근할 수 있다는 점에서 일반적인 옵셔널과 조금 다릅니다.

// 옵셔널 벗기기와 마찬가지로, 값이 없는데 접근을 시도하면 런타임 에러가 발생합니다.
//var email: String!
//print(email)  // Error!

// 가급적이면 일반적인 옵셔널을 사용해서 정의하고, 옵셔널 바인딩 또는 옵셔널 체이닝을 통해 값에 접근하는 것이 더 바람직합니다

/*
 Tip: Swift 2 버전에서는 "\(email)"과 같이 문자열을 포맷팅하면 devxoul@gmail.com이 나왔으나, Swift 3 버전부터는 ImplicitlyUnwrappedOptional을 문자열 포맷팅 할 경우 Optional("devxoul@gmail.com")로 포맷팅되니 주의해서 사용해야 합니다. Swift 3 버전부터 ImplicitlyUnwrappedOptional을 일반 Optional과 거의 동일하게 취급했기 때문인데, 자세한 이유는 SE-0054 문서에 잘 나와있습니다.
 */




// 함수와 클로저
// 함수는 func 키워드를 사용합니다. -> 사용해서 함수의 반환 타입을 지정합니다.
func hello(name: String, time: Int) -> String {
    var string = ""
    for _ in 0..<time {
        string += "\(name)님 안녕하세요\n"
    }
    
    return string
}

// Swift에서는 독특하게 함수를 호출할 때 파라미터 이름을 함께 써주어야 합니다.
hello(name: "황  현", time: 3)

// 만약, 함수를 호출할 때 사용하는 파라미터 이름과 함수 내부에서 사용하는 파라미터 이름을 다르게 사용하고 싶으면 이렇게 할 수 있습니다.
func hello2(to name: String, numberOfTimes time: Int) {
    // 함수 내부에서는 'name'과 'time'으로 사용합니다.
    for _ in 0..<time {
        print(name)
    }
}

hello2(to: "황  현", numberOfTimes: 3)    // 이곳에서는 'to'와 'numberOfTime'를 사용합니다.

// 파라미터 이름을 _로 정의하면 함수를 호출할 때 파라미터 이름을 생략할 수 있게 됩니다.
func hello3(_ name: String, time: Int) {
    for _ in 0..<time {
        print(name)
    }
}

hello3("황현", time: 3)   // 'name: '이 생략되었습니다.

// 파라미터에 기본 값을 지정할 수도 있습니다. 기본 값이 지정된 파라미터는 함수 호출시 생략할 수 있습니다.
func hello4(name: String, time: Int = 1) {
    // ...
}
hello4(name: "황현")

// ...을 사용하면 정해지지 않은 파라미터(Variadic Parameters)를 받을 수 있습니다.
func sum(_ numbers: Int...) -> Int{
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
}

sum(1, 2)
sum(3, 4, 5)    // 이렇게 정해지지 않은 파라미터를 받을 수 있습니다. 개수에 상관없이...

// 함수 안에 함수를 또 작성할 수도 있습니다.
func hello5(name: String, time: Int) {
    func message(name: String) -> String{
        return "\(name)님 안녕하세요!"
    }
    
    for _ in 0..<time {
        print(message(name: name))
    }
}

hello5(name: "황현", time: 3)

// 심지어 함수 안에 정의한 함수를 반환할 수 있습니다.
func helloGenerator(message: String) -> (String) -> String {
    func hello(name: String) -> String {
        return name + message
    }
    return hello
}

let hello6 = helloGenerator(message: "님 안녕하세요!")
hello6("황 현")

// 여기서 핵심은, helloGenerator() 함수의 반환 타입이 (String) -> String라는 것입니다. 즉, helloGenerator()는 '문자열을 받아서 문자열을 반환한다.'라는 함수인 것입니다.

// 만약, helloGenerator() 안에 정의한 hello() 함수가 여러개의 파라미터를 받는다면 이렇게 써야합니다.
func helloGenerator2(message: String) -> (String, String) ->  String {
    func hello(firstName: String, lastName: String) -> String {
        return lastName + firstName + message
    }
    return hello
}

let hello7 = helloGenerator2(message: "님 안녕하세요!")
hello7("현", "황")


// 클로저(Closure)
// 클로저(Closure)를 사용하면 바로 위에 작성한 코드를 조금 더 간결하게 만들 수 있습니다. 클로저는 중괄호({})로 감싸진 '실행 가능한 코드 블럭'입니다.
func helloGenerator3(message: String) -> (String, String) -> String {
    return { (firstName: String, lastName: String) -> String in
        return lastName + firstName + message
    }
}

// 함수와 다르게 함수 이름 정의가 따로 존재하지 않습니다. 하지만 파라미터를 받을 수 있고, 반환 값이 존재할 수 있다는 점에서 함수와 동일합니다. 함수는 이름이 있는 클로저입니다.

// 위 코드를 살펴 보면 ()를 통해 파라미터를 받고, ->를 통해 반환 타입을 명시합니다. 조금 다른 점은 in 키워드를 사용해서 파라미터, 반환 타입 영역과 실제 클로저의 코드를 분리하고 있습니다.
//{ (firstName: String, lastName: String) -> String in
//    return lastName + firstName + message
//}

// 클로저의 장범은 간결함과 유연함에 있습니다.
// Swift 컴파일러의 타입 추론 덕분에, 함수의 반환 타입을 가지고 클로저에서 어떤 파라미터를 받고 어떤 타입을 반환하는지를 알 수 있습니다. 과감하게 생략해버립니다.
func helloGenerator4(message: String) -> (String, String) -> String {
  return { firstName, lastName in
    return lastName + firstName + message
  }
}

// 그런데 이것보다 더 생략이 가능합니다. 마찬가지로 타입 추론 덕분에 첫 번째 파라미터와 두번째 파라미터가 문자열이라는 것을 알 수 있스빈다. 첫 번째 파라미터는 $0, 두 번째 파라미터는 $1로 바꿔서 사용할 수 있습니다.
func helloGenerator5(message: String) -> (String, String) -> String {
  return {
    return $1 + $0 + message
  }
}

// 클로저 내부의 코드가 한줄이라면 return 까지도 생략할 수 있습니다
func helloGenerator6(message: String) -> (String, String) -> String {
  return { $1 + $0 + message }
}

// 여기서 불필요한 부분을 생략하면 1줄까지도 가능합니다.
let hello8: (String, String) -> String = { $1 + $0 + "님 안녕하세요!" }
hello8("현", "황")

// 물론 옵셔널로도 정의할 수 있습니다. 옵셔널 체이닝도 가능하고요.
var hello9: ((String, String) -> String)?
hello9?("현", "황")

// 클로저를 변수로 정의하고 함수에서 반환할 수도 있는 것처럼, 파라미터로도 받을 수 있습니다.
func manipulate(number: Int, using block: (Int) -> Int) -> Int {
    return block(number)
}

manipulate(number: 10, using: { (number: Int) -> Int in
    return number * 2
})

// 이걸 생략하면?
manipulate(number: 10, using: {
  $0 * 2
})

// 만약 함수의 마지막 파라미터가 클로저라면, 괄호와 파라미터 이름마저 생략할 수 있습니다.
manipulate(number: 10) {
  $0 * 2
}

// 함수가 클로저 하나만을 파라미터로 받는다면, 괄호를 아예 쓰지 않아도 됩니다. sort()와 filter()
var numbers = [1, 3, 2, 6, 7, 5, 8, 4]

let sortedNumbers: () = numbers.sort { $0 < $1 }
print(sortedNumbers) // [1, 2, 3, 4, 5, 6, 7, 8]

let evens = numbers.filter { $0 % 2 == 0 }
print(evens) // [2, 6, 8, 4]

// 클로저 활용하기
// 클로저는 Swift의 굉장히 많은 곳에서 사용됩니다. 바로 위에서 예시를 든 것처럼 sort()나 filter()와 같은 배열에 많이 쓰입니다. 대표적인 메서드로는 sort(), filter(), map(), reduce()가 있습니다.
// map()은 파라미터로 받은 클로저를 모든 요소에 실행하고, 그 결과를 반환합니다. 예를 들어, 정수 배열의 모든 요소들에 2를 더한 값으로 이루어진 배열을 만들고 싶다면, 아래와 같이 작성할 수 있습니다.
let arr1 = [1, 3, 6, 2, 7, 9]
let arr2 = arr1.map { $0 * 2 } // [2, 6, 12, 4, 14, 18]

// reduce()는 초깃값이 주어지고, 초깃값과 첫 번째 요소의 클로저 실행 결과, 그리고 그 결과와 두 번째 요소의 클로저 실행 결과, 그리고 그 결과와 세 번째 요소의 클로저 실행 결과, ... 끝까지 실행한 후의 값을 반환합니다. 바로 위에서 정의한 arr1의 모든 요소의 합을 구하고 싶다면, 아래와 같이 작성할 수 있습니다.
arr1.reduce(0) { $0 + $1}   // 28

/*
 Tip: Swift에서는 연산자도 함수입니다. 함수는 곧 클로저이기 때문에 연산자는 클로저입니다. 1 + 2를 실행하면, +라는 이름을 가진 연산자 함수가 실행됩니다. 파라미터로는 1과 2가 넘겨지게 됩니다. 즉, + 함수는 파라미터 두 개를 받아서 합을 반환하는 클로저입니다. { $0 + $1 } 인거죠. 그렇기 때문에, 이런 문법도 가능해집니다. +라는 연산자를 클로저로 넘겨버리는 거죠.

 arr1.reduce(0, +) // 28
 */




// 클래스와 구조체
// 클래스(Class)는 class로 정의하고, 구조체(Structure)는 struct로 정의합니다.
class Dog {
    var name: String?
    var age: Int?
    
    func simpleDesciption() -> String {
        if let name = self.name {
            return "🐶 \(name)"
        } else {
            return "🐶 No name"
        }
    }
}

struct Coffee {
    var name: String?
    var size: String?
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "☕️ \(name)"
        } else {
            return "☕️ No name"
        }
    }
}

var myDog = Dog()
myDog.name = "찡코"
myDog.age = 3
print(myDog.simpleDesciption()) // 🐶 찡코

var myCoffee = Coffee()
myCoffee.name = "카페라떼"
myCoffee.size = "Venti"
print(myCoffee.simpleDescription()) // ☕️ 카페라떼

// 클래스는 상속이 가능합니다. 구조체는 불가능합니다.
class Animal {
    let numberOfLegs = 4
}

class Dog2: Animal {
    var name: String?
    var age: Int?
}

var myDog2 = Dog2()
print(myDog2.numberOfLegs)  // 4

// 클래스는 참조(Reference)하고, 구조체는 복사(Copy)합니다.
var dog1 = Dog()    // dog1은 새로 만들어진 Dog()를 참조
var dog2 = dog1     // dog2는 dog1이 참조하는 Dog()를 똑같이 참조(class기 때문에 참조함)
dog1.name = "초코"    // dog1의 이름을 바꾸면 Dog()의 이름이 바뀌기 때문에,
print(dog2.name)    // dog2의 이름을 가져와도 바뀐 이름("초코")이 출력됩니다.

var coffee1 = Coffee()  // coffee1은 새로 만들어진 Coffee() 그 자체입니다.
var coffee2 = coffee1   // coffee2는 coffee1을 복사한 값 자체입니다.
coffee1.name = "아메리카노"  // coffee1의 이름을 바꿔도
coffee2.name    // coffee2는 완전히 별개이기 때문에 이름이 바뀌지 않습니다.(결과: nil)


// 생성자(Initializer)
// 클래스와 구조체 모두 생성자를 가지고 있습니다. 생성자에서는 속성의 초깃값을 지정할 수 있습니다.
class DogInit {
    var name: String?
    var age: Int?
    
    init() {
        self.age = 0
    }
}

struct CoffeInit {
    var name: String?
    var size: String?
    
    init() {
        self.size = "Tall"
    }
}

// 만약 속성이 옵셔널이 아니라면 항상 초깃값을 가져야합니다. 만약 옵셔널이 아닌 속성이 초깃값을 가지고 있지 않으면 컴파일 에러가 발생합니다.
class DogInit2 {
    var name : String?
    //var age: Int    // Error!
}


// (1) 속성을 정의할 때 초깃값을 지정해 주는 방법과,
class DogInit3 {
    var name: String?
    var age: Int = 0    // 속성을 정의할 때 초깃값 지정
}

// (2)생성자에서 초깃값을 지정해주는 방법
class DogInit4 {
    var name: String?
    var age: Int
    
    init() {
        self.age = 0    // 생성자에서 초깃값 지정
    }
}

// 생성자도 함수와 마찬가지로 파라미터를 받을 수 있습ㅂ니다.
class DogInit5 {
    var name: String?
    var age: Int
    
    init(name: String?, age: Int) {
        self.name = name
        self.age = age
    }
}

var initedMyDog = DogInit5(name: "초코", age: 2)

// 만약 상속받은 클래스라면 생성자에서 상위 클래스의 생성자를 호출해주어야 합니다. 만약 생성자의 파라미터가 상위 클래스의 파라미터와 같다면, override 키워드를 붙여주어야 합니다.
class Animal2 {
    let numberOfLegs = 4
}

class OverrideDog: Animal2 {
    var name: String?
    var age: Int
    
    override init() {
        self.age = 0    // 초기값 설정
        super.init()    // 상위 클래스 생성자 호출
        print(self.simpleDescription()) // 여기서부터 'self' 접근 가능
    }
    
    func simpleDescription() -> String {
        if let name = self.name {
            return "🐶 \(name)"
        } else {
            return "🐶 No name"
            
        }
    }
}
// 만약, 위 예시 코드의 super.init()을 하기 전에 self에 접근한다면 컴파일 에러가 발생합니다.

// deinit은 메모리에서 해제된 직후에 호출됩니다.
//class Dog {
//    // ...
//
//    deinit {
//        print("메모리에서 해제됨")
//    }
//}


// 속성(Properties)
// 속성은 크게 두 가지로 나뉩니다. 값을 가지는 속성(Stored Property)과 계산되는 속성(Computed Property)인데요. 쉽게 말하면 속성이 그 값 자체를 가지고 있는지, 혹은 어떠한 연산을 수행한 뒤 그 결과를 반환하는지의 차이입니다.
// 우리가 지금까지 정의하고 사용한 name, age와 같은 속성들은 모두 Stored Property입니다. Computed Property는 get, set을 사용해서 정의할 수 있습니다. set에서는 새로 설정될 값을 newValue라는 예약어를 통해 접근할 수 있습니다.
struct Hex {
    var decimal: Int?
    var hexString: String? {
        get {
            if let decimal = self.decimal {
                return String(decimal, radix: 16)
            } else {
                return nil
            }
        }
        set {
            if let newValue = newValue {
                self.decimal = Int(newValue, radix: 16)
            } else {
                self.decimal = nil
            }
        }
    }
}

var hex = Hex()
hex.decimal = 10
hex.hexString   // "a"

hex.hexString = "b"
hex.decimal     // 11
// 위 코드에서 hexString은 실제 값을 가지고 있지는 않지만, decimal로부터 값을 받아와 16진수 문자열로 만들어서 반환합니다. decimal은 Stored Property, hexString은 Computed Property입니다.
// 참고로, get만 정의할 경우에는 get 키워드를 생략할 수 있습니다. 이런 속성을 읽기 전용(Read Only)이라고 합니다.
//class Hex {
//    // ...
//
//    var hexCode: String? {
//        if let hex = self.hexCode {
//            return "0x" + hex
//        }
//        return nil
//    }
//}

// get, set과 비슷한 willSet, didSet을 이용하면 속성에 값이 지정되기 직전과 직후에 원하는 코드를 실행할 수 있습니다.
struct Hex2 {
    var decimal: Int? {
        willSet {
            print("\(self.decimal)에서 \(newValue)로 값이 바뀔 예정입니다.")
        }
        didSet {
            print("\(oldValue)에서 \(self.decimal)로 값이 바뀔 예정입니다.")
        }
    }
}
// 마찬가지로, willSet에서는 새로운 값을 newValue로 얻어올 수 있고, didSet에서는 예전 값을 oldValue라는 예약어를 통해 얻어올 수 있습니다.

// willSet과 didSet은 일반적으로 어떤 속성의 값이 바뀌었을 대 UI를 업데이트하거나 특정 메서드를 호출하는 등의 역할을 할 때에 사용됩니다.





// 튜플(Tuple)
// 튜블(Tuple)은 어떠한 값들의 묶음입니다. 배열과 비슷하다고 볼 수 있습니다. 배열과 다르게 길이가 고정되어 있습니다. 값에 접근할 때에도 [] 대신 .을 사용합니다.
var coffeeInfo = ("아메리카노", 5100)
coffeeInfo.0    // 아메리카노
coffeeInfo.1    // 5100
coffeeInfo.1 = 5500

// 이 튜플의 파라미터에 이름을 붙일 수도 있습니다.
var namedCoffeeinfo = (coffee: "아메리카노", price: 5100)
namedCoffeeinfo.coffee  // 아메리카노
namedCoffeeinfo.price   // 5100
namedCoffeeinfo.price = 5100

// 앞서 본 구조체와 비슷합니다. 실제로도 간단한 자료형을 만들 때에는 구조체 대힌 튜플을 사용해서 만들기도 합니다.

// 튜플의 타입 어노테이션은 아래와 같이 생겼습니다.
var coffeeInfo2: (String, Int)
var namedCoffeeInfo: (coffee: String, price: Int)

// 튜플을 조금 응용하면, 아래와 같이 여러 변수에 값을 지정할 수도 있습니다.
let (coffee, price) = ("아메리카노", 5100)
coffee
price

// 튜플이 가진 값을 가지고 변수에 값을 지정할 때, 무시하고 싶은 값이 있다면 _ 키워드를 사용해서 할 수 있습니다. 아래 코드에서는 "라떼라는 첫 번재 값을 무시합니다."
let (_, latteSize, lattePrice) = ("라떼", "Venti", 5600)
latteSize   // Venti
lattePrice  // 5600

// 물론, 튜플을 반환하는 함수도 만들 수 있습니다.
// 커피 이름에 맞는 커피 가격 정보를 반환합니다. 일치하는 커피 이름이 없다면 'nil'을 반환합니다.
//
// - parameter name : 커피 이름
//
// - returns : 커피 이름과 가격 정보로 구성된 튜플을 반환합니다.
func coffeeInfo3(for name: String) -> (name: String, price: Int)? {
    let coffeeInfoList: [(name: String, price: Int)] = [
        ("아메리카노", 5100),
        ("라떼", 5600)
    ]
    for coffeeInfo in coffeeInfoList {
        if coffeeInfo.name == name {
            return coffeeInfo
        }
    }
    return nil
}

coffeeInfo3(for: "아메리카노")?.price    // 5100
coffeeInfo3(for: "에스프레소")?.price    // nil

let (_, lattePrice2) = coffeeInfo3(for: "라떼")!
lattePrice2     // 5600





// Enum
// 열거라는 뜻을 가진 Enumeration에서 따온 키워드입니다. 한글로 번역할 때에는 열거형이라는 말을 많이 사용합니다. 1월 부터 12월까지를 enum으로 한 번 정의해볼까요?
enum Month: Int {
  case january = 1
  case february
  case march
  case april
  case may
  case june
  case july
  case august
  case september
  case october
  case november
  case december

  func simpleDescription() -> String {
    switch self {
    case .january:
      return "1월"
    case .february:
      return "2월"
    case .march:
      return "3월"
    case .april:
      return "4월"
    case .may:
      return "5월"
    case .june:
      return "6월"
    case .july:
      return "7월"
    case .august:
      return "8월"
    case .september:
      return "9월"
    case .october:
      return "10월"
    case .november:
      return "11월"
    case .december:
      return "12월"
    }
  }
}

let december = Month.december
print(december.simpleDescription())     // 12월
print(december.rawValue)               // 12

// 위 예시에서 작성한 Month는 Int를 원시값(Raw Value)으로 가지도록 정의되었습니다. 그렇기 때문에 각 케이스들은 1부터 12까지의 값을 가지고 있습니다. rawValue 속성이 바로 그 값을 나타내는데요. 반대로, 원시값을 가지고 Enum을 만들 수도 있습니다.

let october = Month(rawValue: 10)
print(october)  // Optional(Month.october)

// Month(rawValue: )의 반환값이 옵셔널인 이유는, Enum에서 정의되지 않은 원시값을 가지고 생성할 경우 nil을 반환하기 때문입니다.

Month(rawValue: 13) // nil

// 일반적으로 다른 언어들에서는 Enum이 Int만을 원시값으로 가질 수 있습니다. 하지만, Swift의 Enum은 조금 독특합니다. 아래 예시는 String을 원시값으로 가지는 Enum입니다.
enum IssueState: String {
    case open = "open"
    case closed = "closed"
}

// 만약 어떤 API의 응답에서 내려주는 state의 값이 open 또는 closed라면, if-else없이도 IssueState(rawValue:)를 사용해서 Enum을 생성할 수 있습니다.

// Enum은 원시값을 가지지 않을 수도 있습니다. 원시값을 가져야 할 필요가 없다면 굳이 만들지 않아도 됩니다.
enum Spoon {
    case dirt
    case bronze
    case silver
    case gold
    
    func simpleDescription() -> String {
        switch self {
        case .dirt:
            return "흙수저"
        case .bronze:
            return "동수저"
        case .silver:
            return "은수저"
        case .gold:
            return "금수저"
        }
    }
}

// Enum을 예측할 수 있다면 Enum의 이름을 생략할 수 있습니다.

let spoon: Spoon = .gold    // 변수에 타입 어노테이션이 있기 때문에 생략 가능

func doSomething(with spoon: Spoon) {
    // ...
}

doSomething(with: .silver)  // 함수 정의에 타입 어노테이션이 있기 때문에 생략 가능


// 연관 값(Associated Values)을 가지는 Enum
// Enum은 연관 값(Associated Values)을 가질 수 있습니다. 아래 예시는 어떤 API에 대한 에러를 정의한 것인데요.
// invalidParameter 케이스는 필드 이름과 메시지를 가지도록 정의되어있습니다.

enum NetworkError {
    case invalidParameter(String, String)
    case timeout
}

let error: NetworkError = .invalidParameter("email", "이메일 형식이 올바르지 않습니다.")

// 이 값을 꺼내올 수 있는 방법으로는 if-case 또는 switch를 활용하는 방법이 있습니다.
if case .invalidParameter(let field, let message) = error {
    print(field)    // email
    print(message)  // 이메일 형식이 올바르지 않습니다.
}

switch error {
case .invalidParameter(let field, let message):
    print(field)    // email
    print(message)  // 이메일 형식이 올바르지 않습니다.
default:
    break
}

// 사실, 옵셔널은 Enum입니다. 실제로는 이렇게 생겼습니다.
public enum Optional<Wrapped> {
    case none
    case some(Wrapped)
}

// 옵셔널이 왜 '값'과 '없는 값'을 포함하고 있다고 설명햇는지, 그리고 왜 '감싸다'라는 표현을 사용했는지 이해가 가시나요? 옵셔널은 Enum이기 때문에, 아래와 같은 구문도 사용할 수 있습니다.
let ageE: Int? = 20

switch ageE {
case .none: // 'nil'인 경우
    print("나이 정보가 없습니다.")
case .some(let x) where x < 20:
    print("청소년")
case .some(let x) where x < 65:
    print("성인")
default:
    print("어르신")
}




// 프로토콜(Protocol)
// 프로토콜(Protocol)은 인터페이스입니다. 최소한으로 가져야 할 속성이나 메서드를 정의합니다. 구현은 하지 않습니다.

/// 전송가능한 인터페이스를 정의합니다.
protocol Sendable {
  var from: String? { get }
  var to: String { get }

  func send()
}

// 클래스와 구조체에 프로토콜을 적용(Conform)시킬 수 있습니다. 프로토콜을 적용하면, 프로토콜에서 정의한 속성과 메서드를 모두 구현해야 합니다.
struct Mail: Sendable {
  var from: String?
  var to: String

  func send() {
    print("Send a mail from \(self.from) to \(self.to)")
  }
}

struct Feedback: Sendable {
  var from: String? {
    return nil // 피드백은 무조건 익명으로 보냅니다.
  }
  var to: String

  func send() {
    print("Send a feedback to \(self.to)")
  }
}

// 프로토콜은 마치 추상클래스처럼 사용될 수 있습니다.
//func sendAnything(_ sendable: Sendable) {
//  sendable.send()
//}

//let mail = Mail(from: "hh940630@gmail.com", to: "jeon@stylesha.re")
//sendAnything(mail)

//let feedback = Feedback(from: "hh940630@gmail.com")   // ? Error ?
//sendAnything(feedback)

// sendAnything() 함수는 Sendable 타입을 파라미터로 받습니다. Mail과 Feedback은 엄연히 다른 타입이지만, 모두 Sendable을 따르고 있으므로 sendAnything() 함수에 전달될 수 있습니다. 그리고, Sendable에서는 send() 함수를 정의하고 있기 대문에 호출이 가능합니다.

// 프로토콜은 또다른 프로토콜을 따를 수 있습니다.
//protocol Messagable {
//    var message: String? { get }
//}

//protocol Sendable: Messagable {
    // ...
//}

// Sendable은 Messagable을 기본적으로 따르는 프로토콜입니다. 따라서, Sendable을 적용하려면 var message: String? { get }을 정의해주어야 합니다.



// Any와 AnyObject
// Any는 모든 타입에 대응합니다. AnyObject는 모든 객체(Object)에 대응합니다.
let anyNumber: Any = 10
let anyString: Any = "Hi"

let anyInstance: AnyObject = Dog()
// Any와 AnyObject는 프로토콜입니다. Swift에서 사용 가능한 모든 타입은 Any를 따르도록 설계되었고, 모든 클래스들에는 AnyObject 프로토콜이 적용되어있습니다.


// 타입 캐스팅(Type Casting)
// anyNumber에 10을 넣었다고 해서 anyNumber가 Int는 아닙니다. 'Any 프로토콜을 따르는 어떤 값'이기 때문입니다. 따라서 아래와 같습니다.
//anyNumber + 1   // Error!

// 이럴 때에는 as를 이용해서 다운 캐스팅(Down Casting)을 해야 합니다. Any는 Int보다 더 큰 범위이기 때문에, 작은 범위로 줄인다고 하여 '다운 캐스팅'이라고 합니다.

// Any는 Int뿐만 아니라 String과 같은 전혀 엉뚱한 타입도 포함되어 있기 때문에 무조건 Int로 변환되지 않습니다. 따라서 as?를 사용해서 옵셔널을 취해야 합니다.
let number: Int? = anyNumber as? Int

// 옵셔널이기 때문에, 옵셔널 바인딩 문법도 사용할 수 있습니다. 실제로 이렇게 사용하는 경우가 굉장히 많습니다.
if let number = anyNumber as? Int {
    print(number + 1)
}



// 타입 검사
// 타입 캐스팅까지는 필요 없고, 만약 어떤 값이 특정한 타입인지를 검사할 때에는 is를 사용할 수 있습니다.
print(anyNumber is Int) // true
print(anyNumber is Any) // true
print(anyNumber is String)  // false
print(anyNumber is String)  // true
