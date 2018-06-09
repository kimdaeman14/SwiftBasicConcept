//: [Previous](@previous)

/*:
 
 # High-order Functions
하나 이상의 함수를 인자로 취하는 함수, 함수를 결과로 반환하는 함수


 */


//고차함수 예시, 리턴값이 함수잖음?
func makeIncrementer(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0                        //---------//
    func incrementer() -> Int {                 //int형 input -> ( void->int를반환하는 함수 )를 output
        runningTotal += amount
        return runningTotal
    }
    return incrementer // 리턴값
}
func makeIncrementer1(forIncrement amount: Int) -> () -> Int {
    var runningTotal = 0
    return { //위와 같은 로직인데 클로져 사용
        runningTotal += amount
        return runningTotal
    }
}

/*:
1. forEach
- 컬렉션의 각 요소(Element)에 동일 연산을 적용하며, 반환값이 없는 형태
*/

let immutableArray = [1, 2, 3, 4]
//1
func printParam(_ num: Int) { //그냥 int를 input으로 받아 출력하는 함수가 있다.
    print(num)
}
immutableArray.forEach(printParam(_:)) //배열에서 foreach로 출력을 해버렸네? 함수안에 함수

//2
immutableArray.forEach { //이거랑 아래 두개는 클로저를 사용해서 축약한거 같은데?
    print($0)
}

//3
[1, 2, 3, 4].forEach { num in //이렇게 변수대신 값을 바로 넣어서 쓸수도 있음.
    print(num)
}

/*:
2. map  
- 컬렉션의 각 요소(Element)에 동일 연산을 적용하여, 변형된 새 컬렉션 반환
*/
let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]
names.map {
    $0 + "'s name"
}

//enumerated()함수 활용 : 배열의 인덱스 값을 반환하는 함수
let intArr: [Int] = Array<Int>(repeating: 2, count: 12)
intArr.enumerated().map {
    return $0 + $1 // intArr 배열 22222222222와 enumerated index 0123456789가 더해짐
}
intArr.enumerated().map { //문자열로도 반환가능
    return "결과는 \($0 + $1) 입니다."
}

/*:
 3. filter  
 - 컬렉션의 각 요소를 평가하여 조건을 만족하는 요소만을 새로운 컬렉션으로 반환
 */
//names.filter(<#T##isIncluded: (String) throws -> Bool##(String) throws -> Bool#>)
//자 위에 정석을 잘 봐봐. names컬렉션에 (String)이 included 되어있니?해서 bool값을 반환하잖아.
//즉, 리턴할 a의 값이 "Chris"가 있으면 트루리턴하고 없으면 삭제시켜버리는 거야.
let newNames = names.filter { (a) -> Bool in
    return a == "Chris"}
names
newNames //출력해보면 names는 그대로고 Chris값 빼고는 다 삭제된 새로운 컬렉션이 만들어진걸 볼수있지.

//같은 함수인데 클로저로 함축한 것
let newNames1 = names.filter { $0 == "Chris" }


/*:
4. reduce  
- 컬렉션의 각 요소들을 결합하여 단 하나의 타입으로 반환.
*/


//어차피앞은컬렉션타입input
["1", "2", "3", "4"].reduce("00") { (str, chr) in
    str + chr
}
// "00"
// "00" + "1"
// "001" + "2"
// "0012" + "3"
// "00123" + "4"

//                      여기서str이 reduce값, chr이 컬렉션 요소값
[1, 2, 3, 4].reduce("") { (str : String, chr : Int) in
// str + chr 하면 에러나겠지? 인트랑 스트링을 더할수없으니까
    str + String(chr)
}

(1...5).reduce(3) { (sum, next) in
    sum + next  // 요거는 sum += next 이 느낌
}
// 3
// 3 + 1
// 4 + 2
// 6 + 3
// 9 + 4
// 13 + 5


/*:
 5. flatMap  
 - 요소 중 옵셔널이 있을 경우 제거 (Swift 4.1 에서 compactMap 으로 변경)
 */

//func some() -> [[Any]]{
//  return [[1, 2, 3], [1, 5, 99], [1, 1]]
//  flatMapExamaple1.flatMap { $0 }
//
//}

print("\n---------- [ flatMap ] ----------\n")

let flatMapExamaple1 = [[1, 2, 3], [1, 5, 99], [1, 1]]  //int배열을가진 배열
print(flatMapExamaple1.flatMap { $0 })
type(of: flatMapExamaple1)

let flatMapExamaple2 = [1, 5, nil, 9, 16, 100, nil, 7]
//print(flatMapExamaple2.flatMap { $0 })
print(flatMapExamaple2.compactMap { $0 }) //옵셔널을 제거할때는 컴팩트맵, 닐제거
type(of: flatMapExamaple2)

let array: [[Int?]] = [[1, 2, 3], [nil, 5], [6, nil], [nil, nil]]
print(array.flatMap { $0 }.compactMap { $0 })
print(array.compactMap { $0 }.flatMap { $0 })
type(of: array)



//: [Next](@next)
