//this is under cocoa tpuch class LOL

import UIKit
import Foundation

class ResultViewController: UIViewController {
    @IBOutlet weak var bmiLabel: UILabel!
    var realBmi="0.0"
    var val:String = "0.0"
    var cal=calculatorBrain()
    @IBOutlet weak var backs: UIImageView!
    @IBOutlet weak var adviceLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()

        bmiLabel.text=(realBmi)
        
         val=cal.returnBMI()
        
        
        
        
            
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
//        self.performSegue(withIdentifier: "returnSegue", sender: self)
        dismiss(animated: true)
        
        
        // for performing segue
        
        
        
    }
    
    
    

}
