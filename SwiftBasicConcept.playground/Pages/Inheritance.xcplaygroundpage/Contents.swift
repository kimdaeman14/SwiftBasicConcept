//: [Previous](@previous)

/*
 :: 상속 ::
 
 
 
 1. 스위프트 상속
 
 상속은 클래스, 프로토콜 등에서 가능합니다.
 열거형, 구조체는 상속이 불가능합니다.
 스위프트의 클래스는 단일상속으로, 다중상속을 지원하지 않습니다.
 이번 파트에서는 클래스의 상속에 대해서 알아봅니다
 
 3. 사용
 
 final 키워드를 사용하면 재정의(override)를 방지할 수 있습니다.
 static 키워드를 사용해 타입 메서드를 만들면 재정의가 불가능 합니다.
 class 키워드를 사용해 타입 메서드를 만들면 재정의가 가능합니다.
 class 앞에 final을 붙이면 static 키워드를 사용한것과 동일하게 동작합니다.
 override 키워드를 사용해 부모 클래스의 메서드를 재정의 할 수 있습니다.

 */

class Person{
    var name : String = "찬"
    var age : Int = 30
}

class Student : Person {
    var grade : Int = 2
}

var student = Student()
//학생 설계도를 가지고 인스턴스 학생을 만들어줬는데, 이상한 점은
//학생하고 .을 찍어보니 학생의 속성인 grade 외에도 2개가 더 있다.
//학생클래스가 사람클래스를 상속받아서 사람 클래스의 2개 속성도 사용할 수 있는 것이다.

student.grade
student.age
student.name



//: [Next](@next)
