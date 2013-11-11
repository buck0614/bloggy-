#class StaticPagesController < ApplicationController>
#	Definition
#end


class ApplicationController < ActionController::Base
	protect_from_forgery

	def say_hi
		hello
	end
end