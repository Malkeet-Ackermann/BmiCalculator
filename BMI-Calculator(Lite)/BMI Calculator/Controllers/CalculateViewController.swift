import UIKit

class CalculateViewController: UIViewController {
    
    
    @IBOutlet weak var heightLabel: UILabel!
    
    
    var calc=calculatorBrain()
    
    
    
    @IBOutlet weak var weightLabel: UILabel!
    
    
    @IBOutlet weak var heightVal: UISlider!
    
    @IBOutlet weak var weightVal: UISlider!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func heightSlider(_ sender: UISlider) {
        let value=String( round(10*sender.value)/10)
        heightLabel.text=value+"m"
        
        
        
        
    }
    
    
    @IBAction func weightSlider(_ sender: UISlider) {
        let value=String( Int(sender.value))
        weightLabel.text=value+"kg"
        
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        
        
        calc.calculate(height: heightVal.value, weight: weightVal.value)
        
        self.performSegue(withIdentifier: "coolSegue", sender: self)
        
        
    }
    // what to do when segue is performed !
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if( segue.identifier=="coolSegue")
        {
            let des=segue.destination as! ResultViewController
            let val=calc.returnBMI()
            des.realBmi=(val)
            if(Float(val)! < 18.5){
                des.view.backgroundColor = .green
            }
            else if(Float(val)! < 24.9 && Float(val)! > 18.5){
                des.view.backgroundColor = .systemPink
            }
            else {
                des.view.backgroundColor = .red
            }
            
            
            des.adviceLabel.text=calc.advice(BMI: val)
            
            
            
            
            
        }
        
        
        
    }
}

