//
//  Color.swift
//  wifiCamCarro
//
//  Created by Gerardo Herrera on 22/10/24.
//
import UIKit

protocol ColorViewControllerProtocol: AnyObject {
    func colorSelected(_ code: String, color: UIColor)
}

class ColorViewController: UIViewController {
    
    weak var delegate: ColorViewControllerProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func redViewAction(_ sender: UIButton) {
        delegate?.colorSelected("1", color: .red)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func greenViewAction(_ sender: Any) {
        delegate?.colorSelected("2", color: .green)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func blueViewAction(_ sender: Any) {
        delegate?.colorSelected("3", color: .systemBlue)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func yellowViewAction(_ sender: Any) {
        delegate?.colorSelected("4", color: .yellow)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func whiteViewAction(_ sender: Any) {
        delegate?.colorSelected("0", color: .white)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func pinkViewAction(_ sender: Any) {
        delegate?.colorSelected("5", color: .systemPink)
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func cyanViewAction(_ sender: UIButton) {
        delegate?.colorSelected("6", color: .cyan)
        self.navigationController?.popViewController(animated: true)
    }
    
}
