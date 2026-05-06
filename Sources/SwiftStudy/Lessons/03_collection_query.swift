func runCollectionQuery() {

    let users = loadUsers()

    let sortedByGold = users.sorted{
        $0.gold > $1.gold
    }

    print(sortedByGold.map{
        "\($0.nickname): \($0.gold)"
    })

    let sortedByLevel = users.sorted{
        $0.level > $1.level
    }

    print(sortedByLevel.map {
        "\($0.nickname): Lv.\($0.level)"
    })

    let richUser = users.first {
        $0.gold > 4000
    }

    // print(richUser?.nickname)
    print(richUser?.nickname ?? "없음")

    let guildMaster = users.first {
        $0.guild?.role == "master"
    }
    print(guildMaster ?? "마스터 없음")

// contains => true/false Bool값 반환
    let hasEpicUser = users.contains { user in
        user.items.contains{
            $0.grade == "epic"
        }
    }
    print(hasEpicUser)

    // 가장 레벨 높은 유저 찾기
    let highLevelUser: [User] = users.sorted{
        $0.level > $1.level
    }
    print(highLevelUser[0].level)

    // epic 아이템 가진 유저 닉네임 목록
    let hasEpicItemUsers = users.filter { user in
        user.items.contains {
            $0.grade == "epic"
        }
    }.map {
        $0.nickname
    }
    print(hasEpicItemUsers)
}