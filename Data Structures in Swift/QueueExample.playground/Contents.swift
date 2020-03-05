struct Queue<T> {
    
    private var array: [T] = []
    private var top: T? = nil
    
    mutating func push(element: T) {
        
        if self.isEmpty() {
            top = element
            array.append(element)
        }
        else {
            array.append(element)
        }

    }
    
    mutating func pop() -> T {
        
        let element = top!
        array.remove(at: 0)
        top = array[0]
        return element
        
    }
    
    func isEmpty() -> Bool {
        return array.isEmpty
    }
    
    func peak() -> T {
        return top!
    }
    
    func count() -> Int {
        return array.count
    }
}

var data = Queue<Int>()
data.push(element: 4)
data.push(element: 3)
data.push(element: 24)
data.peak()

print(data.pop())
print(data.pop())
data.peak()

