
import Foundation

struct MixedNumber {
    var whole: Int = 0
    var numerator: Int
    var denominator: Int {
        didSet  {
            if self.denominator == 0 {
                self.denominator = 1
            }
        }
    }
    
    // convert a b/c into ((a*c)+b)/c
    func improperFraction() -> ImproperFraction  {
        let fraction = ImproperFraction(
            numerator: ((self.whole * self.denominator) + self.numerator),
            denominator: self.denominator
        )
        return fraction
    }
    
}
