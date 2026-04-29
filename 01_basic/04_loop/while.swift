var count: Int = 0
while count < 5 {
    print("count \(count)")
    count += 1
}

var num: Int = 0
while true {
    
    num += 1
    if num == 3 {
        continue
    }
    if num == 6 {
        break
    }

    print(num)
}