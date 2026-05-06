// Optional
/*
$user = null
echo $user->name
→ 런타임 에러 발생

스위프트는 컴파일 단계에서 막기위해 Optional 기능이 존재
*/
// 값이 있을 수도 있고, 없을 수도 있다.

// String → 무조건 값이 있음
// String? → nil값이 가능

func optionalBasic() {

    // var user: User? = nil
    // var name: String? = "MOON"
    // print(name)

    // name = nil
    // print(name)

    // var nickname: String? = "KIM"
    // print(nickname!)

    // nickname = nil
    // print(nickname!)


    var age: Int? = 30

    if let safegAge = age {
        print(safegAge)
    } else {
        print("값 없음")
    }

    func printAge(age: Int?) {
        guard let age = age else {
            print("값 없음")
            
            return
        }
        print(age)
    }

    let users: [User] = loadUsers()
    
    let guilds: [String?] = users.map{ user in
        user.guild?.name
    }

    for user: User in users {
        let guildname: String = user.guild?.name ?? "없음"

        print("guildname → \(user.nickname): \(guildname)")
    }

    let guildnames: [String] = users.map {
        $0.guild?.name ?? "없음"
    }
    
    print(guildnames)
}

