//: [Previous](@previous)

/*:
 # Method
 
 메소드는 언어마다 차이는 있지만 함수func와 의미가 유사하다.
 코딩을 하다보면 반복되는 부분이 있는데 그걸 모듈화해서 코드를 간결하게 하기 위해 만들어졌다.
 메소드와 함수의 차이는, 클래스 내부에서 구현되면 메소드 밖에서 구현되면 함수라고 한다.
 
 */

// method example

class Exam {
    var a: Int
    var b: Int
    init(a:Int, b:Int) {
        self.a = a
        self.b = b
    }
    func addNum(a :Int, b :Int) -> Int {
        return a+b
    }
}


var exam = Exam(a: 3, b: 4)
//초기값을 지정안하고 이니셜라이져로 파라미터값으로 받는다고 했었고, 그래서 인스턴스 exam을 생성하면서
//초기값을 넣어준거잖아 3하고 4로.
exam.addNum(a: 5, b: 6)


//여기서 함수 addNum가 메소드이다. 클래스내부에서 구현되었고 입력값에 따라 a+b값을 돌려주는 기능을 한다.






//: [Next](@next)
