struct Stack<T> {
    
    private var list: [T]
    private var top: T
    
    public mutating func push(element: T) {
        list.append(element)
        top = element
    }
    
    public mutating func pop() -> T {
        
        let element = top
        list.remove(at: list.count - 1)
        top = list[list.count - 1]
        return element
        
    }
    
    public var count: Int {
        return list.count
    }
    
    public var peak: T {
        return top
    }
    
}



