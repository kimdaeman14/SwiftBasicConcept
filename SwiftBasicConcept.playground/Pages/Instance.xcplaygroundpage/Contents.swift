//: [Previous](@previous)

/*:
 # Instance
 
 객체지향언어에서는 속성과 하는일을 부여하여 객체를 만든다.
 클래스라는 설계도를 기반으로해서 인스턴스를 만들고, 그것을 객체라고 부른다.
 차이점은 class a{} 로 만든 객체가 b라고한다면, b는 객체이고 b는 a로 만든 인스턴스라고 부른다.
 
 */


class PersonA {
    // 여기서 name,age, nickname 이런게 프로퍼티
    // 모든 저장 프로퍼티에 기본값 할당
    var name: String = "unknown"
    var age: Int = 0
    var nickName: String = "nick"
}

// 그리고 이것처럼 클래스 밖에서 생성되는게 인스턴스 
let jason: PersonA = PersonA()


//: [Next](@next)
