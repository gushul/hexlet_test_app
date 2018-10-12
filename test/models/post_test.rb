require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def setup
    @post = posts(:one)
  end

  test 'valid post' do
    assert @post.valid?
  end

  test 'invalid without name' do
    @post.name = nil
    refute @u.valid?, 'saved post without a name'
    assert_not_nil @post.errors[:name], 'no validation error for name present'
  end

  test 'invalid without body' do
    @post.body = nil
    refute @post.valid?
    assert_not_nil @post.errors[:email]
  end
end
