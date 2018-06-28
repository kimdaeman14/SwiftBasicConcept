//: [Previous](@previous)

/*:
 # if
 * 대표적인 조건문으로 논리요소에 사용 됨.
 */

var a = 5

if a>0 {print("a는 0보다 큽니다.")}
else{
    print("안큽니다.")
}




/*:
 ---
 ## Early Exit
 - guard statement
 ---
 */



/********************  *******************************
 if문과 guard문의 차이
 
 if <#condition#> {
 <#code#>
 }
 
 guard <#condition#> else {
 <#code#>
 }
 ****************************************************/


func update(age: Int) {
    if 0..<10 ~= age {
        print("0부터 10사이")
    }else if 10..<20 ~= age {
        print("10부터 20사이")
    }else{
        print("둘다 아니영.")
    }
}

update(age: 100)

func update1(age: Int) {
    guard 0...20 ~= age 
        //    , age == 100
        else { return }
    print("Pass")
}
update1(age: 19)


//두 코드의 차이점은 코드의 복잡도와 관련이 있다. if문의 경우 age값이 0...20사이가 아닌지 확인하려면
//계속 if문을 타고타고 안으로 들어가야하는데, guard문의 경우는 로직 특성상 해당조건이 false이면 바로 else문을
//실행하는 구조이다. 따라서 가독성에 있어서 훨씬 명료하다.


//: [Next](@next)
