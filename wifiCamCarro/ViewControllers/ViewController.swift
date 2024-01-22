//
//  ViewController.swift
//  wifiCarro
//
//  Created by Gerardo Herrera on 22/07/22.
//

import UIKit
import AudioToolbox
import WebKit
import SwiftyUserDefaults
import TactileSlider

class ViewController: UIViewController {

    //@IBOutlet weak var lightSlider: UISlider!
    //@IBOutlet weak var speedSlider: UISlider!
    @IBOutlet weak var speakerView: UIView!
    @IBOutlet weak var downView: UIView!
    @IBOutlet weak var upView: UIView!
    @IBOutlet weak var leftView: UIView!
    @IBOutlet weak var rightView: UIView!
    @IBOutlet weak var topPreviewView: UIView!
    //@IBOutlet weak var speedView: UISlider!
    @IBOutlet weak var speedTactileSlider: TactileSlider!
    
    @IBOutlet weak var indicatorView: UIActivityIndicatorView!
    @IBOutlet weak var previewStreamingUIImageView: UIImageView!
    
    @IBOutlet weak var takeCameraView: UIView!
    
    private var speaker = false
    var timerUp: Timer?
    var timerDown: Timer?
    var timerLeft: Timer?
    var timerRight: Timer?
    
    var streamingService: CameraService!
    
    func send(instruction: String, completion: @escaping()->()) {
        UDPManager.shared.send(instruction: instruction, completion: completion)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        speedTactileSlider
        setupAction()
        setupStreaming()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSettings" {
            if let vc = segue.destination as? URLViewController {
                vc.delegate = self
            }
        }
    }
    
    func setupStreaming() {
        guard let link = URL(string:"http://\(Defaults[\.urlBase]):\(Defaults[\.httpPort])") else { return }
        streamingService = CameraService(delegate: self, url: link)
    }
    
    func startAnimation() {
        DispatchQueue.main.async {
            self.indicatorView.startAnimating()
            
        }
    }
    
    func stopAnimation() {
        DispatchQueue.main.async {
            self.indicatorView.stopAnimating()
        }
        
    }
    
    func setupAction() {
        speedTactileSlider.isContinuous = false
        upView.addAction(#selector(upViewAction), target: self)
        downView.addAction(#selector(downViewAction), target: self)
        leftView.addAction(#selector(leftViewAction), target: self)
        rightView.addAction(#selector(rightViewAction), target: self)
        speakerView.addAction(#selector(speakerViewAction), target: self)
        
        let takePhotoCaptureGesture = UITapGestureRecognizer(target: self, action: #selector(takePhotoCaptureAction))
        takeCameraView.addGestureRecognizer(takePhotoCaptureGesture)
    }
    
    @objc func takePhotoCaptureAction() {
        guard let selectedImage = previewStreamingUIImageView.image else {
                    print("Image not found!")
                    return
        }
        UIImageWriteToSavedPhotosAlbum(selectedImage, self, #selector(image(_:didFinishSavingWithError:contextInfo:)), nil)
    }
    
    //MARK: - Add image to Library
    @objc func image(_ image: UIImage, didFinishSavingWithError error: Error?, contextInfo: UnsafeRawPointer) {
           if let error = error {
               showAlertWith(title: "Error al guardar", message: error.localizedDescription)
           } else {
               showAlertWith(title: "Guardar", message: "Imagen almacenada")
           }
       }

    func showAlertWith(title: String, message: String){
           let ac = UIAlertController(title: title, message: message, preferredStyle: .alert)
           ac.addAction(UIAlertAction(title: "OK", style: .default))
           present(ac, animated: true)
    }
    
    @objc func upViewAction(sender: UITapGestureRecognizer) {
        self.startAnimation()
        if sender.state == .began {
            timerUp = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                self.send(instruction: "wheels,F") { }
                self.upView.showAnimation({})
            })
        } else if sender.state == .ended || sender.state == .cancelled  || sender.state == .failed {
            self.stopAnimation()
            timerUp?.invalidate()
            timerUp = nil
        }
    }
    
    @objc func downViewAction(sender: UITapGestureRecognizer) {
        
        startAnimation()
        if sender.state == .began {
            timerDown = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                self.send(instruction: "wheels,B") { }
                self.downView.showAnimation({})
            })
        } else if sender.state == .ended || sender.state == .cancelled  || sender.state == .failed  {
            self.stopAnimation()
            timerDown?.invalidate()
            timerDown = nil
        }
    }
    
    @objc func leftViewAction(sender: UITapGestureRecognizer) {
        startAnimation()
        if sender.state == .began {
            timerLeft = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                self.send(instruction: "wheels,R") { }
                self.leftView.showAnimation({})
            })
        } else if sender.state == .ended || sender.state == .cancelled {
            self.stopAnimation()
            timerLeft?.invalidate()
            timerLeft = nil
        }
    }
    
    @objc func rightViewAction(sender: UITapGestureRecognizer) {
        startAnimation()
        if sender.state == .began {
            timerRight = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                self.send(instruction: "wheels,L") { }
                self.rightView.showAnimation({})
            })
        } else if sender.state == .ended || sender.state == .cancelled {
            self.stopAnimation()
            timerRight?.invalidate()
            timerRight = nil
        }
    }
    
    @objc func speakerViewAction(sender: UITapGestureRecognizer) {
        startAnimation()
        if sender.state == .began {
            timerRight = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true, block: {_ in
                self.send(instruction: "buzzer,1") { }
                self.rightView.showAnimation({})
            })
        } else if sender.state == .ended || sender.state == .cancelled {
            self.stopAnimation()
            timerRight?.invalidate()
            timerRight = nil
        }
    }
    
    
    @IBAction func lightTactileAction(_ sender: TactileSlider) {
        let value = Int(sender.value)
        self.send(instruction: "light,\(String(value))") { }
    }
    
    @IBAction func speedTactileAction(_ sender: TactileSlider) {
        let value = Int(sender.value)
        self.send(instruction: "speed,\(String(value))") { }
    }
    
    
    @IBAction func toggleActionCamera(_ sender: UISwitch) {
        if sender.isOn {
            streamingService.play()
        } else {
            streamingService.stop()
            previewStreamingUIImageView.image = UIImage(systemName: "stop.fill")
        }
    }
}

extension ViewController: CameraServiceDelegateProtocol {
    func frame(image: UIImage) {
        previewStreamingUIImageView.image = image
    }
}

extension ViewController: URLViewDelegate {
    func saveButtonTapped() {
        streamingService.play()
    }
    
}