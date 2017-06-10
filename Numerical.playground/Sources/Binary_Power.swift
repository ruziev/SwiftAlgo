
public func binPow(of number: Int, to power: Int) -> Int {
    var number = number
    var power = power
    var result = 1
    while power > 0 {
        if power & 1 == 1 {
            result *= number
        }
        number = number &* number // &* operator does modular multiplication, may cause overflow
        power >>= 1
    }
    return result
}
