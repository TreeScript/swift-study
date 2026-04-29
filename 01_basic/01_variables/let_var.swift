// let VS var

// let → 불변(기본)
// var → 변경 가능
// Swift는 기본이 let

let name = "MOON"
var age = 30

print("name: \(name)")
print("age: \(age)")

age = 31
print("updated age: ", age)

// 타입 명시

let score: Int = 100
let pi: Double = 3.14
let isActive: Bool = true

print(score)
print(pi)
print(isActive)

// 타입 변환

let intValue = 10
let doubleValue = 3.5

let result = Double(intValue) + doubleValue
print("result: ", result)

// Swift는 타입변환을 직접 해야 함 (자동 변환 X)