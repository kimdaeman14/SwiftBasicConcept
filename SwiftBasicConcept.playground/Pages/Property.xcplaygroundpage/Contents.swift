//: [Previous](@previous)

/*:
 
 # Property
 

 */


struct Money {
    var currencyRate: Double = 1100
    var dollar: Double = 0
    var won: Double {
        get {
            return dollar * currencyRate
        }
        set {
            dollar = newValue / currencyRate
        }
    }
}

var moneyInMyPocket = Money()

//자 봐봐 맨첨에 won값을 불러오면 get 메소드를 실행해.
moneyInMyPocket.won
//연산하면 0값이 나오지 dollar가 0이니까? 근데 이제 값을 할당하면
moneyInMyPocket.won = 11000
//값을 할당(set)하는거니까 set메소드가 실행이 돼.
//set( ?? ) 여기서 ?? 자리에 아무것도 안넣어주면 newValue 를 사용하면 됨
//그래서  dollar = 11000 / 10 -> dollar에는 1100 이 저장됨
moneyInMyPocket.dollar
//그리고 다시 호출해보면
moneyInMyPocket.won
//이 나오지. 왜냐면 10 * 1100 이니까

/*
프로퍼티는 구조체, 클래스, 열거형 내부에 구현할 수 있습니다.
다만 열거형 내부에는 연산 프로퍼티만 구현할 수 있습니다.
연산 프로퍼티는 var로만 선언할 수 있습니다.
연산프로퍼티를 읽기전용으로는 구현할 수 있지만, 쓰기 전용으로는 구현할 수 없습니다.
읽기전용으로 구현하려면 get 블럭만 작성해주면 됩니다. 읽기전용은 get블럭을 생략할 수 있습니다.
읽기, 쓰기 모두 가능하게 하려면 get 블럭과 set블럭을 모두 구현해주면 됩니다.
set 블럭에서 암시적 매개변수 newValue를 사용할 수 있습니다.
*/

//4. 지역변수 및 전역변수
//저장 프로퍼티와 연산 프로퍼티의 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능합니다.

var a = 3
var b = 5
var sum:Int {
    return a + b
}
sum



//: [Next](@next)
