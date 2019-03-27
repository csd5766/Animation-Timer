//
//  ViewController.swift
//  ImageView Animation Timer01
//
//  Created by D7702_09 on 2019. 3. 27..
//  Copyright © 2019년 pgh. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var aiview: UIImageView!
    var count = 1
   // var isAnimation = false
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        aiview.image = UIImage(named: "Image1")
        
        
    }

    @IBAction func playBtn(_ sender: Any) {
         //타이머 호출
        myTimer = Timer.scheduledTimer(timeInterval: 0.1, target: self, selector: #selector(doAnymation), userInfo: nil, repeats: true)
    
      
        
    }
    
    @IBAction func pauseBtn(_ sender: Any) {
    myTimer.invalidate()
    }
    
    @IBAction func stopBtn(_ sender: Any) {
        myTimer.invalidate()
    }
    @objc func doAnymation(){
    if (count == 5) {
       count=1
    }
    else {
    count+=1
    }
    aiview.image = UIImage(named: "Image\(count)")
         countLabel.text = String(count)
    }
    
    

}

