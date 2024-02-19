//
//  Config.swift
//  wifiCamCarro
//
//  Created by Gerardo Herrera on 21/01/24.
//

import UIKit
import SwiftLoader

struct Config: Decodable {
    private enum CodingKeys: String, CodingKey {
        case light, buzzer, speed, right, left, up, down
    }

    let light: String
    let buzzer: String
    let speed: String
    let right: String
    let left: String
    let up: String
    let down: String
}

class ConfigInfo {
    func parseConfig() -> Config {
        let url = Bundle.main.url(forResource: "Buttons", withExtension: "plist")!
        let data = try! Data(contentsOf: url)
        let decoder = PropertyListDecoder()
        return try! decoder.decode(Config.self, from: data)
    }
    
    func configureLoader() {
        var config: SwiftLoader.Config = SwiftLoader.Config()
        config.size = 150
        config.spinnerColor = .blue
        config.foregroundColor = .white
        config.foregroundAlpha = 0.5
    }
}
