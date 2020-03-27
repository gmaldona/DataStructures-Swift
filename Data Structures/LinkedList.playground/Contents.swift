//To search through the linkedList the time complexity is O(n)
struct LinkedList<T> {
    
    private var nodes: [Node<T>]
    private var head: Node<T>?
    
    init(dataType: T) {
        nodes = []
    }
    
    mutating public func addTo(nodeBefore: Node<T>, data: T) {
        let node = Node(data: data)
        node.setNext(next: nodeBefore.getNext())
        nodeBefore.setNext(next: node)
    }
    
    mutating public func addTo(index: Int, data: T) {
        let node = Node(data: data)
        if index == 0 {
            node.setNext(next: nodes[0])
            head = node
        }
        else {
            node.setNext(next: nodes[index + 1])
            nodes[index -  1].setNext(next: node)
        }
        nodes.insert(contentsOf: nodes, at: index)
    }
    
    mutating public func addToStart(data: T) {
        let node = Node(data: data)
        if !self.isEmpty() { node.setNext(next: head!) }
        head = node
        nodes.append(node)
    }
    
    mutating public func addToEnd(data: T) {
        let node = Node(data: data)
        if self.isEmpty() == false { nodes[nodes.count - 1].setNext(next: node) }
        else { head = node }
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

