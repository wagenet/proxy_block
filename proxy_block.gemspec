# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{proxy_block}
  s.version = "0.1.2"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Peter Wagenet"]
  s.date = %q{2009-04-23}
  s.email = %q{peter.wagenet@gmail.com}
  s.extra_rdoc_files = [
    "README.textile"
  ]
  s.files = [
    "README.textile",
    "Rakefile",
    "VERSION.yml",
    "lib/proxy_block.rb"
  ]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/rxcfc/proxy_block}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.2}
  s.summary = %q{Simply modify methods that take a block to also provide a proxy}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
