# coding: utf-8
# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "scanf"
  spec.version       = "1.0.0"
  spec.authors       = ["David Alan Black"]
  spec.email         = ['dblack@superlink.net']

  spec.summary       = "scanf is an implementation of the C function scanf(3)."
  spec.description   = "scanf is an implementation of the C function scanf(3)."
  spec.homepage      = "https://github.com/ruby/scanf"
  spec.license       = "BSD-2-Clause"

  spec.files         = ["lib/scanf.rb"]
  spec.bindir        = "exe"
  spec.executables   = []
  spec.require_paths = ["lib"]
  spec.required_ruby_version = ">= 2.3.0"
end
