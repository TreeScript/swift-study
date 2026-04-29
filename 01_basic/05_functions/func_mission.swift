
func isAdult(age: Int) -> Bool {
    return age >= 20
}
// print(isAdult(age: 30))

func calcAverage(scores: [Int]) -> Double {
    guard !scores.isEmpty else {
        return 0
    }

    var scoreSum: Int = 0

    for score: Int in scores {
        scoreSum += score
    }

    return Double(scoreSum) / Double(scores.count)
}
// print(calcAverage(scores: [10, 20, 30, 20, 100, 50]))

func filterHighGold(users: [Int]) -> [Int] {

    var thousandOverGoldUsers: [Int] = []

    for user: Int in users {
        
        if user >= 1000 {
            thousandOverGoldUsers.append(user)
        }
    }

    return thousandOverGoldUsers
}
// print(filterHighGold(users: [3000, 2000, 1005, 100, 22, 400, 999]))

func filterHighGold2(users: [Int]) -> [Int] {

    let highGoldUser: [Int] = users.filter{ $0 >= 1000 }

    return highGoldUser
}

print(filterHighGold2(users: [3000, 2000, 1005, 100, 22, 400, 999]))