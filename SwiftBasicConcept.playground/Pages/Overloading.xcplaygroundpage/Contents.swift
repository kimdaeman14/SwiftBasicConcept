//: [Previous](@previous)

/*:
# Overloading
* 함수 이름은 같으나 입력파라미터의 갯수나 타입으로 다른 함수를 호출하는 것
*/

func goToHome(){
    print("가자 당장")
}

func goToHome(name : String){
    print("\(name)아 가자 당장")
}

func goToHome(name : Int){
    print("\(name)은 숫자입니다")
}

func goToHome(name : String, hour: Int){
    print("\(name)아 \(hour)시간만 있다가자")
}


goToHome()
goToHome(name: "찬")
goToHome(name: 4)
goToHome(name: "찬", hour: 1)

//오버로딩의 이점은 함수가 많아지면 많아질수록 오버로딩이 없다면 함수명을 다 다르게 해야하는데,
//그럼 다 기억하지도 못한다. 근데 그것을 파라미터 자료형이나 갯수로 구분해줄 수 있어 효율적이다.


//: [Next](@next)
