
Pod::Spec.new do |s|
  s.name         = "CropView"
  s.version      = "1.0.0"
  s.summary      = "CropView"
  s.description  = <<-DESC
                  CropView
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "dev@liveink.me" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/clozr/CropView.git", :tag => "master" }
  s.source_files  = "CropView/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  