let numbers: [Int] = [1, 2, 3, 4, 5]
// 배열 자료형 선언 [자료형]

let conversation: [Any] = [1, "string", 3]
// 혼합 자료형 배열은 [Any]


for number in numbers {
    print("number: \(number)")
}

for i in 1...5 {
    print("closed range: \(i)")
}

for i: Int in 1..<5 {
    print("closed range: \(i)")
}


// print("배열 길이: \(numbers.count)")

let userLevels: [Int] = [3, 7, 12, 25, 31, 8, 19]

var beginnerCount: Int = 0
var intermediateCount: Int = 0
var advancedCount: Int = 0

for level: Int in userLevels {
    switch level {
        case 1...10:
            beginnerCount += 1
        case 11...20:
            intermediateCount += 1
        default:
            advancedCount += 1
    }
}

print("초보 유저 \(beginnerCount)")
print("중수 유저 \(intermediateCount)")
print("고수 유저 \(advancedCount)")