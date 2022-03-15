//
//  websiteViewController.swift
//  HGCE OTG
//
//  Created by Mayank Vadaliya on 25/06/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit

class websiteViewController: BaseViewController {

    @IBOutlet weak var web: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

             addSlideMenuButton()
        
        web.loadRequest(URLRequest(url: URL(string: "https://www.hgce.org/index.html")!))
        // Do any additional setup after loading the view.
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
