//
//  messageViewController.swift
//  HGCE OTG
//
//  Created by Mayank Vadaliya on 26/06/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON
import SVProgressHUD

class messageViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
  
    
   
    var arrRes = [[String:AnyObject]]()

    @IBOutlet weak var table: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()

        
         SVProgressHUD.show(withStatus: "Loading...")
             addSlideMenuButton()
        
        Alamofire.request("https://superambitious-comp.000webhostapp.com/Hgce/stunotoutput.php").responseJSON { (responseData) -> Void in
            print(responseData)
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                if let resData = swiftyJsonVar["response"].arrayObject {
                    self.arrRes = resData as! [[String:AnyObject]]
                }
                if self.arrRes.count > 0
                {
                   self.table.reloadData()
                }
            }
            else
            {
                
                print("error")
                
            }
        // Do any additional setup after loading the view.
            SVProgressHUD.dismiss()
    }
    }
    
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return arrRes.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as! messageTableViewCell
            
            
            var dict = arrRes[(indexPath as NSIndexPath).row]
            cell.lbllablr?.text = dict["noti"] as? String
            
            
            return cell
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
