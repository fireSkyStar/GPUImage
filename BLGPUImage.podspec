Pod::Spec.new do |s|
  s.name     = 'BLGPUImage'
  s.version  = '0.1.7.9'
  s.license  = 'BSD'
  s.summary  = 'An open source iOS framework for GPU-based image and video processing.'
  s.homepage = 'https://github.com/BradLarson/GPUImage'
  s.author   = { 'Brad Larson' => 'contact@sunsetlakesoftware.com' }
  s.source   = { :git => 'http://172.100.7.62:10080/gaoyan/BLGPUImage.git', :tag => "#{s.version}" }

  s.source_files = 'framework/Source/**/*.{h,m}'
  s.resources = 'framework/Resources/*.png'
  s.requires_arc = true
  s.xcconfig = { 'CLANG_MODULES_AUTOLINK' => 'YES' }

  s.ios.deployment_target = '8.0'
  s.ios.exclude_files = 'framework/Source/Mac'
  s.ios.frameworks   = ['OpenGLES', 'CoreMedia', 'QuartzCore', 'AVFoundation','CoreVideo','AssetsLibrary','UIKit','Foundation']

  # s.osx.deployment_target = '10.6'
  # s.osx.exclude_files = 'framework/Source/iOS',
  #                       'framework/Source/GPUImageFilterPipeline.*',
  #                       'framework/Source/GPUImageMovieComposition.*',
  #                       'framework/Source/GPUImageVideoCamera.*',
  #                       'framework/Source/GPUImageStillCamera.*',
  #                       'framework/Source/GPUImageUIElement.*'
  # s.osx.xcconfig = { 'GCC_WARN_ABOUT_RETURN_TYPE' => 'YES' }
end
