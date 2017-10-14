//
//  ViewController.swift
//  Efeito Blur
//
//  Created by André Brilho on 06/11/16.
//  Copyright © 2016 classroomM. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var addItemView: UIView!
    
    @IBOutlet weak var visualEffectView: UIVisualEffectView!
    
    @IBOutlet weak var AddItem: UIBarButtonItem!
    
    var effect:UIVisualEffect!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        effect = visualEffectView.effect
        visualEffectView.effect = nil
        addItemView.layer.cornerRadius = 5
        
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func animateIn(){
    
        self.view.addSubview(addItemView)
        addItemView.center = self.view.center
        
        addItemView.transform = CGAffineTransform.init(glScalef(1.3, 1.3, 0))
        addItemView.alpha = 0
        
        UIView.animateWithDuration(0.4) { 
            self.visualEffectView.effect = self.effect
            self.addItemView.alpha = 1
            self.addItemView.transform = CGAffineTransformIdentity
        }
    
    }

    
    func animateOut(){
    UIView.animateWithDuration(0.3, animations: {
        self.addItemView.transform = CGAffineTransform.init(glScalef(1.3, 1.3, 0))
        self.addItemView.alpha = 0
        self.visualEffectView.effect = nil
    }) { (sucess:Bool) in
            self.addItemView.removeFromSuperview()
        }
    
    }

    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btnAdd(sender: AnyObject) {
        
        animateIn()
        
    }

    @IBAction func sairBtn(sender: AnyObject) {
        
        animateOut()
        
    }
}

