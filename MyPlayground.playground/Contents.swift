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

