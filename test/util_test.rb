require 'rubygems'
gem 'mocha'
require 'mocha/mini_test'
require "minitest/autorun"
require_relative '../shared/util'

class TestUtil < Minitest::Test

  def setup
    @util = Util.new
  end

  def test_repo_owner_using_git_protocol
    @util.stubs(:find_repo_owner_command).returns('origin	git@github.com:bigbinary/iphq.git (fetch)')
    assert_equal 'bigbinary', @util.repo_owner
  end

  def test_repo_owner_using_https_protocol
    @util.stubs(:find_repo_owner_command).returns('origin	https://github.com/bigbinary/encodedbinary (fetch)')
    assert_equal 'bigbinary', @util.repo_owner
  end

end

