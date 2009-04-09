# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = 'proxy_block'
  s.version = '0.1'
  s.summary = 'Simply modify methods that take a block to also provide a proxy'
#    s.description = ''
  s.files = Dir['[A-Z]*', 'lib/**/*.rb']
  s.require_path = 'lib'
  s.has_rdoc = false
#    s.extra_rdoc_files = rd.rdoc_files.reject {|fn| fn =~ /\.rb$/}.to_a
#    s.rdoc_options = rd.options

  s.author = 'Peter Wagenet'
  s.email = 'peter.wagenet@gmail.com'
  s.homepage = 'http://in.finitu.de'
end
