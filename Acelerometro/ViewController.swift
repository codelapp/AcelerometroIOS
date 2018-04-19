import UIKit
import CoreMotion
class ViewController: UIViewController {
    
    var manager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        manager.accelerometerUpdateInterval = 0.2
        manager.startAccelerometerUpdates(to: OperationQueue.current!) { (datos, error) in
            if let registro = datos {
                if registro.acceleration.x > 1 {
                    self.view.backgroundColor = UIColor.green
                }else{
                    self.view.backgroundColor = UIColor.red
                }
            }
        }
        
    }
    


}










