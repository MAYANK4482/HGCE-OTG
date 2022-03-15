//
//  videoViewController.swift
//  HGCE OTG
//
//  Created by Mayank Vadaliya on 25/06/19.
//  Copyright © 2019 Mayank Vadaliya. All rights reserved.
//

import UIKit

class videoViewController: BaseViewController {

    @IBOutlet weak var webs: UIWebView!
    override func viewDidLoad() {
        super.viewDidLoad()

             addSlideMenuButton()
        
        
        webs.loadRequest(URLRequest(url: URL(string: "https://www.youtube.com/results?search_query=hgce+college")!))
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
