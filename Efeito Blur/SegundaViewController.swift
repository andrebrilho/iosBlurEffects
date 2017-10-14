//
//  SegundaViewController.swift
//  Efeito Blur
//
//  Created by André Brilho on 06/11/16.
//  Copyright © 2016 classroomM. All rights reserved.
//

import UIKit

class SegundaViewController: UIViewController {

    @IBOutlet weak var containerb: UIView!
    @IBOutlet weak var containera: UIView!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func segmentControll(sender: AnyObject) {
        
        if sender.selectedSegmentIndex == 0 {
        
            UIView.animateWithDuration(0.5, animations: {
                self.containera.alpha = 1
                self.containerb.alpha = 0
                }, completion: nil)
        
        } else {
        
            if sender.selectedSegmentIndex == 1 {
                
                UIView.animateWithDuration(0.5, animations: {
                    self.containera.alpha = 0
                    self.containerb.alpha = 1
                    }, completion: nil)
            
        }
        }
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
