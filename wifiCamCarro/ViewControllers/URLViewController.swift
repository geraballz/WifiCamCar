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
    }
    
    func preloadData() {
        urlTextField.text = Defaults[\.urlBase]
        httpPortTextField.text = Defaults[\.httpPort]
        udpPortTextField.text = Defaults[\.udpPort]
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
