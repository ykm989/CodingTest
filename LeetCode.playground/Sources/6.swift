class Solution {
    func convert(_ s: String, _ numRows: Int) -> String {
        guard s.count > 2 else {return s}
        var zigzag = Array(repeating: [Int](), count: numRows)
        var answerList = Array(repeating: [String](), count: numRows)

        for i in 0..<numRows{
            if i == 0 || i == numRows - 1{
                zigzag[i].append(numRows * 2 - 2)
            } else {
                zigzag[i].append(numRows * 2 - 2 - (i * 2))
                zigzag[i].append(i * 2)
            }
        }

        print(zigzag)

        for (index, value) in zigzag.enumerated(){
            for i in value{
                
            }

        }


        return ""
    }
}

/*
 나 같은 경우에는 규칙을 찾았다. 위에 코드는 실패다.
 numRows * 2 - 2 하면서 배열당 [numRows * 2 - 2 - (i * 2), i * 2]만큼 증가시킨다.
 
 class Solution {
     func convert(_ s: String, _ numRows: Int) -> String {
         guard s.count > 1 && numRows > 1 else { return s }
         
         var lines = [[Character]](repeating: [], count: numRows)
         var idx = 0
         var flag = false
         
         for ch in s {
             lines[idx].append(ch)
             idx += flag ? -1 : 1
             guard idx == -1 || idx == numRows else { continue }
             idx += flag ? 2 : -2
             flag.toggle()
         }
         return lines.map { String($0) }.joined()
     }
 }
 
 이게 찾아본 답인데.
 zigzag 모양으로 증감하면서 따라간다.
 
 class Solution {
     func convert(_ s: String, _ numRows: Int) -> String {
         guard s.count > 1 && numRows > 1 else { return s }
         
         var lines = [[Character]](repeating: [], count: numRows)
         var idx = 0
         var flag = true

         for ch in s{
             lines[idx].append(ch)

             if idx % (numRows - 1) == 0{
                 flag.toggle()
             }
             idx += flag ? -1 : 1
         }

         return lines.map { String($0) }.joined()
     }
 }
 
 더 간결하게 수정했지만 시간은 더 걸린다.
 */
