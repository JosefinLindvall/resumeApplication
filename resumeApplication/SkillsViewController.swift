//
//  SkillsViewController.swift
//  resumeApplication
//
//  Created by Josefin Lindvall on 2019-11-05.
//  Copyright © 2019 JosefinLindvall. All rights reserved.
//

import UIKit

class SkillsViewController: UIViewController
{

    @IBOutlet weak var dismissButton: UIButton!
    
    @IBOutlet weak var viewToBeAnimated: UIView!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        

        // Do any additional setup after loading the view.
    }
    
    override func viewDidAppear(_ animated: Bool)
    {
        UIView.animate(withDuration: 5, animations:
        {
            self.viewToBeAnimated.backgroundColor = UIColor.green
        }, completion: nil)
    }
    
    
    
    @IBAction func dismissAction (_sender : Any)
    {
        dismiss( animated : true, completion : nil)
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
