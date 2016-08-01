Pod::Spec.new do |s|
s.name = 'CountDown'
s.version = '1.0.0'
s.license = 'MIT'
s.summary = 'a countdown tool class for iOS'
s.homepage = 'https://github.com/yun0628/uploadTest'
s.authors = { 'yang' => 'aiyun2812@gmail.com' }
s.source = { :git => 'https://github.com/yun0628/uploadTest.git', :tag => s.version.to_s }
s.requires_arc = true
s.ios.deployment_target = '7.0'
s.source_files = 'CountDown/*.{h,m}'
end


