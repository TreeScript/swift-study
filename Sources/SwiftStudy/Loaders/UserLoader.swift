import Foundation

func loadUsers() -> [User] {

    guard let url = Bundle.module.url(
        forResource: "users",
        withExtension: "json"
    ) else {
        print("users.json 파일을 찾을 수 없습니다.")

        return []
    }

    do {
        let data = try Data(contentsOf: url)
        return try JSONDecoder().decode([User].self, from: data)
    } catch {
        print("users.json 파싱 실패: \(error)")

        return []
    }
}