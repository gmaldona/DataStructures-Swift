//To search through the linkedList the time complexity is O(n)
class LinkedList
{
    
    //The start of the linked list
    var head: Node?
    
    //This method adds a node to the list
    func add(value: Int)
    {
        if isEmpty() { head = Node(data: value) }
        else { head?.add(value: value) }
    }
    
    //This method adds a node to the specific index
    func insertAt(index: Int, value: Int)
    {
        //If the list is empty, it places a new node at the beginning
        if isEmpty() { head = Node(data: value) }
        //If the list is not empty and the index is at the start
        else if index == 0 && !isEmpty()
        {
            let tempNode = head
            head = Node(data: value)
            head?.next = tempNode
        }
        //index any where else in the list
        else
        {
            //Checks to see if the index is in the list
            if index <= size() { head?.insertAt(index: index, value: value) }
            //If the index is not in the list
            else { print("Invalid Index") }
        }
    }
    
    //Checks to see if the value is contained in the list
    func contains(value: Int) -> Bool { return head?.contains(value: value) ?? false }
    
    //Turns the linked list into a string
    func toString() -> String
    {
        //If the list is empty then return nothing
        if isEmpty() { return "" }
        //If the list is not empty turn the list into a string
        else { return head!.toString() }
    }
    
    //Checks to see if the list is empty
    func isEmpty() -> Bool { return head == nil ? true : false }
    
    //Returns the size of the array
    func size() -> Int { return head?.size() ?? 0 }
    
}

//Nodes for the linked list
class Node
{

    var next: Node?
    var data: Int
    
    //Initializes the data for the node
    init(data: Int) { self.data = data }
    
    //Method that returns if the next node is empty
    func nextIsEmpty() -> Bool { return self.next == nil ? true : false }
    
    //Method that adds to the list
    func add(value: Int)
    {
        //If the next node is nil then add the new node to next
        if nextIsEmpty() { self.next = Node(data: value) }
        //Else then recursively call the add method until the next node is nil
        else { self.next?.add(value: value) }
    }
    
    //Method that returns if a value is contained in the list
    func contains(value: Int) -> Bool
    {
        //If the data for the current node is equal to the value then return true
        if (self.data == value) { return true }
        //Else then if the next node is nil then return nil, if a next node exist then call the contains method on the next node
        else { return nextIsEmpty() ? false : (self.next?.contains(value: value))! }
    }
    
    //This method inserts a node at a specific index
    //This method works by counting down from the initial index until the index is 0
    //When the index is 0, then that is the value the node should be inserted into
    func insertAt(index: Int, value: Int)
    {
        //The index before the desired index
        let INDEX_BEFORE = 1
        //If the index is right before the desired index then swap
        if (index == INDEX_BEFORE)
        {
            //Swap if next is not empty
            if !nextIsEmpty()
            {
                let tempNode = self.next
                self.next = Node(data: value)
                self.next?.next = tempNode
            }
            //If next is empty then create a node for next
            else { self.next = Node(data: value) }
        }
        //If the index is not right before then call the insertAt method on the next node with a value of - 1
        else { self.next?.insertAt(index: index - 1, value: value) }
    }
    
    //Method that turns the linked list into a string
    func toString() -> String
    {
        //If the next node is empty then just return the data associated with the node
        if nextIsEmpty() { return "[\(self.data)]" }
        //Else then return the data associated with the node plus the dat associated with the next node by recursion
        else { return "[\(self.data)]" + self.next!.toString() }
    }
    
    //Returns the size of the linked list
    func size() -> Int
    {
        //If the next node is empty then return the count for the the node
        if nextIsEmpty() { return 1 }
        //If the next is not empty then return the count for this node and the next node recursively
        else { return 1 + (self.next?.size())! }
    }
    
}
