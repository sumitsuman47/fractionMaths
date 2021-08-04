import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var firstWholeTextField: UITextField!
    @IBOutlet weak var firstNumeratorTextField: UITextField!
    @IBOutlet weak var firstDenominatorTextField: UITextField!
    @IBOutlet weak var secondWholeTextField: UITextField!
    @IBOutlet weak var secondNumeratorTextField: UITextField!
    @IBOutlet weak var secondDenominatorTextField: UITextField!
    
    @IBOutlet weak var resultWholeTextField: UITextField!
    @IBOutlet weak var resultNumeratorTextField: UITextField!
    @IBOutlet weak var resultDenominatorTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func addButtonClick(_ sender: Any) {
        let result = addition(first: getFIrstNumber(), second: getSecondNumber())
        fillResults(number: result)
        view.endEditing(true)
    }
    
    @IBAction func substractButtonClick(_ sender: Any) {
        let result = subtract(first: getFIrstNumber(), second: getSecondNumber())
        fillResults(number: result)
        view.endEditing(true)
    }
    
    @IBAction func multiplyButtonClick(_ sender: Any) {
        let result = multiplication(first: getFIrstNumber(), second: getSecondNumber())
        fillResults(number: result)
        view.endEditing(true)
    }
    
    @IBAction func divideButtonClick(_ sender: Any) {
        let result = division(first: getFIrstNumber(), second: getSecondNumber())
        fillResults(number: result)
        view.endEditing(true)
    }
    
}

extension ViewController {
    func getFIrstNumber() -> ImproperFraction {
        let firstMixedNumber = MixedNumber(whole: Int(firstWholeTextField.text ?? "0") ?? 0, numerator: Int( firstNumeratorTextField.text ?? "0") ?? 0, denominator: Int( firstDenominatorTextField.text ?? "1") ?? 1)
        
        return firstMixedNumber.improperFraction()
    }
    
    func getSecondNumber() -> ImproperFraction {
        let secondMixedNumber = MixedNumber(whole: Int(secondWholeTextField.text ?? "0") ?? 0, numerator: Int(secondNumeratorTextField.text ?? "0") ?? 0, denominator: Int( secondDenominatorTextField.text ?? "1") ?? 1)
        return secondMixedNumber.improperFraction()
    }
    
    func fillResults(number: ImproperFraction) {
        let mixnumber = ImproperFraction.creatMixNumber(number)
        resultWholeTextField.text = "\(mixnumber().whole)"
        resultNumeratorTextField.text = "\(mixnumber().numerator)"
        resultDenominatorTextField.text = "\(mixnumber().denominator)"
    }
    
}

