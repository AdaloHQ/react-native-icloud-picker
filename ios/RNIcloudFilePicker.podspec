
Pod::Spec.new do |s|
  s.name         = "RNIcloudFilePicker"
  s.version      = "1.0.0"
  s.summary      = "RNIcloudFilePicker"
  s.description  = <<-DESC
                  RNIcloudFilePicker
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNIcloudFilePicker.git", :tag => "master" }
  s.source_files  = "RNIcloudFilePicker/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  