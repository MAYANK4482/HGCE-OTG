//
//  deparmentViewController.swift
//  hgcenew
//
//  Created by Mayank Vadaliya on 01/03/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit

class deparmentViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    

    var Name:NSArray=["COMPUTER ENGINEERING","INFORMATION TECHNOLOGY ENGINEERING","CIVIL ENGINEERING","ELECTRICAL ENGINEERING","ELECTRONICS AND COMMUNICATION","AUTOMOBILE ENGINEERING","MECHANICAL ENGINEERING"]
    var imageArray:NSArray = [UIImage(named: "com")!,UIImage(named: "IT")!,UIImage(named: "civil")!,UIImage(named: "elecri")!,UIImage(named: "ece_article")!,UIImage(named: "auto")!,UIImage(named: "mech")!]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        addSlideMenuButton()
        
        
        // Do any additional setup after loading the view.
    }
      func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return Name.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! departTableViewCell
        cell.lblname.text = Name[indexPath.row] as? String
        
        cell.imagedepart.image = imageArray[indexPath.row] as! UIImage
        //cell.imagedepart.image = imageArray[indexPath.row] as? UIImage
        return cell
    }
    
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        
        var number = indexPath.row
        
        let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "aboutdepartmentViewController") as! aboutdepartmentViewController
        tableVC.name = Name[indexPath.row] as! String
        self.navigationController?.pushViewController(tableVC, animated: true)
        
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
