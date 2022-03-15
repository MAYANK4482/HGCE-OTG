//
//  BaseViewController.swift
//  AKSwiftSlideMenu
//
//  Created by Ashish on 21/09/15.
//  Copyright (c) 2015 Kode. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController, SlideMenuDelegate {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func slideMenuItemSelectedAtIndex(_ index: Int32) {
        let topViewController : UIViewController = self.navigationController!.topViewController!
        print("View Controller is : \(topViewController) \n", terminator: "")
        switch(index) {
            case 0:
           
                let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "ViewController") as! ViewController   
                
                self.navigationController?.pushViewController(tableVC, animated: true)
            case 1:
                
                let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "AboutcollegeViewController") as! AboutcollegeViewController
                
                self.navigationController?.pushViewController(tableVC, animated: true)

            case 2:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "deparmentViewController") as! deparmentViewController   
            self.navigationController?.pushViewController(tableVC, animated: true)
            case 3:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "libViewController") as! libViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
            case 4:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "canViewController") as! canViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
            case 5:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "hosViewController") as! hosViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
            case 6:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "conViewController") as! conViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
        case 7:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "websiteViewController") as! websiteViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
        case 8:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "videoViewController") as! videoViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
        case 9:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "messageViewController") as! messageViewController
            self.navigationController?.pushViewController(tableVC, animated: true)
        case 10:
            let tableVC = self.storyboard?.instantiateViewController(withIdentifier: "imageViewController") as! imageViewController
            self.navigationController?.pushViewController(tableVC, animated: true)

       default:
            break;
            }
            
    }
    
    func openViewControllerBasedOnIdentifier(_ strIdentifier:String){
        let destViewController : UIViewController = self.storyboard!.instantiateViewController(withIdentifier: strIdentifier)
        
        let topViewController : UIViewController = self.navigationController!.topViewController!
        
        if (topViewController.restorationIdentifier! == destViewController.restorationIdentifier!){
            print("Same VC")
        } else {
            self.navigationController!.pushViewController(destViewController, animated: true)
        }
    }
    
    func addSlideMenuButton(){
        let btnShowMenu = UIButton(type: UIButton.ButtonType.system)
        btnShowMenu.setImage(self.defaultMenuImage(), for: UIControl.State())
        btnShowMenu.frame = CGRect(x: 0, y: 0, width: 30, height: 30)
        btnShowMenu.addTarget(self, action: #selector(BaseViewController.onSlideMenuButtonPressed(_:)), for: UIControl.Event.touchUpInside)
        let customBarItem = UIBarButtonItem(customView: btnShowMenu)
        self.navigationItem.leftBarButtonItem = customBarItem;
    }

    func defaultMenuImage() -> UIImage {
        var defaultMenuImage = UIImage()
        
        UIGraphicsBeginImageContextWithOptions(CGSize(width: 30, height: 22), false, 0.0)
        
        UIColor.black.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 3, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 10, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 17, width: 30, height: 1)).fill()
        
        UIColor.white.setFill()
        UIBezierPath(rect: CGRect(x: 0, y: 4, width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 11,  width: 30, height: 1)).fill()
        UIBezierPath(rect: CGRect(x: 0, y: 18, width: 30, height: 1)).fill()
        
        defaultMenuImage = UIGraphicsGetImageFromCurrentImageContext()!
        
        UIGraphicsEndImageContext()
       
        return defaultMenuImage;
    }
    
    @objc func onSlideMenuButtonPressed(_ sender : UIButton){
        if (sender.tag == 10)
        {
            // To Hide Menu If it already there
            self.slideMenuItemSelectedAtIndex(-1);
            
            sender.tag = 0;
            
            let viewMenuBack : UIView = view.subviews.last!
            
            UIView.animate(withDuration: 0.3, animations: { () -> Void in
                var frameMenu : CGRect = viewMenuBack.frame
                frameMenu.origin.x = -1 * UIScreen.main.bounds.size.width
                viewMenuBack.frame = frameMenu
                viewMenuBack.layoutIfNeeded()
                viewMenuBack.backgroundColor = UIColor.clear
                }, completion: { (finished) -> Void in
                    viewMenuBack.removeFromSuperview()
            })
            
            return
        }
        
        sender.isEnabled = false
        sender.tag = 10
        
        let menuVC : MenuViewController = self.storyboard!.instantiateViewController(withIdentifier: "MenuViewController") as! MenuViewController
        menuVC.btnMenu = sender
        menuVC.delegate = self
        self.view.addSubview(menuVC.view)
        self.addChild(menuVC)
        menuVC.view.layoutIfNeeded()
        
        
        menuVC.view.frame=CGRect(x: 0 - UIScreen.main.bounds.size.width, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
        
        UIView.animate(withDuration: 0.3, animations: { () -> Void in
            menuVC.view.frame=CGRect(x: 0, y: 0, width: UIScreen.main.bounds.size.width, height: UIScreen.main.bounds.size.height);
            sender.isEnabled = true
            }, completion:nil)
    }
}
