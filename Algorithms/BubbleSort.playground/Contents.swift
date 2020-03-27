func sort(array: [Int]) -> [Int] {
    
    var sortedArray = array
    
    for i in 0...array.count - 2 {
        
        let arrayCheck = sortedArray
        
        if sortedArray[i] > sortedArray[i + 1] {
            let temp = sortedArray[i + 1]
            sortedArray[i + 1] = sortedArray[i]
            sortedArray[i] = temp
        }
        
    }
    
    if (sortedArray.elementsEqual(arrayCheck)) {
        return sortedArray
    }
    else {
        sort(array: sortedArray)
    }

    return [0]
    
}

let A = [1, 54, 75, 3, 8, 23, 87, 98, 5, 0, 21, 53]
print(sort(array: A))
