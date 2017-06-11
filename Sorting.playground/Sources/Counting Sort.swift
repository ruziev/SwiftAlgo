public func countingSort(_ array: [Int], reverse: Bool = false) -> [Int] {
    if array.count == 0 {
        return []
    }
    
    let maxElement = array.max()!
    var countArray = [Int](repeating: 0, count: maxElement+1)
    
    for element in array {
        countArray[element] += 1
    }
    
    for index in 1...maxElement {
        countArray[index] += countArray[index-1]
    }
    
    var sortedArray = [Int](repeating: 0, count: array.count)
    for element in array {
        countArray[element] -= 1
        sortedArray[countArray[element]] = element
    }
    
    return reverse ? sortedArray.reversed() : sortedArray
}
