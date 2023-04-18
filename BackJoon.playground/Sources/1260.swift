import Foundation

public func solution1260(){
    let graphInfo = readLine()!.split(separator: " ").map{Int($0)!}
    let vertices = graphInfo[0]
    let edge = graphInfo[1]
    let root = graphInfo[2]

    var graph = [Int:[Int]]()
    var dfsResult = [Int]()
    var bfsResult : [Int] = [root]

    for _ in 0..<edge{
        let edgeInfo = readLine()!.split(separator: " ").map{Int($0)!}
        
        if graph[edgeInfo[0]] == nil {
            graph[edgeInfo[0]] = [edgeInfo[1]]
        } else {
            if !graph[edgeInfo[0]]!.contains(edgeInfo[1]){
                graph[edgeInfo[0]]!.append(edgeInfo[1])
            }
        }
        
        if graph[edgeInfo[1]] == nil{
            graph[edgeInfo[1]] = [edgeInfo[0]]
        } else {
            if !graph[edgeInfo[1]]!.contains(edgeInfo[0]){
                graph[edgeInfo[1]]!.append(edgeInfo[0])
            }
        }
    }

    dfs(root)
    print(dfsResult.map{String($0)}.joined(separator: " "))


    bfs(root)
    print(bfsResult.map{String($0)}.joined(separator: " "))

    func dfs(_ root: Int){
        dfsResult.append(root)
        
        for i in graph[root]!.sorted(){
            if !dfsResult.contains(i){
                dfs(i)
            }
            
        }
    }

    func bfs(_ root: Int){
        var visitNeed = graph[root]!.sorted()
        
        while !visitNeed.isEmpty{
            let item = visitNeed.removeFirst()
            
            if !bfsResult.contains(item){
                visitNeed.append(contentsOf: graph[item]!.sorted())
                bfsResult.append(item)
            }

        }
        
        
    }

}
