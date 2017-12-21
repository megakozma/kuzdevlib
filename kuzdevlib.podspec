
Pod::Spec.new do |s|
s.name         = "kuzdevlib"
s.version      = "1.4.2"
s.summary      = "Categories and Helpers."
s.description  = <<-DESC
Categories and Helpers for my development
DESC
s.homepage     = "http://kuz-dev.ru/"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'Mikhail Kuzevanov' => 'megakozma@gmail.com' }
s.source       = { :git => "https://github.com/megakozma/kuzdevlib.git", :tag => s.version.to_s }
s.ios.deployment_target = '9.0'

#echo 3.0 > .swift-version
#s.tvos.deployment_target = '9.0'


s.source_files = 'kuzdevlib/KuzDev.h'
#s.prefix_header_file = 'kuzdevlib/PrefixHeader.pch'

s.subspec 'objc' do |objc|
    objc.subspec 'categories' do |cat|
        cat.source_files = 'kuzdevlib/objc/categories/*.{h,m}'
    end
    objc.subspec 'views' do |views|
        views.dependency 'kuzdevlib/objc/categories'
        views.source_files = 'kuzdevlib/objc/views/*.{h,m}'
    end

    objc.subspec 'helpers' do |help|
        help.source_files = 'kuzdevlib/objc/helpers/*.{h,m}'
    end
end

s.subspec 'swift' do |swift|
    swift.subspec 'categories' do |cat|
        cat.source_files = 'kuzdevlib/swift/categories/*.{swift}'
    end
end

s.frameworks   = "UIKit"
s.requires_arc = true
end
