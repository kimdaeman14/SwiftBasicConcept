//: [Previous](@previous)

/*:
 
 # Closer
 
 클로저는 실행가능한 코드 블럭입니다. 함수는 이름이 있는 클로저입니다.
 
 { (매개변수 목록) -> 반환타입 in 실행 코드 }
 
 */

//closer vs func
func funcSum(a:Int, b:Int) -> Int{
    return a * b
}

funcSum(a: 3, b: 4)

/* closwer
 { (<#parameters#>) -> <#return type#> in
 <#statements#>}
 */

// int,int로  input -> int로 output 하는데 매개변수는(a: Int, b: Int)이거고 코드는 return a + b 이거야.
let sum: (Int, Int) -> Int = { (a: Int, b: Int) in
    return a + b }
//Int = { (a: Int, b: Int) 이부분땜에 헷갈리네



let add: (Int, Int) -> Int //변수 add는 int값 2개를 받아서 int값으로 리턴하는 얘다.
add = { (a: Int, b: Int) in //받을 매개변수는 int형 a,b이고
    return a + b //적용될 로직은 a + b이다.
}
let substract: (Int, Int) -> Int
substract = { (a: Int, b: Int) in
    return a - b
}
let divide: (Int, Int) -> Int
divide = { (a: Int, b: Int) in
    return a / b
}

/* fucn 설명
 
input 3개 :
1.int a
2.int b
3.int형 두개를 입력받아 int를 리턴하는 메소드
 
output 1개 :
method(a, b)를 연산해서 얻은 int값
 */
func calculate(a: Int, b: Int, method: (Int, Int) -> Int) -> Int {
    return method(a, b)
}
var calculated: Int
calculated = calculate(a: 50, b: 10, method: add)
calculated = calculate(a: 50, b: 10, method: substract)
calculated = calculate(a: 50, b: 10, method: divide)
calculated = calculate(a: 50, b: 10, method: { (a: Int, b: Int) -> Int in return a * b})
//이렇게 메소드를 바로 만들어서 넣어줄수도 있다.


calculate(a: 50, b: 10, method: { (a: Int, b: Int) -> Int in return a * b})

//vs

func c(a:Int, b:Int) -> Int{
    return a * b
}
c(a: 50, b: 10)





/*
 :: 클로저 고급  - 다양한 클로저 표현 ::
 
 
 
 클로저는 아래 규칙을 통해 다양한 모습으로 표현될 수 있습니다.
 
 후행 클로저 : 함수의 매개변수 마지막으로 전달되는 클로저는 후행클로저(trailing closure)로 함수 밖에 구현할 수 있습니다.
 반환타입 생략 : 컴파일러가 클로저의 타입을 유추할 수 있는 경우 매개변수, 반환 타입을 생략할 수 있습니다.
 단축 인자 이름 : 전달인자의 이름이 굳이 필요없고, 컴파일러가 타입을 유추할 수 있는 경우 축약된 전달인자 이름($0, $1, $2...)을 사용 할 수 있습니다.
 암시적 반환 표현 : 반환 값이 있는 경우, 암시적으로 클로저의 맨 마지막 줄은 return 키워드를 생략하더라도 반환 값으로 취급합니다.
 
 1. 후행 클로저
 
 클로저가 함수의 마지막 전달인자일때, 마지막 매개변수 이름을 생략한 후 함수 소괄호 외부에 클로저를 구현할 수 있습니다.
 
 2. 반환타입 생략
 
 calculate(a:b:method:) 함수의 method 매개변수는 Int 타입을 반환할 것이라는 사실을 컴파일러도 알기 때문에 굳이 클로저에서 반환타입을 명시해 주지 않아도 됩니다. 대신 in 키워드는 생략할 수 없습니다
 
 
 3. 단축 인자이름
 
 클로저의 매개변수 이름이 굳이 불필요하다면 단축 인자이름을 활용할 수 있습니다. 단축 인자이름은 클로저의 매개변수의 순서대로 $0, $1, $2... 처럼 표현합니다.
 
 
 4. 암시적 반환 표현
 
 클로저가 반환하는 값이 있다면 클로저의 마지막 줄의 결과값은 암시적으로 반환값으로 취급합니다.
 
 **축약 전과 후 비교**
 
*/
 







let names = ["Chris", "Alex", "Ewa", "Barry", "Daniella"]

names.sorted()
names.sorted (by: { (str1: String, str2: String ) -> Bool in
    return true
})







/*:
 ---
 ### Question
 - sorted 클로져를 축약해나가는 과정을 작성
 ---
 */




// closure parameter

names.sorted(by: { (s1: String, s2: String) in
    return s1 > s2
})

names.sorted { (s1: String, s2: String) in
    return s1 > s2
}

names.sorted { s1, s2 in return s1 > s2 }

names.sorted { s1, s2 in s1 > s2 }

names.sorted { $0 > $1 }

names.sorted(by: >)




// function parameter

func sortFunction(s1: String, s2: String) -> Bool {
    return s1 > s2
}
names.sorted(by: sortFunction(s1:s2:)) //따로 함수로 만들어주고 함수를 넣어버리는 것도 된다고함.




//: [Next](@next)
