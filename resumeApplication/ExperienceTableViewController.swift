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
     
    var Experience : [[Any]] = []
    var Works = [Work]()
    
    var Educations = [Education]()

    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        Works.append(Work (nameOfWork : "Work 1", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work 2", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work3", dateForWork : "2019-11-01") )
        
        //ÄNDRASAAA TIIILLLLLLLL EDUCA
        Works.append(Work (nameOfWork : "Work 1", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work 2", dateForWork : "2019-11-01") )
        Works.append(Work (nameOfWork : "Work3", dateForWork : "2019-11-01") )
        
        
        Experience = 
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int //NUMBER OF SECTIONS
    {
        return 2
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int //NUMBER OF ROWS
    {
        return 3
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell //DO THIS FOR EVERY CELL
    {
        let cell = tableView.dequeueReusableCell(withIdentifier: "workCell", for: indexPath) as! Work1TableViewCell

        if let work = Experience[indexPath.section][indexPath.row] as? Work
        {
            cell.nameOfWorkLabel.text = work.nameOfWork
            cell.dateForWorkLabel.text = work.dateForWork
        }
        
        if let education = Experience[indexPath.section][indexPath.row] as? Education
        {
            cell.nameOfWorkLabel.text = education.nameOfEducation
            cell.dateForWorkLabel.text = education.yearsOfEducation
        }
        
        
        
        // Configure the cell...

        return cell
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
    
    
    
    
    
    //MARK: Private Methods
     
    private func loadSampleMeals()
    {
        let photo1 = UIImage(named: "computer")
        
    }

}
