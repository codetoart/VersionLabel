Pod::Spec.new do |spec|
  spec.name         = 'VersionLabel'
  spec.version      = '0.0.2'
  spec.license      = { :type => 'MIT' }
  spec.homepage     = 'https://github.com/codetoart/VersionLabel'
  spec.authors      = { 'Priyank Tiwari' => 'priyankgt@gmail.com' }
  spec.summary      = 'Custom UILabel to display iOS app version info extracted from plist'
  spec.source       = { :git => 'https://github.com/codetoart/VersionLabel.git', :tag => 'v0.0.2' }
  spec.source_files = 'VersionLabel/Views/VersionLabel.swift'
  spec.framework    = 'SystemConfiguration'
end

