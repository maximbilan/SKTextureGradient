//
//  SKTextureGradient.swift
//	Linear gradient texture
//	Based on: https://gist.github.com/Tantas/7fc01803d6b559da48d6, https://gist.github.com/craiggrummitt/ad855e358004b5480960
//
//  Created by Maxim on 1/1/16.
//  Copyright © 2016 Maxim Bilan. All rights reserved.
//

import SpriteKit

public enum GradientDirection {
	case Up
	case Left
	case UpLeft
	case UpRight
}

public extension SKTexture {
	
	convenience init(size: CGSize, color1: CIColor, color2: CIColor, direction: GradientDirection = .Up) {
		
		let context = CIContext(options: nil)
		let filter = CIFilter(name: "CILinearGradient")
		var startVector: CIVector
		var endVector: CIVector
		
		filter!.setDefaults()
		
		switch direction {
			case .Up:
				startVector = CIVector(x: size.width * 0.5, y: 0)
				endVector = CIVector(x: size.width * 0.5, y: size.height)
			case .Left:
				startVector = CIVector(x: size.width, y: size.height * 0.5)
				endVector = CIVector(x: 0, y: size.height * 0.5)
			case .UpLeft:
				startVector = CIVector(x: size.width, y: 0)
				endVector = CIVector(x: 0, y: size.height)
			case .UpRight:
				startVector = CIVector(x: 0, y: 0)
				endVector = CIVector(x: size.width, y: size.height)
		}
		
		filter!.setValue(startVector, forKey: "inputPoint0")
		filter!.setValue(endVector, forKey: "inputPoint1")
		filter!.setValue(color1, forKey: "inputColor0")
		filter!.setValue(color2, forKey: "inputColor1")
		
		let image = context.createCGImage(filter!.outputImage!, fromRect: CGRect(x: 0, y: 0, width: size.width, height: size.height))
		self.init(CGImage: image)
	}
}