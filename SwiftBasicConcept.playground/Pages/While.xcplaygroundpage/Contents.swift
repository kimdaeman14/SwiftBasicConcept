//: [Previous](@previous)


/*:
 ## Conditional Statements ( 조건문 )
 */

/*:
 ---
 ## if Statements
 ---
 */
/***************************************************
 if <#condition#> {
 <#code#>
 }
 
 if <#condition#> {
 <#statements#>
 } else {
 <#statements#>
 }
 
 - condition 은 Bool 값 (true, false)
 ***************************************************/
let a,b : Int
a = 3
b = 6


// Logical And Operator
if (a > 0) && (b % 2 == 0) {
}

// Logical And Operator
if a > 0, b % 2 == 0 {
}

/*:
 ---
 ## switch Statements
 ---
 */
/***************************************************
 switch <#value#> {
 case <#value 1#>:
 <#respond to value 1#>
 case <#value 2#>,
 <#value 3#>:
 <#respond to value 2 or 3#>
 default:
 <#otherwise, do something else#>
 }
 
 - switch 문은 가능한 모든 사례를 반드시 다루어야 함 (Switch must be exhaustive)
 ***************************************************/


// Compound Cases ( 혼합 케이스 )

let someCharacter: Character = "e"

switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter) is a vowel")
case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
     "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z":
    print("\(someCharacter) is a consonant")
default:
    print("\(someCharacter) is not a vowel or a consonant")
}

// value binding

let stillAnotherPoint = (9, 0)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}


/*:
 ---
 ## Early Exit
 - guard statement
 ---
 */



/***************************************************
 if문과 guard문의 차이
 
 if <#condition#> {
 <#code#>
 }
 
 guard <#condition#> else {
 <#code#>
 }
 ***************************************************/


func update(age: Int) {
    if 0..<10 ~= age {
        print("0부터 10사이")
    }else if 10..<20 ~= age {
        print("10부터 20사이")
    }else{
        print("둘다 아니야.")
    }
}

update(age: 100)

func update1(age: Int) {
    guard 0...20 ~= age
        //    , age == 100
        else { return }
    print("Pass")
}
update1(age: 100)


//두 코드의 차이점은 코드의 복잡도와 관련이 있다. if문의 경우 age값이 0...20사이가 아닌지 확인하려면
//계속 if문을 타고타고 안으로 들어가야하는데, guard문의 경우는 로직 특성상 해당조건이 false이면 바로 else문을
//실행하는 구조이다. 따라서 가독성에 있어서 훨씬 명료하다.

//: [Next](@next)
