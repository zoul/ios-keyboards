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
    
    func keyboardTypeDescription(type: UIKeyboardType) -> String {
        var names: [UIKeyboardType:String] = [
            .Default               : "UIKeyboardType.Default",
            .ASCIICapable          : "UIKeyboardType.ASCIICapable",
            .EmailAddress          : "UIKeyboardType.EmailAddress",
            .NamePhonePad          : "UIKeyboardType.NamePhonePad",
            .NumberPad             : "UIKeyboardType.NumberPad",
            .DecimalPad            : "UIKeyboardType.DecimalPad",
            .NumbersAndPunctuation : "UIKeyboardType.NumbersAndPunctuation",
            .PhonePad              : "UIKeyboardType.PhonePad",
            .Twitter               : "UIKeyboardType.Twitter",
            .WebSearch             : "UIKeyboardType.WebSearch",
            .URL                   : "UIKeyboardType.URL",
        ]
        return names[type] ?? "Unknown"
    }
}

