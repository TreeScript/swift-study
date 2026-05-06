
func optionalAdvance() {
    let users: [User] = loadUsers()

    let guildUserNicknames = users.compactMap{ 
        $0.guild != nil ? $0.nickname : nil
    }

    print(guildUserNicknames)

    let epicGradeItems: [String] = users
        .flatMap { $0.items }
        .filter { $0.grade == "epic" }
        .map { $0.name }

    print("epicGradeItems: \(epicGradeItems)")
}