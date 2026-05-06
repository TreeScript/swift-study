func grouping() {

    let users = loadUsers()

    let userGoldMap: [String : Int] = Dictionary(
        uniqueKeysWithValues: users.map{
            ($0.nickname, $0.gold)
        }
    )

    print(userGoldMap)

    let groupedByGuild = Dictionary(
        grouping: users
    ) {
        // ?? 연산자는 Optional 전용
        $0.guild?.name ?? "No Guild"
    }

    print("=========groupedByGuild=========")
    print(groupedByGuild)

    for (guildName, users) in groupedByGuild {
        print("\(guildName): \(users.count)명")
    }

    for (gn, users) in groupedByGuild {

        let totalGold = users.reduce(0) {
            $0 + $1.gold
        }

        print("\(gn): \(totalGold)")
    }

    let groupedByActive = Dictionary(
        grouping: users
    ) {
        $0.isActive
    }
    print("=========groupByActive=========")
    print(groupedByActive)

    // guild별 평균 골드 계산
    for(guildName, users) in groupedByGuild {

        let totalGold = users.reduce(0) {
            $0 + $1.gold
        }
        // .map {
        //     $0 / users.count
        // }
        let averageGold = totalGold / users.count
        print("\(guildName) 평균 골드: \(averageGold)")
    }

    // 아이템 grade별 갯 수 집계
    

}