//: [Previous](@previous)

/*:
 ---
 ## Tuples ( 튜플 )
 * 정해지지 않은 데이터 타입의 묶음
 * 소괄호 ( ) 안에 타입을 묶음으로 새로운 튜플타입을 만들수 있다. (Int, Int), (String, Int, String)
 * 각 타입마다 이름을 지정해 줄수도 있다.
 ---
 */


let threeNumbers: (Int, Int, Int) = (1, 2, 5) // 데이터 저장하는법
type(of: threeNumbers) // (Int, Int, Int).Type 즉, 튜플로 저장되어있는 것을 알 수 있음.

threeNumbers    // 전체 꺼내쓰기
threeNumbers.0  // 각각 꺼내오기, 단 0부터 시작
threeNumbers.1
threeNumbers.2

var threeValues: (Int, Double, String) = (10,  100.0,  "이름") // 각 타입 다르게도 가능.


//Named Tuple, 튜플 값 앞에 이름이랑 타입을 붙여줄수도 있다.

//let iOS: (language: String, version: String) = ("Swift", "4")   // 정석
let iOS = (language: "Swift", version: "4")  // 약식

iOS.0
iOS.1

iOS.language // 튜플 순서가 아니라 변수이름으로도 꺼내올 수 있음.
iOS.version

//Tuple Matching
let somePoint = (1, 1)
let somePoint1 = (123, 0)

switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
    print("\(somePoint1) is at the origin")
case (_, 0): // _ 쪽엔 아무거나 상관없고 , 뒤에가 0이 들어와야하는
    print("\(somePoint) is on the x-axis")
    print("\(somePoint1) is at the origin")
case (0, _):
    print("\(somePoint) is on the y-axis")
    print("\(somePoint1) is at the origin")
case (-2...2, -2...2):
    print("\(somePoint) 여기다 여기~!!!")
    print("\(somePoint1) is at the origin")
default:
    print("\(somePoint) is outside of the box")
    print("\(somePoint1) is at the origin")

}


//: [Next](@next)
