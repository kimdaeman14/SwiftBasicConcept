//: [Previous](@previous)

/*:
 :: 클래스 vs 구조체/열거형 ::
 클래스는 참조 타입, 열거형과 구조체는 값 타입이라는 것이 가장 큰 차이입니다.
 클래스는 상속이 가능하지만, 열거형과 구조체는 상속이 불가능 합니다.
 
 1. 값 타입과 참조 타입 비교
 값 타입(Value Type) : 데이터를 전달 할 때 값을 복사하여 전달합니다.
 참조 타입(Reference Type) : 데이터를 전할 할 때 값의 메모리 위치를 전달합니다.
 
 2. 값 타입을 사용하는 경우
 연관된 몇몇의 값들을 모아서 하나의 데이터 타입으로 표현하고 싶은 경우
 다른 객체 또는 함수 등으로 전달될 때 참조가 아니라 복사(값 복사) 할 경우
 자신을 상속할 필요가 없거나, 다른 타입을 상속 받을 필요가 없는 경우
 
 3. 스위프트에서의 사용
 스위프트의 기본 데이터 타입은 모두 구조체로 구현되어있습니다.
 스위스트는 구조체와 열거형 사용을 선호합니다.
 Apple 프레임워크는 대부분 클래스를 사용합니다.
 구조체/클래스 선택과 사용은 개발자의 몫입니다.
 */

//: [Next](@next)
