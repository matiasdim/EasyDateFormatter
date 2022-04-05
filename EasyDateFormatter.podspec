Pod::Spec.new do |s|
  s.name             = 'EasyDateFormatter'
  s.version          = '0.2.2'
  s.summary          = 'An easy library extending Date class to convert your dates to string'
  s.swift_version    = '5.0'

  s.description      = <<-DESC
  An easy library extending Swift Date to convert your dates to string.
                       DESC

  s.homepage         = 'https://github.com/matiasdim/EasyDateFormatter.git'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matiasdim' => 'matias3@gmail.com' }
  s.source           = { :git => 'https://github.com/matiasdim/EasyDateFormatter.git', :tag => s.version.to_s }

  s.ios.deployment_target = '9.0'

  s.source_files = 'EasyDateFormatter/Classes/**/*'
  
  s.test_spec 'Tests' do |test_spec|
      test_spec.source_files = 'EasyDateFormatter/Tests/**/*'
  end
end
