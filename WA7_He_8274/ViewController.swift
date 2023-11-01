//
//  ViewController.swift
//  WA7_He_8274
//
//  Created by Christopher on 11/1/23.
//

import UIKit
import Alamofire

let defaults = UserDefaults.standard
let userTokenSaved = defaults.object(forKey: "userToken") as! String?

class ViewController: UIViewController {
    let registerScreen = RegisterView()
    let noteListScreen = NoteListView()
    let notificationCenter = NotificationCenter.default
        
    override func loadView() {
        //MARK: if userToken is found, load that user's notes
        if let userToken = userTokenSaved {
            view = noteListScreen
        } else { //MARK: otherwise, load register screen
            let valueToBeSaved = "the token..."
            defaults.set(valueToBeSaved, forKey: "userToken")
            view = registerScreen
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Hello test"
        

        // Do any additional setup after loading the view.
    }


}

