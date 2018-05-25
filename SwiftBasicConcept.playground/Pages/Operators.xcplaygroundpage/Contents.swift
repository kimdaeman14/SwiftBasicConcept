//: [Previous](@previous)


/*:
 ## Oprator
 ---
 swift not support : value++ , value--
 ---
 */


// Ternary Operator (삼항 연산자)
// Swift 에서 삼항 연산자는 단 하나
var a : Int = 4
a > 0 ? "positive" : "negative"
//a가 0보다 크면 포지티브, 아니면 네거티브
//유용하게 쓰인다 잘 봐둬

//아래 이프문이 간단하게 표현된 것
//if a > 0 {
//  "positive"
//} else {
//  "negative"
//}


var value = 0
value = value + 10 // 같은말임
value += 10        // 같은말임
value = value - 5
value -= 5
value = value * 2
value *= 2
value = value / 2
value /= 2
value = value % 2
value %= 2

//: [Next](@next)
