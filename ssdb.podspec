Pod::Spec.new do |s|
  s.name         = "ssdb"
  s.version      = "1.0.0"
  s.summary      = "SSDB - A fast NoSQL database, an alternative to Redis"
  s.description  = <<-DESC
                   SSDB - A fast NoSQL database for storing big list of data
                   DESC
  s.homepage     = "https://github.com/ideawu/ssdb"
  s.license      = 'New BSD License'
  s.author       = { "ideawu" => "", "mysteriouss" => ""}
  s.ios.deployment_target = '9.0'

  s.subspec 'util' do |ss|
    ss.source_files = 'ssdb/util/*'
  end

  s.subspec 'snappy' do |ss|
    ss.source_files = 'ssdb/snappy/*'
  end

  s.subspec 'leveldb' do |ss|

    ss.subspec 'db' do |sss|
      sss.source_files = 'ssdb/leveldb/db/*'
    end

    ss.subspec 'include' do |sss|
      sss.libraries    = 'c++', 'stdc++'
      sss.source_files = 'ssdb/leveldb/include/*'
    end

    ss.subspec 'port' do |sss|
      sss.source_files = 'ssdb/leveldb/port/*'
    end

    ss.subspec 'table' do |sss|
      sss.source_files = 'ssdb/leveldb/table/*'
    end

    ss.subspec 'util' do |sss|
      sss.source_files = 'ssdb/leveldb/util/*'
    end

    ss.libraries    = 'c++', 'stdc++'

  end

  s.subspec 'ssdb' do |ss|
    ss.source_files = 'ssdb/ssdb/*'
    ss.public_header_files = 'ssdb/ssdb/*.h'
  end

  s.source = { :git => "https://github.com/mysteriouss/ssdb.framework.iOS.git", :tag => s.version.to_s }
  s.source_files = 'ssdb/*'
  s.public_header_files = 'ssdb/*.h'
  s.libraries = 'c++', 'stdc++'
  s.pod_target_xcconfig = {
      'CLANG_CXX_LANGUAGE_STANDARD' => 'compiler-default',
      'CLANG_CXX_LIBRARY' => 'libc++',
      'OTHER_LDFLAGS' => '$(inherited) -ObjC',
  }
  s.header_mappings_dir = 'ssdb'
  s.exclude_files = []
  s.requires_arc = true
end
