Pod::Spec.new do |s|

  s.name         = "LJAttributedString"
  s.version      = "1.0.0"
  s.summary      = "This is such a NSMutableAttributedString framework.!"
  s.description  = "String class is very rich and great in Swift, but as there is a lot of requirements to have formatted string. Using NSMutableAttributedString and NSAttributedString we can achieve multiple fonts, color, underline, strikethrough, shadow and a lot more. Let’s explore these class…"
  s.homepage     = "https://github.com/lintocj/LJAttributedString"
  s.license      = "MIT"
  s.author       = { "Linto Jacob" => "lintojacob2009@gmail.com" }
  s.platform     = :ios, "10.0"
  s.source       = { :git => "https://github.com/lintocj/LJAttributedString.git", :tag => "1.0.0" }
  s.source_files = "LJAttributedString/**/*.swift"
  s.swift_version = "5.0"
  s.frameworks = "UIKit"

end
