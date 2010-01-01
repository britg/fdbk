require 'test_helper'

class FdbkTest < Test::Unit::TestCase
  include Rack::Test::Methods

  def app
    Fdbk
  end

  def home_page
    get '/'
    assert last_response.ok?
  end

end
