//: [Previous](@previous)

/*:
 ---
 ## Tuples ( 튜플 )
 * 정해지지 않은 데이터 타입의 묶음
 * 소괄호 ( ) 안에 타입을 묶음으로 새로운 튜플타입을 만들수 있다. (Int, Int), (String, Int, String)
 * 각 타입마다 이름을 지정해 줄수도 있다.
 ---
 */

//Unnamed Tuple

let number: Int = 10

let threeNumbers: (Int, Int, Int) = (1, 2, 5) // 데이터 저장하는법
type(of: threeNumbers) // (Int, Int, Int).Type 즉, 튜플로 저장되어있는 것을 알 수 있음.

threeNumbers    // 전체 꺼내쓰기
threeNumbers.0  // 각각 꺼내오기, 단 0부터 시작
threeNumbers.1
threeNumbers.2

var threeValues: (Int, Double, String) = (10,  100.0,  "이름") // 각 타입 다르게도 가능.


//wildcard pattern

let (_, second1, third1) = threeNumbers
second1
third1

//Named Tuple

//let iOS: (language: String, version: String) = ("Swift", "4")   // 정석
let iOS = (language: "Swift", version: "4")  // 약식

iOS.0
iOS.1

iOS.language // 튜플 순서가 아니라 변수이름으로도 꺼내올 수 있음.
iOS.version


/*:
 ## Comparison Operators
 * Tuple 은 7개 미만 요소에 대한 비교 연산자가 포함되어 있음
 * 7개 이상의 요소를 비교하기 위해서는 비교 연산자를 직접 구현해야 함
 */


(1, "zebra") < (2, "apple")   // true or false ?
(3, "apple") < (3, "bird")    // true or false ?
(4, "dog") == (4, "dog")      // true or false ?



//Tuple Matching


let somePoint = (1, 1)

switch somePoint {
case (0, 0):
    print("\(somePoint) is at the origin")
case (_, 0):
    print("\(somePoint) is on the x-axis")
case (0, _):
    print("\(somePoint) is on the y-axis")
case (-2...2, -2...2):
    print("\(somePoint) 여기다 여기~!!!")
default:
    print("\(somePoint) is outside of the box")
}


//이런식으로도 _ 가능.


//: [Next](@next)
