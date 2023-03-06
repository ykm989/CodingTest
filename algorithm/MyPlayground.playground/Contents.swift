struct Stack<T>{
    private var stack: [T] = []
    
    public var count: Int{
        return stack.count
    }
    
    public var isEmpty: Bool{
        return stack.isEmpty
    }
    
    public func top() -> T?{
        return stack.last
    }
    
    public mutating func push(_ element: T){
        stack.append(element)
    }
    
    public mutating func pop() -> T?{
        return stack.popLast()
    }
}

struct Queue<T>{
    private var queue: [T] = []
    
    public var count: Int{
        return queue.count
    }
    
    public var isEmpty: Bool{
        return queue.isEmpty
    }
    
    public func head() -> T?{
        return queue.first
    }
    
    public func tail() -> T?{
        return queue.last
    }
    
    
}
