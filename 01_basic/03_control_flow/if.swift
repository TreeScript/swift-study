let score: Int = 85

if score >= 80 {
    print("합격")
}


let age = 20

if age >= 20 {
    print("성인")
} else {
    print("미성년자")
}

let point = 72

if point >= 90 {
    print("A")
} else if point >= 80 {
    print("B")
} else if point >= 70 {
    print("C")
} else {
    print("F")
}


let level: Int = 70
if level >= 10 {
    print("고수")
} else {
    print("초보")
}

let gold: Int = 2000
if gold >= 1000 {
    print("부자")
} else if gold >= 500 {
    print("중수")
} else {
    print("초보")
}

let isLoggedIn: Bool = true
let isAdmin: Bool = false

if isLoggedIn && isAdmin {
    print("관리자")
} else if isAdmin {
    print("일반 유저")
} else {
    print("로그인 필요")
}