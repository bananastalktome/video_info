# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "video_info/version"

Gem::Specification.new do |s|
  s.name         = 'video_info'
  s.version      = VideoInfo::VERSION
  s.license      = 'MIT'

  s.author       = 'Thibaud Guillaume-Gentil'
  s.email        = 'thibaud@thibaud.me'
  s.homepage     = 'https://rubygems.org/gems/video_info'
  s.summary      = 'Vimeo & Youtube parser'
  s.description  = 'Get video info from youtube and vimeo url.'

  s.files        = `git ls-files`.split($/)
  s.test_files   = s.files.grep(%r{^spec/})
  s.require_path = 'lib'

  s.add_dependency 'addressable'
  s.add_dependency 'multi_json'
  s.add_development_dependency 'bundler', '>= 1.3.5'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'webmock'
end
