//
//  URLViewController.swift
//  wifiCamCarro
//
//  Created by Gerardo Herrera on 09/08/23.
//

import UIKit
import SwiftyUserDefaults

protocol URLViewDelegate: NSObject {
    func saveButtonTapped()
}

class URLViewController: UIViewController {

    @IBOutlet weak var urlTextField: UITextField!
    @IBOutlet weak var httpPortTextField: UITextField!
    @IBOutlet weak var udpPortTextField: UITextField!
    
    weak var delegate: URLViewDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        preloadData()
        //Looks for single or multiple taps.
             let tap = UITapGestureRecognizer(target: self, action: #selector(UIInputViewController.dismissKeyboard))

            view.addGestureRecognizer(tap)
    }
    
    //Calls this function when the tap is recognized.
    @objc func dismissKeyboard() {
        //Causes the view (or one of its embedded text fields) to resign the first responder status.
        view.endEditing(true)
    }
    
    func preloadData() {
        urlTextField.text = Defaults[\.urlBase]
        httpPortTextField.text = Defaults[\.httpPort]
        udpPortTextField.text = Defaults[\.udpPort]
    }
    
    @IBAction func infoCommandsActions(_ sender: Any) {
        self.performSegue(withIdentifier: "toInfoCommands", sender: nil)
    }
    
    @IBAction func saveAction(_ sender: Any) {
        if let urlBase = urlTextField.text {
            Defaults[\.urlBase] = urlBase
        }
        if let httpPort = httpPortTextField.text {
            Defaults[\.httpPort] = httpPort
        }
        if let udpPort = udpPortTextField.text {
            Defaults[\.udpPort] = udpPort
        }
        self.navigationController?.popViewController(animated: true)
        delegate?.saveButtonTapped()
    }
    
}
