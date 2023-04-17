import Foundation

public func solution(){
    print("Hello")
    let size = 7
    let mapString = """
                    
                    0110100
                    0110100
                    0110101
                    1110101
                    0000111
                    0100000
                    0111110
                    0111000
                    """
    
    let map = mapString.components(separatedBy: "\n").map{
        return $0.map{return $0.wholeNumberValue!}
    }
    
    
    func bfs(_ y: Int, _ x: Int, sum: Int) -> Int{
        map[y][x] = 2 // visit
        
        let dx = [1,-1,0,0]
        let dy = [0,0,1,-1]
        
        var idx = 0
        var cnt = 1
        graph[y][x] = 0
        
        
        
    }
}

// bfs로 문제 해결
