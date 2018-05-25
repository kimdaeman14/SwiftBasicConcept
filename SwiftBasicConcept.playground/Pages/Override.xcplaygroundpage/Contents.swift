//: [Previous](@previous)

/*:
 # Override
 * 자식 클래스가 부모 클래스를 상속받을때 부모 클래스에 있는 메서드를 재정의하여 변형해 사용하는 것
 */

class Person { //생성하는법
    var name : String //문자열 자료형 프로퍼티 'name'생성
    var age : Int
    var gender : String
    
    init() { //입력 파라미터 값으로 초기화 되도록 설정
        self.name = "종찬"
        self.age = 30
        self.gender = "남"
    }
    
    func run(){ //하는일 만들어주기
        print("달리고 있어요")
    }
    
    func sleep(){
        print("잠자는 중입니다.")
    }
}

class Student : Person { //생성하는법
    var subject : String //문자열 자료형 프로퍼티 'name'생성
    var grade : Int
    
    override init() {
        self.subject = "수학"
        self.grade = 2
    }
    
    override func run(){ //하는일 만들어주기
        print("\(name)이는 \(grade)학년이고 나이는 \(age)입니다")
    }
}

let aa = Student()
aa.run()


//: [Next](@next)

