let users: [(String, Int, Int)] = [
    ("MOON", 30, 3000),
    ("KIM", 17, 500),
    ("LEE", 25, 1200),
    ("PARK", 22, 800),
    ("CHOI", 35, 5000)
]

let adultUsers: [(String, Int, Int)] = users.filter { user in
    user.1 >= 20
}
/*
Any를 함부로 선언하면 안 되는 이유

최대한 엄격한 타입으로 선언해야 함
*/

print("adultUsers: \(adultUsers)")

let userNames: [String] = users.map { user in
    user.0
}

print("userNames: \(userNames)")

let totalGold = users.reduce(0) { total, user in
    total + user.2
}

print("totalGold \(totalGold)")

let highGoldAdultNames = users
    .filter { user in
        user.1 >= 20
    }
    .filter { user in
        user.2 >= 1000
    }
    .map { user in
        user.0
    }

print("highGoldAdultNames \(highGoldAdultNames)")