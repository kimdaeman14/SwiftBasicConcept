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

class Puppy {
    var dogName: String = "퍼피"
    var owner: PersonC! // 프로퍼티 owner는 PersonC type
    func goOut() {
        print("\(dogName)가 주인 \(owner.name)와 산책을 합니다")
    }
}
let jenny: PersonC = PersonC(age: 10)
let happy: Puppy = Puppy()

jenny.name //할아버지 주인
happy.owner //nil

//그니까 그런건가봐, !가 초기값 할당하기 싫을 때 하는 거잖아. 그래서 jenny.name은 분명 있는데
//happy.owner은 없단말이지. 여기다 값을 넣고 하면 출력이 되긴 될거야. 쓰는 방법만 알아두자
happy.owner = jenny
//이건 신기하네,, type이 PersonC라서 var name인줄 알고 happy.owenr = "문자열"을 하면
//타입이 안맞다고 에러가 나네. 그래서 PersonC의 인스턴스인 jenny를 넣어주니까 되네.
happy.goOut()

// 2-2. 실패가능한 이니셜라이저

class Person3{
    var name: String
    var age: Int
    
    init?(name:String, age:Int) {
        if (0...50).contains(age) == true { //true라면 nil값 반환 -> 0...50 사이는 안받겠다는
            return nil
        }
        if name.count == 0 { // 이거는 name 값이 string이라 정상작동을 안하네 ?
            return nil
        }
        self.name = name
        self.age = age
    }
}

var person3 = Person3(name: "1번", age: 3)
// 이니셜라이저 매개변수로 전달되는 초기값이 잘못된 경우 인스턴스 생성에 실패할 수 있습니다.
// 실패가능한 이니셜라이저의 반환타입은 옵셔널 타입입니다.
person3?.age
type(of: person3?.age)
person3?.name
type(of: person3?.name)
var person33 = Person3(name: "2번", age: 150)
person33?.age
person33?.name


// 3. 디이니셜라이저(deinitializer)
// 이거 어떻게 돌아가는지 확실히 모르겠다 나중에 다시 보자.

class PersonE {
    var name: String
    var pet: Puppy?
    var child: PersonC
    
    init(name: String, child: PersonC) {
        self.name = name
        self.child = child
    }
    // 인스턴스가 메모리에서 해제되는 시점에 자동 호출
    deinit {
        // deinit은 매개변수를 지닐 수 없습니다. 자동으로 호출되므로 직접 호출할 수 없습니다.
        // 디이니셜라이저는 클래스 타입에만 구현할 수 있습니다.
        if let petName = pet?.dogName {
            print("\(name)가 \(child.name)에게 \(petName)를 인도합니다")
            self.pet?.owner = child
        }
    }
}
var donald: PersonE? = PersonE(name: "donald", child: jenny)
donald?.pet = happy
donald = nil
// donald 인스턴스가 더이상 필요없으므로 메모리에서 해제됩니다
// deinit은 클래스의 인스턴스가 메모리에서 해제되는 시점에 호출
// 왜쓰는지 ? 인스턴스가 해제되는 시점에 해야할 일을 구현할 수 있습니다.



//: [Next](@next)
