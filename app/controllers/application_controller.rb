require_relative 'infusionsoft_actions'
require_relative 'field_arrays'

class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
end
