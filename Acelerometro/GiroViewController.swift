import UIKit
import CoreMotion
class GiroViewController: UIViewController {
    
    var manager = CMMotionManager()

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        manager.gyroUpdateInterval = 0.2
        
        manager.startGyroUpdates(to: OperationQueue.current!) { (datos, error) in
            if let registro = datos {
                if registro.rotationRate.x > 3 {
                    self.view.backgroundColor = UIColor.blue
                }else{
                    self.view.backgroundColor = UIColor.brown
                }
            }
        }
    }
    


}
