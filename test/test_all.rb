require 'test_helper'

class FdbkTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Fdbk
  end

  def test_home 
    get '/'
    assert last_response.ok?
  end

end
