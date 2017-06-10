import Foundation

public func eratosthenesSieve(upTo n: Int) -> [Bool] {
    var prime: [Bool] = []
    for _ in 0...n {
        prime.append(true)
    }
    prime[0] = false
    prime[1] = false
    let sqrtN: Int = Int(sqrt(Double(n)))
    for i in 2...sqrtN {
        if prime[i] {
            for j in stride(from: i*i, through: n, by: i) {
                prime[j] = false
            }
        }
    }
    return prime
}
