//: [Previous](@previous)

/*
 :: 상속 ::
 상속은 클래스, 프로토콜 등에서 가능합니다.
 열거형, 구조체는 상속이 불가능합니다.
 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.
 */

/*
 3. 사용

 */

class Person{
    var name : String = "찬"
    var age : Int = 30
    
    func run() {
    print("\(name)이는 달립니다")
    }
//    final 키워드를 사용하면 재정의(override)를 방지할 수 있습니다.
    final func run1() {
       print("\(name)이는 달립니다")
    }
//    static 키워드를 사용해 타입 메서드를 만들면 재정의가 불가능 합니다.
    static func run2() {
        print("달립니다")
    }
//    class 키워드를 사용해 타입 메서드를 만들면 재정의가 가능합니다.
    class func run3() {
        print("달립니다")
    }
//    class 앞에 final을 붙이면 static 키워드를 사용한것과 동일하게 동작합니다.
    final class func run4() {
        print("달립니다")
    }
}

class Student : Person {
    var grade : Int = 2
    
//    override 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있습니다.
    override func run() {
        print("\(grade)")
    }
}


//사용
var person = Person()
var student = Student()


//상속받은 속성, 본인 속성 다 사용가능
student.grade
student.age
student.name

student.run()
student.run1()

//func 앞에 static, class, final class 붙이니까 인스턴스로 하면 호출이 안되네 ?
//student.run2()
//student.run3()
//student.run4()
//Static member 'run2' cannot be used on instance of type 'Student'


//본인 속성, 본인 메서드 중 아무것도없는 func이랑 final만 사용가능
person.age
person.name
person.run()
person.run1()


//: [Next](@next)
