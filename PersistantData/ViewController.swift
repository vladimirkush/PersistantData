//
//  ViewController.swift
//  PersistantData
//
//  Created by Admin on 18/03/2016.
//  Copyright © 2016 Admin. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var tbName: UITextField!
    @IBOutlet weak var tbLast: UITextField!
    @IBOutlet weak var tbNick: UITextField!
    @IBOutlet weak var tbEmail: UITextField!
    @IBOutlet weak var btnSave: UIButton!
    @IBOutlet weak var lbData: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func OnLoadPressed(sender: AnyObject) {
        let name = NSUserDefaults.standardUserDefaults().valueForKey("name") as! String
        let last = NSUserDefaults.standardUserDefaults().valueForKey("last") as! String
        let nick = NSUserDefaults.standardUserDefaults().valueForKey("nick") as! String
        let email = NSUserDefaults.standardUserDefaults().valueForKey("email") as! String
        
        lbData.text = "name: \(name) last: \(last) nick: \(nick) email: \(email)"
        
        
        
    }
    
    @IBAction func OnSavePressed(sender: AnyObject) {
        NSUserDefaults.standardUserDefaults().setObject(tbName.text, forKey: "name")
        NSUserDefaults.standardUserDefaults().setObject(tbLast.text, forKey: "last")
        NSUserDefaults.standardUserDefaults().setObject(tbNick.text, forKey: "nick")
        NSUserDefaults.standardUserDefaults().setObject(tbEmail.text, forKey: "email")
        NSUserDefaults.standardUserDefaults().synchronize()
        
        
    }


}


