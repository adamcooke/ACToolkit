Pod::Spec.new do |s|
  s.name         = "ACToolkit"
  s.version      = "1.0.0"
  s.summary      = "A set of tools & extensions which I use in my Objective-C apps."
  s.description  = s.summary
  s.homepage     = "http://github.com/adamcooke/ACToolkit"
  s.license      = { :type => "MIT", :file => "MIT-LICENSE" }
  s.author       = { "Adam Cooke" => "adam@atechmedia.com" }
  s.social_media_url   = "http://twitter.com/adamcooke"
  s.platform     = :ios, "7.0"
  s.source       = {:git => "https://github.com/adamcooke/ACToolkit.git", :tag => '1.0.0'}
  s.source_files  = "Classes", "Classes/**/*.{h,m}"
  s.requires_arc = true
end
