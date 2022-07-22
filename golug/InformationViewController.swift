//
//  InformationViewController.swift
//  golug
//
//  Created by Shiv on 02/07/22.
//

import UIKit

class InformationViewController: UIViewController {
    
    @IBOutlet weak var img: UIImageView!
    
    @IBOutlet weak var lbl1: UILabel!
    
    @IBOutlet weak var lbl2: UILabel!
    
    
   var strlbl1:String!
   var strlbl2:String!
   var strimg:UIImage!
    

    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    
    

    lbl1.text = strlbl1
    lbl2.text = strlbl2
    img.image = strimg
}
    
    
    @IBAction func Btn(_ sender: Any) {
        self.navigationController?.popViewController(animated: true)
        
    }
}
