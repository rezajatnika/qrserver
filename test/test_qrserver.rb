require 'minitest_helper'

class TestQrserver < Minitest::Test
  def setup
    @object = Object.new
    @object.extend(Qrserver)

    # Query variables
    @query    = { size: @size, format: @format, ecc: @ecc, data: 'string' }
    @merged_q = { query: @query }
  end

  def test_generate_qr_code
    assert_equal 'string', @object.generate_qr_code('string')
  end

  def test_build_query
    assert_equal @merged_q, @object.send(:build_query, data: 'string')
  end
end
