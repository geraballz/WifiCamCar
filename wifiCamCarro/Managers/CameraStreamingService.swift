//
//  CameraStreamingService.swift
//  wifiCamCarro
//
//  Created by Gerardo Herrera on 07/08/23.
//
import UIKit

protocol CameraServiceDelegateProtocol {
    func frame(image: UIImage) -> Void
}

protocol CameraServiceProtocol {
    var rosServiceDelegate: CameraServiceDelegateProtocol { get set }
}

class CameraService: NSObject, ObservableObject {
    var cameraServiceDelegate: CameraServiceDelegateProtocol
    let realUrl: URL
    var dataTask: URLSessionDataTask?
    var receivedData: NSMutableData = NSMutableData()
    var session: URLSession?
    
    init(delegate: CameraServiceDelegateProtocol, url: URL) {
        cameraServiceDelegate = delegate
        realUrl = url
    }
    
    func play() {
        session = URLSession(configuration: URLSessionConfiguration.default, delegate: self, delegateQueue: nil)
        dataTask = session?.dataTask(with: realUrl)
        dataTask?.resume()
    }
    
    func stop() {
        dataTask?.cancel()
    }
}

extension CameraService: URLSessionDataDelegate {
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive response: URLResponse, completionHandler: @escaping (URLSession.ResponseDisposition) -> Void) {
        if self.receivedData.length > 0,
            let receivedImage = UIImage(data: self.receivedData as Data) {
                
            DispatchQueue.main.async {
                self.cameraServiceDelegate.frame(image: receivedImage)
            }
                
            self.receivedData = NSMutableData()
        }
            
        completionHandler(URLSession.ResponseDisposition.allow) //.Cancel,If you want to stop the download
            
    }
        
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data) {
        self.receivedData.append(data)
    }
}

