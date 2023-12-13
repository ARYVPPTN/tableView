//
//  TableViewController.swift
//  tableView
//
//  Created by Alvar Yussupov on 02/12/23.
//

import UIKit

class TableViewController: UITableViewController {
    

    
    //let array = [1, 2, 3, 4, 5]
    //var arrayNames = ["Ted", "Barney", "Lily", "Marshall"]
    //var arraySurname = ["Mosby", "Stinson", "Bob", "Tom"]
    //var arrayImage = ["cat1", "idk", "idk2", "idk3"]
    
    var arrayPersons = [Person(name: "Ted", surname: "Mosby", imagename: "cat1"),
                        Person(name: "Barney", surname: "Stinson", imagename: "idk"),
                        Person(name: "Lily", surname: "Bob", imagename: "idk2"),
                        Person(name: "Marshall", surname: "Tom", imagename: "idk3")]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    
    @IBAction func addPerson(_ sender: Any) {
        //arrayNames.append("new name")
        //arraySurname.append("new surname")
        //arrayImage.append("cat1")
        
        arrayPersons.append(Person(name: "Ted", surname: "Mosby", imagename: "cat1"))
        tableView.reloadData()
    }
    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPersons.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)

        // Configure the cell...
        let label = cell.viewWithTag(1000) as! UILabel
        label.text = arrayPersons[indexPath.row].name
        
        let labelSurname = cell.viewWithTag(1001 ) as! UILabel
        label.text = arrayPersons[indexPath.row].surname
        
        let imageView = cell.viewWithTag(1002) as! UIImageView
        imageView.image = UIImage(named: arrayPersons[indexPath.row].imagename)
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) ->  CGFloat {
        return 89
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVc = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        //detailVc.labelName.text = ""
        detailVc.name = arrayPersons[indexPath.row].name
        detailVc.surname = arrayPersons[indexPath.row].surname
        detailVc.imagename = arrayPersons[indexPath.row].imagename
        
        navigationController?.show(detailVc, sender: self)
    }

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */


    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
           // arrayPersons.remove(at: indexPath.row)
            //arrayPersons.remove(at: indexPath.row)
        //arrayPersons.remove(at: indexPath.row)
            arrayPersons.remove(at: indexPath.row)
            
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
   

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
