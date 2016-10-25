Pod::Spec.new do |s|
s.name         = "SKTextureGradient"
s.version      = "2.3"
s.summary      = "SKTexture extension"
s.description  = "Sprite Kit SKTexture Gradient"
s.homepage     = "https://github.com/maximbilan/SKTextureGradient"
s.license      = { :type => "MIT" }
s.author       = { "Maxim Bilan" => "maximb.mail@gmail.com" }
s.platform     = :ios, "8.0"
s.source       = { :git => "https://github.com/maximbilan/SKTextureGradient.git", :tag => "2.3" }
s.source_files = "Source", "*.{swift}"
s.requires_arc = true
end
