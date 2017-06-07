public func mergeSort<T: Comparable>(_ array: [T], by comparator: (T,T)->Bool = {$0 < $1}) -> [T] {
    if array.count == 1 {
        return array
    }
    let midIndex = array.count / 2
    var leftPiece = Array(array[0..<midIndex])
    var rightPiece = Array(array[midIndex..<array.count])
    leftPiece = mergeSort(leftPiece, by: comparator)
    rightPiece = mergeSort(rightPiece, by: comparator)
    
    var newArray: [T] = []
    
    var leftPieceIndex = 0, rightPieceIndex = 0
    while leftPieceIndex < leftPiece.count || rightPieceIndex < rightPiece.count {
        if leftPieceIndex == leftPiece.count {
            newArray.append(contentsOf: rightPiece[rightPieceIndex..<rightPiece.count])
            break
        }
        if rightPieceIndex == rightPiece.count {
            newArray.append(contentsOf: leftPiece[leftPieceIndex..<leftPiece.count])
            break
        }
        if comparator(leftPiece[leftPieceIndex], rightPiece[rightPieceIndex]) {
            newArray.append(leftPiece[leftPieceIndex])
            leftPieceIndex += 1
        } else {
            newArray.append(rightPiece[rightPieceIndex])
            rightPieceIndex += 1
        }
    }
    
    return newArray
}
