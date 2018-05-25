//: [Previous](@previous)

/*:
 ## Loops ( 반복문 )
 - For-In Loops
 - While Loops
 - while
 - repeat-while
 */
/*:
 ---
 ## For-In Loops
 ---
 */
print("\n---------- [ for ] ----------\n")
/***************************************************
 for <#item#> in <#items#> {
 <#code#>
 }
 ***************************************************/


let list = ["Swift", "Programming", "Language"]
for str in list {
    print(str)
}

//여기서 명확한 차이를 알아야 하는 부분이 list와 str이다. list는 말그대로 저 3개 전체가 들어온 것이다.
//그리고 여기서 str은 list의 요소 하나하나를 가리킨다.
//따라서 출력할때에도 print(list)가 아니라,  print(str)을 사용한 것이다.


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

for _ in 1...four {
    answer2 *= three  // answer = answer * two
}
print(answer2)

// 2. pow함수를 이용하는 방법 ( 단, Foundation의 기능이므로 꼭 import 해줘야 한다. )
import Foundation

pow(2,2)
pow(2,3)
pow(2,4)
pow(2,5)

pow(3,2)
pow(3,3)
pow(3,4)
pow(3,5)


//for 문을 이용하여 10부터 1까지 내림차순으로 출력하는 코드 구현, 함수 reversed()

for num in (1...10) {
    print(num, terminator: " ")
}
print()

for num in (1...10).reversed() {
    print(num, terminator: " ")
}
print()


/*:
 ---
 ## While Loops
 - 조건이 거짓이 될 때까지 일련의 명령문 수행
 - 첫 번째 반복이 시작되기 전에 반복 횟수를 알지 못할 때 많이 사용
 - while  /  repeat-while
 ---
 */

/***************************************************
 while <#condition#> {
 <#code#>
 }
 
 - 루프를 통과하는 각 패스의 시작 부분에서 조건을 평가
 ***************************************************/

var num = 0
var sum = 0

while num <= 100 {
    sum += num
    num += 1
}

sum


/***************************************************
 repeat {
 <#code#>
 } while <#condition#>
 
 - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while 문으로 많이 사용
 ***************************************************/

num = 0
sum = 0

repeat {
    sum += num
    num += 1
} while num <= 100

sum


//: [Next](@next)
