//: [Previous](@previous)

/*:
 ## Dictionary
 ---
 * Dictionary는 순서가 정해져 있지 않은 데이터에 키값을 통해 구분할수 있는 자료구조다.
 항목의 순서가 중요치 않고 key값을 통해서 데이터를 접근한다.
 Dictionary 문법
 기본 표현은 Dictionary<key, value>로 Dictionary Type을 나타낸다.
 Key값 은 Dictionary에서 value를 가져오는데 사용되는 값이다.
 또 다른 축약 문법으로 [key:value] 로 표현할 수 있다.

 ---
 */

var month = [1:"1월", 2:"2월", 3:"3월", 4:"4월", 5:"5월", 6:"6월", 7:"7월", 8:"8월", 9:"9월"
    , 10:"10월", 11:"11월", 12:"12월"]

print(month[4]) //꺼내오는방법
type(of: month[4]) // 이거 타입이 옵셔널이네? key값이 없을수도있다고 생각했나보다.
print(month[4]!) // 이렇게 확실히 값이 있다고 ! 로 표현해줘야 제대로 출력된다.
type(of: month[4]!) 




//: [Next](@next)
