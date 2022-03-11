//
//  ViewController.swift
//  instagram
//
//  Created by Warren Kim on 3/10/22.
//

import UIKit
import Parse

class ViewController: UIViewController {

    func testParseConnection(){
            let myObj = PFObject(className:"FirstClass")
            myObj["message"] = "Hey ! First message from Swift. Parse is now connected"
            myObj.saveInBackground { (success, error) in
                if(success){
                    print("You are connected!")
                }else{
                    print("An error has occurred!")
                }
            }
        }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        testParseConnection()
    }


}

