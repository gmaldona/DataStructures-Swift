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
