require "not_active_record"
require "filters"
require "rendering"

class ControllerBase
  attr_accessor :request, :response
  
  def process(action)
    send(action)
  end
end

class Controller < ControllerBase
  include Filters, Rendering
end  
