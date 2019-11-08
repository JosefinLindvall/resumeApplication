//
//  ExperienceDetailViewController.swift
//  resumeApplication
//
//  Created by Josefin Lindvall on 2019-11-02.
//  Copyright © 2019 JosefinLindvall. All rights reserved.
//

import UIKit

class ExperienceDetailViewController: UIViewController
{

    var work : Work?
    var education : Education?
    
    @IBOutlet weak var navigationBarTitle: UINavigationItem!
    
    @IBOutlet weak var image: UIImageView!
    
    @IBOutlet weak var boldTitle: UILabel!
    
    @IBOutlet weak var greySubtitle: UILabel!
    
    @IBOutlet weak var descriptionText: UILabel!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
 
        if work != nil
        {
            
            navigationBarTitle.title = work?.nameOfWork
            boldTitle.text = work?.nameOfWork
            greySubtitle.text = work?.dateForWork
            image.image = UIImage(systemName: work!.imageForWork)
        }
        
        
        if education != nil
        {
            navigationBarTitle.title = education?.nameOfEducation
            boldTitle.text = education?.nameOfEducation
            greySubtitle.text = education?.yearsOfEducation
            image.image = UIImage(systemName: education!.imageForEducation)
            
        }
       
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
