//
//  PreziVC.swift
//  OTP Avanzado
//
//  Created by Miguel on 6/5/16.
//  Copyright © 2016 Miguel Pérez Prado. All rights reserved.
//

import UIKit

class PreziVC: UIViewController {
    
    @IBOutlet weak var vistaweb: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL (string: "http://prezi.com/duw21xybpw-5/?utm_campaign=share&utm_medium=copy&rc=ex0share")
        let requestObj = NSURLRequest(URL: url!);
        
        vistaweb.loadRequest(requestObj)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
}
