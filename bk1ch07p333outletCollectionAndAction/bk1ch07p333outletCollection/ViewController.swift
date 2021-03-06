

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var coolviews : [UIView]!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        for (ix,b) in (self.coolviews as! [UIButton]).enumerate() {
            b.setTitle("B\(ix+1)", forState: .Normal)
        }
    }
    
    @IBAction func buttonPressed(sender:AnyObject) {
        let alert = UIAlertController(
            title: "Howdy!", message: "You tapped me!", preferredStyle: .Alert)
        alert.addAction(
            UIAlertAction(title: "OK", style: .Cancel, handler: nil))
        self.presentViewController(alert, animated: true, completion: nil)
    }



}

