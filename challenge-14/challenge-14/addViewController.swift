//
//  addViewController.swift
//  challenge-14
//
//  Created by 来思良 on 2017/12/1.
//  Copyright © 2017年 Yuzhou He. All rights reserved.
//

import UIKit

class addViewController: UIViewController,UITextViewDelegate {

    @IBOutlet weak var diawords: UITextView!

    @IBAction func saveDiary(_ sender: Any) {
        
        if (diawords.text.isEmpty) {
            let alert = UIAlertController( title: "enter something",message: " don't leave it blank", preferredStyle: .alert)
            alert.addAction(UIAlertAction(title: "Okay", style: .default) {
                action in
            })
            self.present(alert, animated: true, completion: nil)
        }
        else {
            
            let context = (UIApplication.shared.delegate as! AppDelegate).persistentContainer.viewContext
            let newtext = Name(context:context)
                newtext.name = diawords.text
            (UIApplication.shared.delegate as! AppDelegate).saveContext()
            
            dismiss(animated: true, completion: nil)
            //dismiss the view
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        diawords.delegate = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
