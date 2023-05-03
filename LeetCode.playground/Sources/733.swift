// 733. Flood Fill
// 2023.05.04
// https://leetcode.com/problems/flood-fill/description/?envType=study-plan&id=level-1
// Time Out 01:00:00

class Solution {
    func floodFill(_ image: [[Int]], _ sr: Int, _ sc: Int, _ color: Int) -> [[Int]] {
        if image[sr][sc] == color {
            return image
        }
        var currentImage = image
        fill(&currentImage, sr, sc, image[sr][sc], color)
        return currentImage
    }

    private func fill(_ image: inout [[Int]], _ sr: Int, _ sc: Int, _ color: Int, _ newColor: Int) -> Void {
        if sr < 0 || sc < 0 || sr >= image.count || sc >= image[0].count || image[sr][sc] != color {
            return
        }
        image[sr][sc] = newColor
        fill(&image, sr - 1, sc, color, newColor)
        fill(&image, sr + 1, sc, color, newColor)
        fill(&image, sr, sc - 1, color, newColor)
        fill(&image, sr, sc + 1, color, newColor)
    }
}

/*
 다른 사람들의 풀이
 나 같은 경우에는 특정 좌표에서 그 좌우로 또 색칠하는 문제가 발생
 그래서 Time Limmet에 걸려버렸다.
 이 사람 같은 경우에는 색 비교문도 넣어서 그걸 방지했다.
 다음에 다시 풀어봐야 겠다.
 */
