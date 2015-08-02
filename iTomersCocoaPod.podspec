Pod::Spec.new do |s|
  s.name          = "iTomersCocoaPod"
  s.version       = "0.0.2"
  s.summary       = "Testing CocoaPod Usage for code reuse in ios development"
  s.description  = <<-DESC
  This is my long description here... Testing CocoaPod Usage for code reuse in ios development, yada, yada.
  DESC
  s.homepage      = "https://github.com/TomerBu/iTomersCocoaPod"
  s.license       = { :type => 'MIT', :file => 'LICENSE' }
  s.author        = "iTomerBu"
  s.platform     = :ios, "8.0"
  s.source        = { :git => "https://github.com/TomerBu/iTomersCocoaPod.git", :tag => "0.0.2" }
  s.source_files  = "Classes", "Classes/**/*.swift"
  #s.exclude_files = "Classes/Exclude"
  s.requires_arc  = true
end
