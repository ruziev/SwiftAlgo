public func inverse(for n: Int, modulo m: Int) -> Int? {
    var gcd, x: Int
    let tmp = gcdex(a: n, b: m)
    gcd = tmp.0
    x = tmp.1
    return gcd == 1 ? (x % m + m) % m : nil
}
