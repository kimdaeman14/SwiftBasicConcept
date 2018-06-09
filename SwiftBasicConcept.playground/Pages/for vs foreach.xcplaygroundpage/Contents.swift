//: [Previous](@previous)


//for문과 foreach문의 차이점?
//1~10 까지의 숫자 중 짝수만 출력하다가 9가 되면 종료되도록 forEach를 이용해 구현해본 뒤 for 와 비교하여 설명


print("===========[ for ]===========")

//if문 활용 - level 1
for i in 1...10 {
    if (i % 2 == 0) {print(i)}
    if i == 9 {print("end")
        break}
}

//guard문 활용 - level 2
for i in 1...10 {
    guard i != 9 else {break} // i != 9면 내려가, 9면 break
    guard i % 2 == 0 else {continue} // i가 짝수면 내려가, 아니면 반복
    print(i)
}

print("===========[ foreach ]===========")
(1...10).forEach {
    guard $0 != 9 else { return }
    if $0 % 2 == 0 {print($0)}
}

//차이점
//guard $0 != 9 else { return } 구문을 보면,
//첫번째 값이 9가아니라면 내려가, 아니면 리턴이잖음? 근데 결과를 보면 얘는 값이 9인데도 foreach가 종료된게아니라
//10이 출력되었음, 이말이 뭐냐면 return을 하면 종료된게 맞는데 9에 대한 로직만. 종료가 된것임.
//break, couninue 쓰면 에러남. 함수라서

//forEach는 반환값이 없어서 로직 전체를 print해봐도 아무것도 안나옴
print( (1...10).forEach {guard $0 != 9 else { return }
    if $0 % 2 == 0 {($0)}})



//: [Next](@next)
