class OemmainController < ApplicationController
	def index
	end

	def new
		@forwardlogistic = Forwardlogistic.new
		# @productid = Productid.new
		# @forwardlogistic.build_productid
	end

	def create
		@forwardlogistic = Forwardlogistic.new(oem_params)
		# @productid = Productid.new(pro_params)
		if @forwardlogistic.save 
			flash[:success] = "Data Created"
			redirect_to portal_oems_path
		else
			render "new"
		end
	end

	def show
	end

	def payrolldetail
		@payroll = Payroll.all
	end

	private


	def oem_params
		allow = [:oemcode, :factorycode, :batchcode, :noofunits, :prodid, :dealerid, :dateofship, :deliverydate]
		params.require(:forwardlogistic).permit(allow)
	end

	# def pro_params
	# 	allow = [:prodcode]
	# 	params.require(:productid).permit(allow)
	# end

end
