# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{hex}
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Frédéric Mascaro"]
  s.date = %q{2011-05-29}
  s.description = %q{Convert hex data to/from integer, and read/write Intel HEX File.}
  s.email = %q{frederic.mascaro@wo-oo.com}
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.md"
  ]
  s.files = [
    ".document",
    ".rspec",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.md",
    "Rakefile",
    "VERSION",
    "hex.gemspec",
    "lib/wo_oo/electronics/intel_hex_file.rb",
    "lib/wo_oo/electronics/intel_hex_grammar.rb",
    "lib/wo_oo/electronics/intel_hex_grammar.treetop",
    "lib/wo_oo/util/hex.rb",
    "spec/hex_util_spec.rb",
    "spec/intel_hex_file_spec.rb",
    "spec/resources/pic_sample.hex",
    "spec/resources/wikipedia_sample.hex",
    "spec/spec_helper.rb"
  ]
  s.homepage = %q{http://github.com/rfred999/hex}
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.6.2}
  s.summary = %q{Convert hex data to/from integer, and read/write Intel HEX File.}

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_development_dependency(%q<yard>, ["~> 0.7.1"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.13"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_development_dependency(%q<rcov>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, ["~> 2.6.0"])
      s.add_dependency(%q<yard>, ["~> 0.7.1"])
      s.add_dependency(%q<bundler>, ["~> 1.0.13"])
      s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
      s.add_dependency(%q<rcov>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, ["~> 2.6.0"])
    s.add_dependency(%q<yard>, ["~> 0.7.1"])
    s.add_dependency(%q<bundler>, ["~> 1.0.13"])
    s.add_dependency(%q<jeweler>, ["~> 1.6.0"])
    s.add_dependency(%q<rcov>, [">= 0"])
  end
end

