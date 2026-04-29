// 기본 함수
func greet() {
    print("Hello Swift")
}

func greetUser(name: String) {
    print("Hello, \(name)")
}

// greetUser(name: "MOON")

func add(a: Int, b: Int) -> Int {
    return a + b
}

let result: Int = add(a: 3, b: 5)
// print(result)

let result2: Int = add(a: 10, b: 3)
// print(result2)

// 축약형, return 생략 가능
func add2(_ a: Int, _ b: Int) -> Int {
    a + b
}

let result3: Int = add2(20, 30)
// print(result3)


// ** Swift 함수 특징
// _ 사용 (매우 중요)

func sum(_ a: Int, _ b: Int) -> Int {
    return a + b
}

let sumResult: Int = sum(1, 20)
// print(sumResult)

func isHighLevel(level: Int) -> Bool {
    return level >= 20
}

// print(isHighLevel(level: 25))
