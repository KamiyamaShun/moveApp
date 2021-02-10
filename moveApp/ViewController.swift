//
//  ViewController.swift
//  moveApp
//
//  Created by 神山駿 on 2021/02/10.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func plus(_ sender: Any) {
        count += 1
        label.text = String(count)
        
        if count == 10 {
//            count = 0
//            performSegue(withIdentifier: "next", sender: nil)
            let nextVC = storyboard?.instantiateViewController(identifier: "next") as! NextViewController
            
            nextVC.count2 = count
            
            navigationController?.pushViewController(nextVC, animated: true)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let nextVC = segue.destination as! NextViewController
        
        nextVC.count2 = count
      
        
    }
    
}

