
Pod::Spec.new do |s|
s.name         = "kuzdevlib"
s.version      = "1.3.9"
s.summary      = "Categories and Helpers."
s.description  = <<-DESC
Categories and Helpers for my development
DESC
s.homepage     = "http://kuz-dev.ru/"
s.license      = { :type => 'MIT', :file => 'LICENSE' }
s.author       = { 'Mikhail Kuzevanov' => 'megakozma@gmail.com' }
s.source       = { :git => "https://github.com/megakozma/kuzdevlib.git", :tag => s.version.to_s }
s.ios.deployment_target = '8.0'
#s.tvos.deployment_target = '9.0'


s.source_files = 'kuzdevlib/KuzDev.h'
#s.prefix_header_file = 'kuzdevlib/PrefixHeader.pch'

s.subspec 'Categories' do |cat|
    cat.source_files = 'kuzdevlib/Categories/*.{h,m,swift}'
end

s.subspec 'Views' do |views|
    views.dependency 'kuzdevlib/Categories'
    views.source_files = 'kuzdevlib/Views/*.{h,m,swift}'

end

s.subspec 'Helpers' do |help|
    help.source_files = 'kuzdevlib/Helpers/*.{h,m,swift}'
end




s.frameworks   = "UIKit"
s.requires_arc = true
end
