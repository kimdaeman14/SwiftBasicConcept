//: [Previous](@previous)

func calender(month : Int) {
        switch month {
        case 1:
            print("1월")
        case 2:
            print("2월")
        case 3:
            print("3월")
        case 4:
            print("4월")
        case 5:
            print("5월")
        case 6:
            print("6월")
        case 7:
            print("7월")
        case 8:
            print("8월")
        case 9:
            print("9월")
        case 10:
            print("10월")
        case 11:
            print("11월")
        case 12:
            print("12월")
        default:
            print("잘못된 숫자입니다.")
            }
    }

calender(month: 3)



func calender2(month : Int) {
    switch month {
    case 12,1,2:
        print("겨울")
    case 3,4,5:
        print("봄")
    case 6,7,8:
        print("여름")
    case 9,10,11:
        print("가을")
    default:
        print("잘못된 숫자입니다.")
    }
}

calender2(month: 6)



// value binding

let stillAnotherPoint = (0, 2)

switch stillAnotherPoint {
case (let distance, 0), (0, let distance):
    print("On an axis, \(distance) from the origin")
default:
    print("Not on an axis")
}

//: [Next](@next)
