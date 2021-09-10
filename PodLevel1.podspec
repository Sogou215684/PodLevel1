Pod::Spec.new do |s|
  # 仓库名称
  s.name         = 'PodLevel1'
  # 当前版本(与tag一致)
  s.version = '0.0.2'
  # 仓库简介
  s.summary      = '测试Pod'

  # 工程主页
  s.homepage     = 'https://github.com/Sogou215684/PodLevel1'
  # 作者
  s.authors      = { 'mademao' => 'mademao@sogou-inc.com' }
  # 协议
  s.license      = "MIT"
  # 源码路径
  s.source       = { :git => 'https://github.com/Sogou215684/PodLevel1.git', :tag => s.version.to_s }

  # 支持的平台
  s.platform = :ios
  # iOS最低支持版本
  s.ios.deployment_target = '9.0'
  # 是否ARC
  s.requires_arc = true
  # 依赖的系统framework
  s.frameworks = 'Foundation', 'UIKit'
  
  # 设置默认仓库
  s.default_subspec = 'Default'
  s.subspec 'Default' do |default|
    default.dependency 'PodLevel1/Interface'
  end

  # 默认仓库-接口仓库
  s.subspec 'Interface' do |interface|
    interface.public_header_files = 'PodLevel1/Source/**/*.{h}'
    interface.source_files = 'PodLevel1/Source/**/*.{h,m}'

    if ENV['SG_POD_CONFIG']
      s.xcconfig = {
        "GCC_PREPROCESSOR_DEFINITIONS" => 'SG_POD_CONFIG=1'
      }
    end
  end

end
