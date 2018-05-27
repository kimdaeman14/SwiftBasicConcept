//: [Previous](@previous)

/*:
 
 # Enum
 
 */

/*
 1. Enum
 Swift 열거형은 다른 언어의 열거형과 많이 다릅니다. 강력한 기능을 지니고 있어 잘 알아두고 사용하면 좋습니다.
 why use ? 유사한 종류의 여러 값을 한 곳에 모아서 정의한 것입니다. 예) 요일, 월, 계절 등
*/

enum Weekday {
//    enum 자체가 하나의 데이터 타입으로, 대문자 카멜케이스를 사용하여 이름을 정의합니다.
//    각 case는 소문자 카멜케이스로 정의합니다.
    case mon, tue, wed
    case thr, fri
    case sat
    case sun
//    각 case는 그 자체가 고유의 값입니다.(각 case에 자동으로 정수값이 할당되지 않음)
//    각 case는 한 줄에 개별로도, 한 줄에 여러개도 정의할 수 있습니다.
}

/*
 2. 꺼내쓰기
 */
var mon: Weekday = Weekday.mon
mon
//타입이 명확할 경우, 열거형의 이름을 생략 할 수 있습니다.
mon = .fri
//위에서 mon이라는 인스턴스를 만들었는데 그게 Weekday type이었잖아. 그래서 같은 인스턴스에 값을 할당하는데는
//타입을 다시 써줄 필요가 없다는 얘기야. 그 말은 처음에는 꼭 타입을 명시해주어야 된다는 말이고, 아래처럼
//var sat = .wed 하면 값이 할당되지는 않는다는 이야기이기도해. 왜냐면 sat는 처음쓰니까.


var weekday: Weekday = Weekday.mon
//여기서 Weekday.mon 값을 입력파라미터 값으로 한다고 하면 유용할 듯?
    switch weekday {
    case .mon, .tue, .wed :
        print("평일입니다")
    case .thr, .fri:
        print("불금 파티!!")
    case .sat, .sun:
        print("신나는 주말!!")
    }


 /*
 3. rawValue (원시값)
 */

enum Fruit: Int {
    /*
     C 언어의 enum 처럼 정수값을 가질 수 있습니다.
     rawValue는 case별로 각각 다른 값을 가져야합니다.
     자동으로 1이 증가된 값이 할당됩니다.
     rawValue를 반드시 지닐 필요가 없다면 굳이 만들지 않아도 됩니다.
     정수 타입 뿐만 아니라, Hashable 프로토콜을 따르는 모든 타입을 원시값의 타입으로 지정 할 수있습니다.
     */
    case apple
    case grape = 3
    case banana
    
//    case peach = 0 //같은 값을 두번 넣거나, 1다음에 1을 또넣으면 고유값이 아니므로 에러발생
}

Fruit.apple.rawValue //처음에 아무것도 안넣으면 초기값 0
Fruit.grape.rawValue
Fruit.banana.rawValue //3값을 할당했으므로 1씩 증가해서 4

enum School: String {
    case elementary = "초등"
    case middle = "중등"
    case high = "고등"
    case university
}

School.elementary.rawValue
School.middle.rawValue
School.high.rawValue
School.university.rawValue //문자열도 사용가능한데, 다른점은 값을 할당안하면 case값 자체가 들어가게 됨.


/*
 4. 원시값을 통한 초기화
*/

//let a : Fruit! = Fruit(rawValue: 0)
//a 라는 인스턴스를 만드는데, 이건 Fruit type이고 값도 무조건 있어. rawValue 0번째 값을 갖고와서 a에 할당해.
//라는 말이다. 다행히 0 번쨰 값은 있으므로 출력하면 apple이 나온다. 그런데 아래처럼
//let b : Fruit! = Fruit(rawValue: 7) 해버리면 nil값이 출력되겠지.

let a : Fruit? = Fruit(rawValue: 2) //우리 2번 없지? 3값부터 있잖아 그러니까 nil값 출력
let b : Fruit? = Fruit(rawValue: 3) //grape
//rawValue가 case에 해당하지 않을 수 있으므로, rawValue를 통해 초기화 한 인스턴스는 옵셔널 타입입니다.


// if let 구문을 사용하면 rawValue에 해당하는 케이스를 곧바로 사용할 수 있습니다
if let o: Fruit = Fruit(rawValue: 3) {
    print("rawValue 3에 해당하는 케이스는 \(o)입니다")
} else {
    print("rawValue 3에 해당하는 케이스가 없습니다")
}

/*
 5. 메서드
 Swift의 열거형에는 메서드도 추가할 수 있습니다.
 */

//: [Next](@next)
