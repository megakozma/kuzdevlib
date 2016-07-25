
Pod::Spec.new do |s|
s.name         = "kuzdevlib"
s.version      = "1.0.9"
s.summary      = "Categories and Helpers."
s.description  = <<-DESC
Categories and Helpers for my development
DESC
s.homepage     = "http://kuz-dev.ru/"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'Mikhail Kuzevanov' => 'megakozma@gmail.com' }
s.source       = { :git => "https://github.com/megakozma/kuzdevlib.git", :tag => s.version.to_s }
s.ios.deployment_target = '7.0'
#s.tvos.deployment_target = '9.0'
s.source_files = 'kuzdevlib/KuzDev.h'

s.subspec 'Categories' do |ss|
    ss.source_files = 'kuzdevlib/Categories/*.{h,m}'
end

s.frameworks   = "UIKit"
s.requires_arc = true
end