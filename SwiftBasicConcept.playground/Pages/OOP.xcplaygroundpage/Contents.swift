//: [Previous](@previous)

/*:
 
 # Object-Oriented Programming
 * 프로그램을 어떻게 설계해야 하는지에 대한 일종의 개념이자 방법론.
 * 프로그램을 단순히 데이터와 처리 방법으로 나누는 것이 아니라, 프로그램을 수많은 '객체'라는 기본 단위로 나누고 이 객체들의 상호작용으로 서술하는 방식이다.
 */

/*
 
 * 왜 생겼나 ?
 ---
 1. 기존 절차적 프로그래밍의 한계
 
     절차적 프로그래밍
     초기 프로그래밍 방식은 절차적 프로그래밍 방식이었다. 학교대사전의 고등학생 알고리즘(현재 열람 불가)처럼 입력을 받
     아 명시된 순서대로 처리한 다음, 그 결과를 내는 것뿐이라는 생각이 지배적이었다. 프로그램을 명령어의 모음으로 인식
     한 것이다. 또한 프로그래밍이란 어떻게 어떤 논리를 어떤 순서대로 써나가는 것인가로 간주되었다. 즉, 프로그램 자체
     가 가지는 기능에 대해서만 신경을 썼지, 이 프로그램이 대체 어떤 데이터를 취급하는 것인가에는 그다지 관심이 없었던
     것이다.
 
     절차적 프로그래밍의 문제점
     그러나, 이 방식은 간단한 알고리즘이면 모를까 조금만 복잡해지면 순서도로 나타내는 것이 불가능할 정도로 꼬인 "스파
     게티 코드"가 만들게 된다. 간단히 말해서 스타크래프트를 위의 순서도로 그려야 된다고 생각해봐라! 이렇게 꼬인 코드
     를 다른 사람이 보고 이해하는 것은 거의 불가능하고 심지어는 작성한 본인조차도 유지보수에 어려움을 겪게 된다. 특정
     코드 부분은 어디에 사용되는 코드고 해당 코드 부분은 어디까지 이어지고, 코드가 어디로 연결되어 있느냐 등을 파악하
     는 것. 양이 많은 것은 기본이고, 중복 코드도 많이 생길 때 매우 골치 아프다. OOP를 사용하면 코드의 중복을 어느
     정도 줄일 수 있고 입력 코드, 계산 코드와 결과 출력 코드 등 코드의 역할 분담을 좀 더 확실하게 할 수 있어서 가독
     성이 높아질 수 있다.
 ---
 2. 그렇다면 함수func단위로 나누고 호출하는 방식으로 바꿔보자 !
 
     ok! but, 함수/변수 이름짓기가 너무힘들다.. 입출력을 잘표현하고 가독성을 해치지않으면서 간결한 이름.
     몇십개라면 그러려니하겠는데, 큰 프로그램의 경우 수백/수천개는 도저히 감당을 할 수가 없음.
     거기다 뭐하나 잘못바꾸면 전체를 다 점검해야하는지 지경에 이르렀음.
 ---
 3. 객체지향 프로그래밍의 등장
 
     객체 지향 프로그래밍의 등장
     이를 극복하기 위한 대안으로 등장한 것이 바로 객체 지향 프로그래밍이다. 큰 문제를 작게 쪼개는 것이 아니라, 먼저
     작은 문제들을 해결할 수 있는 객체들을 만든 뒤, 이 객체들을 조합해서 큰 문제를 해결하는 상향식(Bottom-up) 해
     결법을 도입한 것이다. 이 객체란 것을 일단 한번 독립성/신뢰성이 높게 만들어 놓기만 하면 그 이후엔 그 객체를 수정
     없이 재사용할 수 있으므로 개발 기간과 비용이 대폭 줄어들게 된다.
 
     GUI의 등장
     객체 지향 프로그래밍은 등장 당시에는 기존의 절차적 프로그래밍과 비교해 매우 이질적이고, 당시 컴퓨터의 처리능력이
     별로 좋지 않아서 별 주목을 받지 못하였다.그러다가 GUI가 등장하면서 객체 지향 프로그래밍이 급부상하게 된다. 화면
     에 떠 있는 여러 개의 창은 각자의 실행 콘텍스트를 가지는데 콘텍스트의 현재 상태(활성화, 비활성화, 최소화 등)에
     따라 같은 명령에도 다른 결과를 내보내야 했으며 사용자 상호작용을 위해 이벤트 처리도 수행해야 했다. 특히 이벤트
     처리는 비동기적인 속성 때문에 기존 절차적 프로그래밍에서는 일종의 횡단 관심사가 되어 버려 코드 전체에 이벤트 처리
     코드가 흩어져 있게 되는 문제가 있었다. 그래서 OOP를 도입하여 이벤트를 받았을 때 수행되는 기능(Event
     Handler, Callback)을 구현할 수 있는 단일 인터페이스를 정의하고, 프로그래머들은 이를 필요한 형태로 알아서
     구현하며, 특정 이벤트가 일어났을 때 실행되어야 하는 기능들을 등록한 다음, 운영체제나 응용프로그램이 실제로 해당
     이벤트가 발생했을 때 해당 이벤트에 등록된 이벤트 핸들러/콜백을 주욱 실행하기만 하면 되는 구조가 본격적으로 확산되
     면서 OOP 또한 빠르게 확산되었다.
 ---
 
 4. 요소
 
     캡슐화(Encapsulation)[편집]
     캡슐화는 프로그램의 세부 구현을 외부로 드러나지 않도록 특정 모듈(클래스) 내부로 감추는 것이다.많은 객체지향 언어
     에서 사용되는 클래스를 기준으로 보면, 클래스 외부에서는 바깥으로 노출된 특정 메소드에만 접근이 가능하며 클래스 내
     부에서 어떤식으로 처리가 이루어지는지는 알지 못하도록 설계된다.
 
     public : 클래스의 외부에서 사용 가능하도록 노출시키는 것이다.
     protected : 다른 클래스에게는 노출되지 않지만, 상속받은 자식 클래스에게는 노출되는 것이다.
     private : 클래스의 내부에서만 사용되며 외부로 노출되지 않는다.
 
     상속(Inheritance)
     상속은 자식 클래스가 부모 클래스의 특성과 기능을 그대로 물려받는 것을 말한다. 기능의 일부분을 변경해야 할 경우
     자식클래스에서 상속받은 그 기능만을 수정해서 다시 정의하게 되는데, 이러한 작업을 '오버라이딩(Overriding: 재
     정의)'이라고 한다. 상속은 캡슐화를 유지하면서도 클래스의 재사용이 용이하도록 해 준다.
 
     다형성(Polymorphism)
     하나의 변수명, 함수명 등이 상황에 따라 다른 의미로 해석될 수 있는 것을 말한다. 이를 '오버로딩(Overloading:
     중복정의/다중 정의)'이라고 한다.

 
     https://namu.wiki/w/%EA%B0%9D%EC%B2%B4%20%EC%A7%80%ED%96%A5%20%ED%94%84%EB%A1%9C%EA%B7%B8%EB%9E%98%EB%B0%8D
 */

//: [Next](@next)
