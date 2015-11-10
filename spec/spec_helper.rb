$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)
require 'primal_instinct'

module Tests
  def self.spec_root
    project_root.join('spec')
  end

  def self.project_root
    Pathname.new(Dir.pwd)
  end
end

Dir[Tests.spec_root.join("support/**/*.rb")].each { |f| require f }
