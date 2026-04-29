// 산술 연산

let a: Int = 10
let b: Int = 3

print("더하기: \(a + b)")
print("빼기: \(a - b)")
print("곱하기: \(a * b)")
print("나머지: \(a % b)")
print("나누기: \(a / b)") // 정수형끼리의 나누기는 몫만 나옴
// Double로 자료형을 바꿔줘야 함
print("나누기: \(Double(a) / Double(b))")

// 비교 연산

print("a == b: \(a == b)")
print("a != b: \(a != b)")
print("a > b: \(a > b)")
print("a < b: \(a < b)")
print("a >= b: \(a >= b)")
print("a <= b: \(a <= b)")

let isLoggedIn: Bool = true
let isAdmin: Bool = false

print("AND: \(isLoggedIn && isAdmin)")
print("OR: \(isLoggedIn || isAdmin)")
print("NOT \(!isLoggedIn)")