//
//  InfoCommandsViewController.swift
//  wifiCamCarro
//
//  Created by Gerardo Herrera on 28/06/24.
//

import UIKit
import WebKit

class InfoCommandsViewController: UIViewController {

    @IBOutlet weak var infoWebkit: WKWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let pdf = Bundle.main.url(forResource: "udpcommands", withExtension: "pdf", subdirectory: nil, localization: nil)  {
            let req = NSURLRequest(url: pdf)
            infoWebkit.load(req as URLRequest)
                }
    }

}
