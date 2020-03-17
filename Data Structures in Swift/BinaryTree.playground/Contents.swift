struct BinaryTree {
    
    private var root: Node?
    var nodes: [Node] = []
    
    mutating public func addNode(data: Int) {
        let node = Node(data: data)
        if nodes.count == 0 {
            root = node
            nodes.append(node)
        }
        else {
            self.check(node: root!, newNode: node);
        }
    }
    
    public func getRoot() -> Node {
        return root!
    }
    
    mutating private func check(node: Node, newNode: Node) {
        if newNode.getData() > node.getData() {
            if let right: Node = node.getRight() {
                check(node: right, newNode: newNode)
            }
            else {
                node.setRight(right: newNode)
                nodes.append(newNode)
            }
        }
        else if newNode.getData() < node.getData() {
            if let left: Node = node.getLeft() {
                check(node: left, newNode: newNode)
            }
            else {
                node.setLeft(left: newNode)
                nodes.append(newNode)
            }
        }
    }
    
    public func searchFor(data: Int) -> Bool {
        return self.search(node: self.root!, data: data)
    }
    
    private func search(node: Node, data: Int) -> Bool {
        if node.getData() == data {
            return true
        }
        else {
            if data < node.getData() {
                if let left: Node = node.getLeft() {
                    return search(node: left, data: data)
                }
                else {
                    return false
                }
            }
            if data > node.getData() {
                if let right: Node = node.getRight() {
                    return search(node: right, data: data)
                }
                else {
                    return false
                }
            }
            return false
        }
    }
    
}

class Node {
    
    private var data: Int
    private var left: Node?
    private var right: Node?
    
    init(data: Int) {
        self.data = data
    }
    
    public func getLeft() -> Node? {
        return left
    }
    public func getRight() -> Node? {
        return right
    }
    public func setLeft(left: Node) {
        self.left = left
    }
    public func setRight(right: Node) {
        self.right = right
    }
    public func getData() -> Int {
        return data
    }
}

var tree = BinaryTree()
tree.addNode(data: 2)
tree.addNode(data: 1)
tree.addNode(data: 7)
tree.addNode(data: 6)
tree.addNode(data: 9)
 
tree.getRoot().getData()
tree.getRoot().getLeft()!.getData()
tree.getRoot().getRight()!.getData()
tree.getRoot().getRight()!.getLeft()?.getData()
tree.getRoot().getRight()!.getRight()?.getData()

tree.searchFor(data: 9)
