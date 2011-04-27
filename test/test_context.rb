########################################################################
# test_context.rb
#
# Test suite for the Kerberos::Krb5::Context class.
########################################################################
require 'rubygems'
gem 'test-unit'

require 'open3'
require 'test/unit'
require 'rkerberos'

class TC_Krb5_Context < Test::Unit::TestCase
  def setup
    @context = Kerberos::Krb5::Context.new
  end

  test "close basic functionality" do
    assert_respond_to(@context, :close)
    assert_nothing_raised{ @context.close }
  end

  test "calling close multiple times is harmless" do
    assert_nothing_raised{ @context.close }
    assert_nothing_raised{ @context.close }
    assert_nothing_raised{ @context.close }
  end

  def teardown
    @context.close
    @context = nil
  end
end
