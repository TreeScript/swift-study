func runHighOrderFunctionsLesson() {

    let users = loadUsers()

    let activeHighLevelNicknames = users
        .filter { $0.isActive && $0.level >= 30 }
        .map { $0.nickname }

    // print("activeHighLevelNickname: \(activeHighLevelNicknames)")

    // let totalGold = users.reduce(0) { total, user in
    //     total + user.gold
    // }

    // let avergaeGold = users.isEmpty ? 0 : Double(totalGold) / Double(users.count)
    // print(avergaeGold)

    let epicItemUserNicknames = users
        .filter { user in
            user.items.contains { item in
                item.grade == "epic"
            }
        }
        .map { $0.nickname }

    print("epicItemUserNicknames \(epicItemUserNicknames)")

    // let guildUsers = users.filter { $0.guild != nil }
    // print("guildUsers \(guildUsers)")
    // print("guildUsers: \(guildUsers.map { $0.nickname })")

}