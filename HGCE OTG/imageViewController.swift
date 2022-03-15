//
//  imageViewController.swift
//  HGCE OTG
//
//  Created by Mayank Vadaliya on 26/06/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit
import AlamofireImage
import Alamofire
import SwiftyJSON
import SVProgressHUD

class imageViewController: BaseViewController,UICollectionViewDataSource,UICollectionViewDelegate {
    
     var arrRes = [[String:AnyObject]]()

    @IBOutlet weak var coo: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
 SVProgressHUD.show(withStatus: "Loading...")
        addSlideMenuButton()
        
       
        
        Alamofire.request("https://superambitious-comp.000webhostapp.com/Hgce/galleryoutput.php").responseJSON { (responseData) -> Void in
            print(responseData)
            if((responseData.result.value) != nil) {
                let swiftyJsonVar = JSON(responseData.result.value!)
                
                if let resData = swiftyJsonVar["response"].arrayObject {
                    self.arrRes = resData as! [[String:AnyObject]]
                }
                if self.arrRes.count > 0 {
                    self.coo.reloadData()
                }
            }
            else
            {
                
                
            }
            
            
            
            
        }
        // Do any additional setup after loading the view.
        SVProgressHUD.dismiss()
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrRes.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coo.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        
        var dict = arrRes[(indexPath as NSIndexPath).row]
       
        
Alamofire.request("https://superambitious-comp.000webhostapp.com/Hgce/images/\(dict["gallery_img"] as! String)").responseImage { response in
            debugPrint(response)
            
            if let image = response.result.value {
                cell.img.image = image
            }
        }
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
