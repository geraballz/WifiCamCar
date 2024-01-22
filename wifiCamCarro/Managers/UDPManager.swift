//
//  UDPManager.swift
//  wifiCarro
//
//  Created by Gerardo Herrera on 08/05/23.
//

import Foundation
import Network
import SwiftyUserDefaults

class UDPManager {
    static var shared = UDPManager()
    
    var connection: NWConnection?
    
    func initUDP() {
        let hostUDP: NWEndpoint.Host = .init("\(Defaults[\.urlBase])")
        let portUDPInt: Int = Int("\(Defaults[\.udpPort])") ?? 8882
        let portUDP: NWEndpoint.Port = .init(integerLiteral: UInt16(portUDPInt))
        
        self.connection = NWConnection(host: hostUDP, port: portUDP, using: .udp)
        //"192.168.4.1"
        //"nc -u -lk 8080"
        self.connection?.stateUpdateHandler = { (newState) in
            switch (newState) {
            case .ready:
                print("ready")
            case .setup:
                print("setup")
            case .cancelled:
                print("cancelled")
            case .preparing:
                print("Preparing")
            default:
                print("waiting or failed")

            }
        }
        self.connection?.start(queue: .global())

    }
    
    func send(instruction: String, completion: @escaping()->()) {
        self.connection?.send(content: instruction.data(using: String.Encoding.utf8), completion: NWConnection.SendCompletion.contentProcessed(({ (NWError) in
            if let error = NWError {
                debugPrint(error)
            }
            completion()
        })))
    }
}
