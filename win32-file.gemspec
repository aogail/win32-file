require 'rubygems'

Gem::Specification.new do |spec|
  spec.name       = 'win32-file'
  spec.version    = '0.6.8'
  spec.authors    = ['Daniel J. Berger', 'Park Heesob']
  spec.license    = 'Artistic 2.0'
  spec.email      = 'djberg96@gmail.com'
  spec.homepage   = 'http://github.com/djberg96/win32-file'
  spec.summary    = 'Extra or redefined methods for the File class on Windows.'
  spec.test_files = Dir['test/test*']
  spec.files      = Dir['**/*'].reject{ |f| f.include?('git') }

  spec.rubyforge_project = 'win32utils'
  spec.extra_rdoc_files  = ['README', 'CHANGES', 'MANIFEST']

  spec.add_dependency('win32-api', '>= 1.2.1')
  spec.add_dependency('win32-file-stat', '>= 1.3.2')
  spec.add_dependency('windows-pr', '>= 1.0.8')

  spec.add_development_dependency('test-unit')

  spec.description = <<-EOF
    The win32-file library adds several methods to the core File class which
    are specific to MS Windows, such as the ability to set and retrieve file
    attributes. In addition, several core methods have been redefined in
    order to work properly on MS Windows, such as File.blksize. See the
    README file for more details.
  EOF
end
