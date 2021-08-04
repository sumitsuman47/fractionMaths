
import Foundation

struct ImproperFraction {
    var numerator: Int
    var denominator: Int
    
    // convert into a b/c from ((a*c)+b)/c
    func creatMixNumber() -> MixedNumber {
        let whole = numerator / denominator
        let num = whole != 0 ? abs(numerator % denominator) : (numerator % denominator)
        print("\n  MIXED NUMBER = \(whole) \(num)/\(denominator) \n" )
        return MixedNumber(whole: whole, numerator: num, denominator: denominator)
    }
}
