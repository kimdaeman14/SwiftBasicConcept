//: [Previous](@previous)


/*:
 ## While Loops
 - While Loops
 - while
 - repeat-while
 */


/*:
 ---
 ## While Loops
 - 조건이 거짓이 될 때까지 일련의 명령문 수행
 - 첫 번째 반복이 시작되기 전에 반복 횟수를 알지 못할 때 많이 사용
 ---
 */

var num = 0
var sum = 0

while num <= 100 {
    sum += num // num값을 계속더한다.
    num += 1 // num이 100될때까지.
             // 즉 이로직은 num이 0부터 100까지의 합을 구하는 로직이라고 보면됨.
}

sum //num이 101이되면 결과값 출력


/***************************************************
 repeat-while
 
 - 루프를 통과하는 각 패스의 끝 부분에서 조건을 평가
 - 다른 언어에서는 do - while 문으로 많이 사용
 ***************************************************/

num = 0
sum = 0

repeat { //이부분을 먼저 실행하고 와일문을 사용
    sum += num // sum = sum + num, sum = 0
    num += 1   // num = num + 1 , num = 1
} while num <= 100


sum












//: [Next](@next)
