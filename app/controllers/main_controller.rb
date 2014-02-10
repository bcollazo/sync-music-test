class MainController < ApplicationController

	def index
	end


	def request
		ip = request.remote_ip
		time = params[:time]
		d = Time.new

		x = User.find_or_create_by_ip(ip)
		x.datetime = time
		x.save

		done = false
		while User.count != 2
			puts "+++++"
			puts User.all
		end

		a = User.all[0].datetime
		b = User.all[1].datetime

		offset = 5

		c = Time.new
		
		response = c + " " + d

		# calculate
		render :json => response.to_json
	end

end




