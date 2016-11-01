class DealerportalController < ApplicationController
	before_filter :authenticate_dealer!


	def new
		@payroll = Payroll.new
	end

	def create
		@payroll = Payroll.new(pay_params)
		if @payroll.save
				redirect_to portal_dealers_path, notice: "Payroll Created"
			else
				render "new"
		end
	end

	def index
		@payroll = Payroll.all
		# @payroll= Payroll.find(params[:id])
	end

	private

	def pay_params
		allow = [:custname, :manufacturer, :prodid, :price, :dateofsale]
		params.require(:payroll).permit(allow)
	end
end
