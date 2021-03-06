#!/usr/bin/env ruby

#---
# Copyright 2003-2012 by Jim Weirich (jim.weirich@gmail.com).
# All rights reserved.

# Permission is granted for use, copying, modification, distribution,
# and distribution of modified versions of this work as long as the
# above copyright notice is included.
#+++

require "test/test_setup"

require "flexmock/base"
require "flexmock/test_unit"

class TestFlexmockTestUnit < Test::Unit::TestCase
  def teardown
    super
  end

  # This test should pass.
  def test_can_create_mocks
    m = flexmock("mock")
    m.should_receive(:hi).once
    m.hi
  end

  # This test should fail during teardown.
  def test_should_fail__mocks_are_auto_verified
    m = flexmock("mock")
    m.should_receive(:hi).once
  end
end
