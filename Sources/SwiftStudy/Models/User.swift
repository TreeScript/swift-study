import Foundation

struct User: Decodable, CustomStringConvertible {
    let id: Int
    let nickname: String
    let age: Int
    let level: Int
    let gold: Int
    let cash: Int
    let isActive: Bool
    let lastLoginDaysAgo: Int
    let guild: Guild?
    let items: [Item]

    var description: String {
        return "\(nickname) (Lv.\(level), Gold:\(gold))"
    }
}

struct Guild: Decodable {
    let id: Int
    let name: String
    let role: String
}

struct Item: Decodable {
    let itemId: Int
    let name: String
    let count: Int
    let grade: String
}