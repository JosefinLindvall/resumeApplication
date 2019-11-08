//
//  ExperienceTableViewController.swift
//  resumeApplication
//
//  Created by Josefin Lindvall on 2019-10-31.
//  Copyright © 2019 JosefinLindvall. All rights reserved.
//

import UIKit

class ExperienceTableViewController: UITableViewController
{
    
    //MARK: Properties
     
    var Experience : [[Any]] = [] // 2d array containing 2 elements, an array with Work objects and an array with Education objects
    
    var Works = [Work]()
    var Educations = [Education]()
    var headersForSections = [String]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        
        Works.append(Work (nameOfWork : "Work 1", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work 2", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work3", dateForWork : "2019-11-01") )
        
        
        Educations.append(Education (nameOfEducation: "Software development", yearsOfEducation : "Completed years: 1 of 3") )
       
        headersForSections.append("Work")
        headersForSections.append("Education")
        
        Experience = [Works, Educations]
        
        self.navigationItem.title = "Experience"
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int // Returns number of sections, i.e. number of elements in the array Experience
    {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int // Returns number of rows, i.e. number of elements in the arrays that are elements of the array Experience
    {
        return Experience[section].count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell // Gets one cell
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workCell", for: indexPath) as! Work1TableViewCell

        if let work = Experience[indexPath.section][indexPath.row] as? Work
         
        {
            cell.nameOfWorkLabel.text = work.nameOfWork
            cell.dateForWorkLabel.text = work.dateForWork
            cell.imageOfWork.image = UIImage(systemName: work.imageForWork)
        }
        
        if let education = Experience[indexPath.section][indexPath.row] as? Education
        {
            cell.nameOfWorkLabel.text = education.nameOfEducation
            cell.dateForWorkLabel.text = education.yearsOfEducation
            cell.imageOfWork.image = UIImage(systemName: education.imageForEducation)
        }
        
        
        
        // Configure the cell...

        return cell
    }
    
    
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?
    {
        return headersForSections[section]
    }
    
    
//    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
//    {
//        performSegue(withIdentifier: "segueToExperienceDetailViewController", sender: indexPath)
//
//    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        performSegue(withIdentifier: "segueToExperienceDetailViewController", sender: indexPath)
    }
    
  
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        
       if segue.identifier == "segueToExperienceDetailViewController" ,
          let segueTo =  segue.destination as? ExperienceDetailViewController ,
          let index = sender as? IndexPath
       {
          // perform custom segue operation:
        
            if let work = Experience[index.section][index.row] as? Work
            {
                segueTo.work = work
                
            }
            
            if let education = Experience[index.section][index.row] as? Education
            {
                segueTo.education = education
            }
        
        }
    }
    
    
    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    
    
    
    
   

}


/*let selectedCell = tableView.dequeueReusableCell(withIdentifier: "workCell", for: indexPath) as! Work1TableViewCell

if let work = Experience[indexPath.section][indexPath.row] as? Work
 
{
    selectedCell.nameOfWorkLabel.text = work.nameOfWork
    selectedCell.dateForWorkLabel.text = work.dateForWork
    selectedCell.imageOfWork.image = UIImage(systemName: work.imageForWork)
}

if let education = Experience[indexPath.section][indexPath.row] as? Education
{
    selectedCell.nameOfWorkLabel.text = education.nameOfEducation
    selectedCell.dateForWorkLabel.text = education.yearsOfEducation
    selectedCell.imageOfWork.image = UIImage(systemName: education.imageForEducation)
}


// access cell with Experience[indexPath.section][indexPath.row]
let vc = storyboard?.instantiateViewController(withIdentifier : "ExperienceDetailViewController") as? ExperienceDetailViewController
vc?.navigationBarTitle.title = selectedCell.nameOfWorkLabel.text //?????
vc?.image = selectedCell.imageOfWork
vc?.boldTitle = selectedCell.nameOfWorkLabel
self.navigationController?.pushViewController(vc!, animated: true)

 */
