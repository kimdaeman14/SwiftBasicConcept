//: [Previous](@previous)

/*:
 :: 프로퍼티 감시자 ::
 
 */


/*
 프로퍼티 감시자라는게 있대. 근데 그걸 사용하면 저장프로퍼티에다가 바뀔거 willset, 바뀐후 didset에 대해서
 호출을 해줄수가 있대. 둘중하나만 해줘도 상관없고, 변경할값이 똑같더라도 동작한대.
 
 그리고 연산프로퍼티에서 newvalue를 사용했던 것처럼 () 안에 아무것도 안써주면 여기서는 newvalue/oldvalue를
 쓰면 된대. 또 연산프로퍼티에서는 프로퍼티 옵저버를 쓸수없대. 왜냐면 프로퍼티 감시자는 말그대로 저장되는 프로퍼티값이
 변경되는지 됐는지 감시하는 역할이기떄문에 연산프로퍼티에는 쓸필요가 없기떄문이지.
 */

//프로퍼티 감시자는 함수, 메서드, 클로저, 타입 등의 지역/전역 변수에 모두 사용 가능합니다.

//프로퍼티에서 썼던 환율바꾸는거로 예를 만들어보면 


struct Money {
    var currencyRate: Double = 1100 {
        willSet{
            print("\(currencyRate) 값이 \(newValue) 값으로 변경될 예정입니다.")
        }
        didSet{
            print("\(oldValue) 값이 \(currencyRate) 값으로 변경되었습니다.")
        }
    }
//    이렇게 기존 저장프로퍼티에 {}를 넣고 위처럼 윌셋,디드셋이라고 해주고 나서 currencyRate값을 변경해주면,
//    프린트가 출력된다.
    
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

//프로퍼티 감시자 사용
moneyInMyPocket.currencyRate = 1200



//프로퍼티 감시자 기능은 함수, 메서드, 클로저, 타입 등의 외부에 위치한 지역/전역 변수에도 모두 사용 가능
var a : Int = 3 {
    willSet{
        print("\(a) 값이 \(newValue) 값으로 변경될 예정입니다.")
    }
    didSet{
        print("\(oldValue) 값이 \(a) 값으로 변경되었습니다.")
    }
}

a = 10


//: [Next](@next)
