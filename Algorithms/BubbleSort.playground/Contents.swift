func BubbleSort(dataSet: [Int]) -> [Int] {
    var data = dataSet
    
    var index = data.count - 1
    
    while index >= 0 {
        for i in 0 ... data.count - 2 {
            if data[i] > data[i + 1] {
                let temp = data[i + 1]
                data[i + 1] = data[i]
                data[i] = temp
            }
        }
    index = index - 1
    }
    
    return data
}

let A = [1, 54, 75, 3, 8, 23, 87, 98, 5, 0, 21, 53]
BubbleSort(dataSet: A)
