//: [Previous](@previous)

/*:
 # Protocol
 */

/*
 1. 프로토콜
 어떤 가이드라인을 정해서 클래스,구조체,열거형아 프로퍼티는 이거, 메소드는 이거, 이니셜라이져는 이거는 꼭 써! 알겠지?
 */

protocol Talkable {
    // 정의는 이렇게 protocol 키워드로
    
    // 프로퍼티 요구
    // 프로퍼티 요구는 항상 var 키워드를 사용합니다
    var topic: String { get set } //읽기, 쓰기 가능해야 해
    var language: String { get } //읽기만 가능해도 돼
    // 메서드 요구
    func talk()
    // 이니셜라이저 요구
    init(topic: String, language: String)
}


/*
 2. 구현
 타입명: 프로토콜 이름
 */
struct Person: Talkable {
    // 프로퍼티 요구 준수
    var topic: String
    let language: String
    /*
     읽기전용 프로퍼티 요구는 연산 프로퍼티로 대체가 가능합니다
        var language: String { return "한국어" }
     물론 읽기, 쓰기 프로퍼티도 연산 프로퍼티로 대체할 수 있습니다
        var subject: String = ""
        var topic: String {
            set {
                self.subject = newValue
            }
            get {
                return self.subject
            }
        }
    */
    // 메서드 요구 준수
    func talk() {
        print("\(topic)에 대해 \(language)로 말합니다")
    }
    // 이니셜라이저 요구 준수
    init(topic: String, language: String) {
        self.topic = topic
        self.language = language
    }
}

/*
 4. 프로토콜 상속
 프로토콜은 하나 이상의 프로토콜을 상속받아 기존 프로토콜의 요구사항보다 더 많은 요구사항을 추가할 수 있다.
 프로토콜은 클래스와 다르게 다중상속이 가능합니다.
 
 <<클래스 상속과 프로토콜>>
 클래스에서 상속과 프로토콜 채택을 동시에 하려면 상속받으려는 클래스를 먼저 명시하고 그 뒤에 채택할 프로토콜 목록을
 생성합니다. 이런식으로
 
 class SubClass: SuperClass, Writeable, ReadSpeakable {
 func write() { }
 func speak() { }
 }
 */

/*
 5. 프로토콜 준수 확인
 is, as 연산자를 사용해서 인스턴스가 특정 프로토콜을 준수하는지 확인할 수 있습니다.
 */

/*
someAny is Readable // true, bool값을 반환하도록
someAny is ReadSpeakable // false

if let someReadable: Readable = someAny as? Readable {
    someReadable.read() // 준수하면 동작하도록
}
*/


//: [Next](@next)


