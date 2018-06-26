//: [Previous](@previous)

/*:
 # Class
 객체지향언어의 대표적인 개념으로 객체의 속성과 하는 일을 나누어 표현한다.
 
 클래스는 참조(reference) 타입입니다.
 타입이름은 대문자 카멜케이스를 사용하여 정의합니다.
 Swift의 클래스는 다중 상속이 되지 않습니다.
 */



class Person { //생성하는법
    var name : String //문자열 자료형 프로퍼티 'name'  생성
    var age : Int
    var gender : String
    
    init(name : String, age : Int, gender : String) { //입력 파라미터 값으로 초기화 되도록 설정
        self.name = name
        self.age = age
        self.gender = gender
    }
    
    func run(){ //하는일 만들어주기
        print("달리고고 있어요")
    }
    
    func sleep(){
        print("잠자는 중입니다.")
    }
    
}

let humun = Person(name: "jongchan", age: 30, gender: "남")
//사람 설계도로 같은 속성과 하는 일을 가지는    객체 인간을 생성

humun.run() //꺼내다쓰기
humun.sleep()



//: [Next](@next)
