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

