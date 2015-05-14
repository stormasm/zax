require "key_params"

class ApplicationController < ActionController::API
  before_filter :allow_origin
  include KeyParams

  public
  def allow_crossdomain
    headers['Access-Control-Allow-Methods']   = 'POST, PUT, DELETE, GET, OPTIONS'
    headers['Access-Control-Request-Method']  = '*'
    headers['Access-Control-Allow-Headers']   = "#{TOKEN}"
  end

  def allow_origin
    headers['Access-Control-Allow-Origin']    = '*'
    headers['Access-Control-Expose-Headers']  = "X-Error-Details"
  end
end
