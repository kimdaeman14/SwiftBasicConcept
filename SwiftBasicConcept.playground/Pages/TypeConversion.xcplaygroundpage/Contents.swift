//: [Previous](@previous)

/*:
 # Type Conversion ( 타입 변환 )
 */

let height = Int8(5)
let width = 10
//let area = height * width, height와 width의 타입이 다르기 때문에 에러 발생



let h = UInt8(25)
let x = 10 * h
print(x)
//얘는 에러 안발생. 이유는 위같은 경우 데이터값 5가 선언되어 Int8형으로 변환되고, 그 값이 변수 height에
//할당되어 타입이 맞지 않아 에러가 발생하는 반면에, 10 * h 경우는 10이라는 데이터가 기본 데이터형인 int로
//변환되기 전에 이미 h가 UInt8형으로 선언되어 있으므로 그 자료형에 맞춰가서 Uint8형으로 적용되기 때문이다.
//따라서 변수 x의 타입을 확인해봐도 기본형인 int가 아닌 Uint8형으로 확인되는 것을 볼 수 있다.
type(of: x)


//: [Next](@next)
