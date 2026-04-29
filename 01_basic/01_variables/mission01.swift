let nickname: String = "kihunism"
let level: Int = 30

// print("닉네임: ", nickname, "레벨: ", level)
print("닉네임 \(nickname) 레벨: \(level)")
// → 자바스크립트의 `$()` 와 동일 스위프트는 "\()"

let number01: Int = 50
let number02: Int = 80
let double01: Double = 24.25

let sum = Double(number01) + Double(number02) + double01

print("sum: ", sum)

//

let gold: Int = 10000
let gem: Double = 200.55

let total: Double = Double(gold) + gem
print("총 재화: \(total)")