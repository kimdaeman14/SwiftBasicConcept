//: [Previous](@previous)

/*:
 ## Array
 ---
 * 배열(Array)은 번호(Index)와 번호에 대응하는 데이터(Value)들로 이루어진 자료 구조를 나타낸다.
 ---
 */


var arr = [1, 4 , 5, 4, 3, 11, 12]
print(arr)
//: [Next](@next)

print(arr[0]) //꺼내쓰기

for idx in arr { //전체 꺼내쓰기, 여기서 만약에 arr을 arr.count로 바꾸면 int형이기 때문에 에러발생
    print(idx)
}



