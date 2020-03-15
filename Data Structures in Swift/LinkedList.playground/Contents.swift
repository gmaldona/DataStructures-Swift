struct LinkedList<T> {
    
    private var nodes: [Node<T>]
    private var head: Node<T>?
    
    init(dataType: T) {
        nodes = []
    }
    
    mutating public func createNode(data: T) {
        let node = Node(data: data)
        if nodes.count != 0 {
            nodes[nodes.count - 1].setNext(next: node)
        }
        else {
            head = node
        }
        nodes.append(node)
    }
    
    public func getHead() -> Node<T> {
        return self.head!
    }
    
    public func get() -> [Node<T>] {
        return nodes
    }
    
    public func size() -> Int {
        return nodes.count
    }
    
    public func isEmpty () -> Bool {
        if self.size() == 0 {
            return true
        }
        return false
    }
}

class Node<T> {
    
    private var data: T
    private var next: Node?
    
    init(data: T) {
        self.data = data
    }
    
    public func getData() -> T {
        return data
    }
    public func setNext(next: Node) {
        self.next = next
    }
    public func getNext() -> Node<T> {
        return next!
    }
}

var numberSet = LinkedList(dataType: Int())
numberSet.createNode(data: 24)
numberSet.createNode(data: 6)
numberSet.createNode(data: 12)

numberSet.getHead().getData()
numberSet.getHead().getNext().getData()

