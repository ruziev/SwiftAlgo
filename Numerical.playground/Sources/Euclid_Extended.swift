import Foundation

public func gcdex(a: Int, b: Int) -> (Int, Int, Int) {
    // returns tuple (gcd, x, y)
    if a == 0 {
        return (b, 0, 1)
    }
    var x1, y1, gcd, x, y: Int
    let tmp = gcdex(a: b%a, b: a)
    gcd = tmp.0
    x1 = tmp.1
    y1 = tmp.2
    x = y1 - (b/a) * x1
    y = x1
    return (gcd, x, y)
}
