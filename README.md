# SKTextureGradient

[![Version](https://img.shields.io/cocoapods/v/SKTextureGradient.svg?style=flat)](http://cocoadocs.org/docsets/SKTextureGradient)
[![License](https://img.shields.io/cocoapods/l/SKTextureGradient.svg?style=flat)](http://cocoadocs.org/docsets/SKTextureGradient)
[![Platform](https://img.shields.io/cocoapods/p/SKTextureGradient.svg?style=flat)](http://cocoadocs.org/docsets/SKTextureGradient)

Simple <i><a href="https://developer.apple.com/library/prerelease/ios/documentation/SpriteKit/Reference/SKTexture_Ref/index.html">SKTexture</a></i> extension for creating gradient effect in <i>SpriteKit</i>.

# Installation

<b>Manual:</b>
<pre>
Copy SKTextureGradient.swift to your project.
</pre>

<b>Cocoapods:</b>
<pre>
pod 'SKTextureGradient'
</pre>

# How to use
<pre>
let topColor = CIColor(rgba: "#71B280")
let bottomColor = CIColor(rgba: "#134E5E")

let texture = SKTexture(size: CGSizeMake(200, 200), color1: topColor, color2: bottomColor, direction: GradientDirection.Up)
texture.filteringMode = .Nearest

let sprite = SKSpriteNode(texture: texture)
sprite.position = CGPointMake(CGRectGetMidX(frame), CGRectGetMidY(frame))
sprite.size = self.frame.size
addChild(sprite)
</pre>

# Example

![alt tag](https://raw.github.com/maximbilan/SKTextureGradient/master/example.png)

## License

SKTextureGradient is available under the MIT license. See the LICENSE file for more info.
