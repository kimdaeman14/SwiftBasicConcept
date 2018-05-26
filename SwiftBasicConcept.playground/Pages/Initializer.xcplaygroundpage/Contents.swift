//: [Previous](@previous)

/*:
 :: 인스턴스의 생성과 소멸 ::
 
 - init/deinit -
 
 */


//1. 프로퍼티 초기값
// 스위프트의 모든 인스턴스는 초기화와 동시에 모든 프로퍼티에 유효한 값이 할당되어 있어야 한다.
class Person{
    var name: String = "kk" //name, age : property
    var age: Int = 30
}

// 프로퍼티에 미리 기본값을 할당해두면 인스턴스가 생성됨과 동시에 초기값을 지니게 됩니다.
var person = Person()
person.name
person.age


// 2-1. 이니셜라이저(initializer)

// 프로퍼티 초기값을 지정하기 어려운 경우에는 이니셜라이저 init을 통해 인스턴스가 가져야 할 초기값을 전달할 수 있습니다.
class Person1{
    var name: String
    var age: Int
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

// 프로퍼티는 구성상 꼭 필요한데, 초기값을 설정할 필요가 없을때 옵셔널 사용
class Person2{
    var name: String
    var age: Int
    var gender: String?
    init(name:String, age:Int) {
        self.name = name
        self.age = age
    }
}

//gender를 안넣어도 인스턴스 생성이 되지? 그리고 호출해보니까 일단 nil값 나와.
var person2 = Person2(name: "kk", age: 33)
person2.name
person2.age
person2.gender

// class 내부의 init을 사용할때는 convenience 키워드 사용
class Base {
    var value: String
    var someProperty: String
    init() {
        value = "Base"
        someProperty = "someProperty"
    }
    //convenience는 그거야. value 프로퍼티값은 self.init()에 있는 초기화된 값으로 하고
    //다른 someProperty값은 파라미터로 입력받겠다는거야
    //근데 특이점은 어찌됐던 init은 있어야돼 하나는 꼭. 그래서 저거 없으면 에러난다.
    convenience init(someProperty: String) {
        self.init()
        self.someProperty = someProperty
    }
}
let base = Base()
base.someProperty
base.value
let base2 = Base(someProperty: "kkk")
base2.someProperty
base2.value


// 암시적 추출 옵셔널은 인스턴스 사용에 꼭 필요하지만 초기값을 할당하지 않고자 할 때 사용

class PersonC {
    var name: String = "할아버지주인"
    var age: Int
    init(age: Int) {
        self.age = age
    }
}
let jenny: PersonC = PersonC(age: 10)
class Puppy {
    var dogName: String = "퍼피"
    var owner: PersonC!
    func goOut() {
        print("\(dogName)가 주인 \(owner.name)와 산책을 합니다")
    }
}

let happy: Puppy = Puppy()

// 강아지는 주인없이 산책하면 안돼요!
//happy.goOut() // 주인이 없는 상태라 오류 발생
happy.owner = jenny
happy.goOut()
// happy가 주인 jenny와 산책을 합니다



//ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ

// 2-2. 실패가능한 이니셜라이저
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
// 인스턴스 생성에 실패하면 nil을 반환합니다.
// 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
// init?을 사용합니다.
//
// 3. 디이니셜라이저(deinitializer)
// deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출됩니다.
// 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.
// deinit은 매개변수를 지닐 수 없습니다.
// 자동으로 호출되므로 직접 호출할 수 없습니다.
// 디이니셜라이저는 클래스 타입에만 구현할 수 있습니다.
// 인스턴스가 메모리에서 해제되는 시점은 ARC(Automatic Reference Counting) 의 규칙에 따라 결정됩니다.
// ARC에 대해 더 자세한 사항은 아래 ARC 문서를 참고하세요.
//
// */


//: [Next](@next)
