import Foundation

//Greatest common divisor
func gcd(numerator: Int, denominator: Int) -> Int {
    var a = 0
    var b = max(numerator, denominator)
    var r = min(numerator, denominator)
    
    while r != 0 {
        a = b
        b = r
        r = a % b
    }
    return b
}

//Reduce the fraction
func reduced(numerator: Int, denominator: Int) -> ImproperFraction {
    let factor = gcd(numerator: numerator, denominator: denominator)
    return ImproperFraction(numerator: numerator / factor, denominator: denominator / factor)
    
}

//Addition
func addition(first: ImproperFraction, second: ImproperFraction) -> ImproperFraction {
    // Formula: a/b + c/d = (ad + bc) / bd
    let simplifiedNumerator = ((first.numerator * second.denominator) + (first.denominator * second.numerator))
    let simplifiedDenominator = (first.denominator * second.denominator)
    return reduced(numerator: simplifiedNumerator, denominator: simplifiedDenominator)
}

//Subtraction
func subtract(first: ImproperFraction, second: ImproperFraction) -> ImproperFraction {
    //Formula: a/b - c/d = (ad - bc) / bd
    let simplifiedNumerator = ((first.numerator * second.denominator) - (first.denominator * second.numerator))
    let simplifiedDenominator = (first.denominator * second.denominator)
    return reduced(numerator: simplifiedNumerator, denominator: simplifiedDenominator)
}

//Multiplication
func multiplication(first: ImproperFraction, second: ImproperFraction) -> ImproperFraction {
    //Formula: a/b * c/d = ac / bd
    let simplifiedNumerator = (first.numerator * second.numerator)
    let simplifiedDenominator = (first.denominator * second.denominator)
    return reduced(numerator: simplifiedNumerator, denominator: simplifiedDenominator)
}

//Division
func division(first: ImproperFraction, second: ImproperFraction) -> ImproperFraction {
    //Formula: a/b ÷ c/d = ad / bc
    let simplifiedNumerator = (first.numerator * second.denominator)
    let simplifiedDenominator = (first.denominator * second.numerator)
    return reduced(numerator: simplifiedNumerator, denominator: simplifiedDenominator)
}
