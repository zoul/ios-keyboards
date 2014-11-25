import UIKit

class DataViewController: UIViewController {

    @IBOutlet weak var dataLabel: UILabel!
    @IBOutlet weak var textField: UITextField!

    var keyboardType: UIKeyboardType = UIKeyboardType.Default

    override func viewDidLoad() {
        super.viewDidLoad()
        textField.hidden = true
    }

    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        textField.keyboardType = keyboardType
        textField.autocorrectionType = .No
        dataLabel!.text = keyboardTypeDescription(keyboardType)
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        dispatch_async(dispatch_get_main_queue()) {
            self.textField.becomeFirstResponder()
            return
        }
    }
    
    override func viewWillDisappear(animated: Bool) {
        super.viewWillDisappear(animated)
        textField.resignFirstResponder()
    }
    
    private func keyboardTypeDescription(type: UIKeyboardType) -> String {
        var names: [UIKeyboardType:String] = [
            .Default               : "Default",
            .ASCIICapable          : "ASCIICapable",
            .EmailAddress          : "EmailAddress",
            .NamePhonePad          : "NamePhonePad",
            .NumberPad             : "NumberPad",
            .DecimalPad            : "DecimalPad",
            .NumbersAndPunctuation : "NumbersAndPunctuation",
            .PhonePad              : "PhonePad",
            .Twitter               : "Twitter",
            .WebSearch             : "WebSearch",
            .URL                   : "URL",
        ]
        return names[type] ?? "Unknown"
    }
}

