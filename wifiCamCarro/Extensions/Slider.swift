//
//  Slider.swift
//  wifiCarro
//
//  Created by Gerardo Herrera on 03/05/23.
//
import UIKit

final class Slider: UISlider {

    private let baseLayer = CALayer() // Step 3
    private let trackLayer = CAGradientLayer() // Step 7

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        setup()
    }

    private func setup() {
        clear()
        createBaseLayer() // Step 3
        createThumbImageView() // Step 5
        configureTrackLayer() // Step 7
        addUserInteractions() // Step 8
        valueChanged(self)
    }

    private func clear() {
        tintColor = .clear
        maximumTrackTintColor = .clear
        backgroundColor = .clear
        thumbTintColor = .clear
    }

    // Step 3
    private func createBaseLayer() {
        baseLayer.borderWidth = 1
        baseLayer.borderColor = UIColor.lightGray.cgColor
        baseLayer.masksToBounds = true
        baseLayer.backgroundColor = UIColor.clear.cgColor
        baseLayer.frame = .init(x: 0, y: frame.height / 4, width: frame.width, height: frame.height / 2)
        baseLayer.cornerRadius = baseLayer.frame.height / 2
        layer.insertSublayer(baseLayer, at: 0)
    }

    // Step 7
    private func configureTrackLayer() {
        let firstColor = UIColor(red: 21/255, green: 50/255, blue: 131/255, alpha: 1).cgColor
        let secondColor = UIColor(red: 34/255, green: 118/255, blue: 225/255, alpha: 1).cgColor
        trackLayer.colors = [firstColor, secondColor]
        trackLayer.startPoint = .init(x: 0, y: 0.5)
        trackLayer.endPoint = .init(x: 1, y: 0.5)
        trackLayer.frame = .init(x: 0, y: frame.height / 4, width: 0, height: frame.height / 2)
        trackLayer.cornerRadius = trackLayer.frame.height / 2
        layer.insertSublayer(trackLayer, at: 1)
    }

    // Step 8
    private func addUserInteractions() {
        addTarget(self, action: #selector(valueChanged(_:)), for: .valueChanged)
    }

    @objc private func valueChanged(_ sender: Slider) {
        // Step 10
        CATransaction.begin()
        CATransaction.setDisableActions(true)
        // Step 9
        let thumbRectA = thumbRect(forBounds: bounds, trackRect: trackRect(forBounds: bounds), value: value)
        trackLayer.frame = .init(x: 0, y: frame.height / 4, width: thumbRectA.midX, height: frame.height / 2)
        // Step 10
        CATransaction.commit()
    }

    // Step 5
    private func createThumbImageView() {
        let thumbSize = (3 * frame.height) / 4
        let thumbView = ThumbView(frame: .init(x: 0, y: 0, width: thumbSize, height: thumbSize))
        thumbView.layer.cornerRadius = thumbSize / 2
        let thumbSnapshot = thumbView.snapshot
        setThumbImage(thumbSnapshot, for: .normal)
        // Step 6
        setThumbImage(thumbSnapshot, for: .highlighted)
        setThumbImage(thumbSnapshot, for: .application)
        setThumbImage(thumbSnapshot, for: .disabled)
        setThumbImage(thumbSnapshot, for: .focused)
        setThumbImage(thumbSnapshot, for: .reserved)
        setThumbImage(thumbSnapshot, for: .selected)
    }
}

// Step 4
final class ThumbView: UIView {

    override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }

    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setup()
    }

    private func setup() {
        backgroundColor = UIColor(red: 255 / 255, green: 10 / 255, blue: 56 / 255, alpha: 1)
        let middleView = UIView(frame: .init(x: frame.midX - 6, y: frame.midY - 6, width: 12, height: 12))
        middleView.backgroundColor = .white
        middleView.layer.cornerRadius = 6
        addSubview(middleView)
    }
}

// Step 4
extension UIView {

    var snapshot: UIImage {
        let renderer = UIGraphicsImageRenderer(bounds: bounds)
        let capturedImage = renderer.image { context in
            layer.render(in: context.cgContext)
        }
        return capturedImage
    }
}
