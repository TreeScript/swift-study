let userGolds: [Int] = [100, 500, 1200, 3000, 50, 800]

var highGoldUserCount: Int = 0
var intermediateCount: Int = 0
var lowGoldUserCount: Int = 0

for userGold: Int in userGolds {

    switch userGold {
    case 0..<500:
        lowGoldUserCount += 1
    case 500..<1000:
        intermediateCount += 1
    default:
        highGoldUserCount += 1
    }
}

var totalGold: Int = 0

for userGold: Int in userGolds {

    totalGold += userGold
}

var averageGold: Double = Double(totalGold) / Double(userGolds.count)

print("초보 유저: \(lowGoldUserCount)")
print("중수 유저: \(intermediateCount)")
print("고수 유저: \(highGoldUserCount)")

print("totalGold: \(totalGold)")
print("averageGold: \(averageGold)")