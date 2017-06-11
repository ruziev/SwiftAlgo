public func inverse(for n: Int, modulo m: Int) -> Int? {
    var gcd, x: Int
    let tmp = gcdex(a: n, b: m)
    gcd = tmp.0
    x = tmp.1
    if gcd != 1 {
        return nil
    } else {
        x = (x % m + m) % m
        return x
    }
}
