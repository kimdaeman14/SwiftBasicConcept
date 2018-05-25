//: [Previous](@previous)

/*:
 # for
 * 대표적인 조건문으로 반복할일을 줄이는 기능을 한다.
 */

// 1부터 10까지 더하는 기능을 가진 함수
func add1to10(){
    var total = 0
    for a in 1...10 { // 10번반복해주는 역할을 한다.
       total += a
    }
    print(total)
}

add1to10()




let list = ["Swift", "Programming", "Language"]
for str in list {
    print(str)
}

//여기서 명확한 차이를 알아야 하는 부분이 list와 str이다. list는 말그대로 저 3개 전체가 들어온 것이다.
//그리고 여기서 str은 list의 요소 하나하나를 가리킨다.
//따라서 출력할때에도 print(list)가 아니라,  print(str)을 사용한 것이다.
//이 안에다 if문을 넣는다고 해도 마찬가지로 str을 써야한다.  list>0 해버리면 list는 array타입이기때문에
//타입이 미스매치된다.



//for 문을 이용하여 2의 4제곱, 3의 4제곱에 대한 결과값을 표현하는 코드 구현
let two = 2
let three = 3
let four = 4
var answer = 1
var answer2 = 1


// 1. for문을 이용하는 방법
for _ in 1...four { // 1부터 four까지의 횟수를 반복해라
    answer *= two  // answer = answer * two
}
    print(answer)


// 2. pow함수를 이용하는 방법 ( 단, Foundation의 기능이므로 꼭 import 해줘야 한다. )
import Foundation

pow(2,2)
pow(2,3)
pow(2,4)
pow(2,5)


//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현, 함수 reversed()

for num in (1...10) { //정상작동
    print(num, terminator: " ")
}
print()

for num in (1...10).reversed() {
    print(num, terminator: " ") // terminator 같은 경우는 num값과 num값 사이의 공백을 주는 용도
}
print()


//: [Next](@next)
