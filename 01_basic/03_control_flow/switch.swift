// MARK: 기본 switch

let score: Int = 85

switch score {
    case 90...100:
        print("A")
    case 80..<90:
        print("B")
    case 70..<80:
        print("C")
    default:
        print("F")
}

// ..< → ~~이상, ~~미만
// ex) 80..<90 → 80이상, 90미만
// break문 필요없음

let level: Int = 15

switch level {
    case 1...10:
        print("초보")
    case 11...20:
        print("중수")
    default:
        print("고수")
}