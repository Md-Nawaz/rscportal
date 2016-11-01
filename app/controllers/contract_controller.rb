class ContractController < ApplicationController
	def index

		@contract = Contract.all

	end

	def show
	end

	def new
		@contract = Contract.new
	end

	def create
		@contract = Contract.new(con_params)
		if @contract.save
			redirect_to portal_dealers_path, notice: "Contract Registered"
		else
			render "new"
		end
	end



	private

	def con_params
		allow = [:title, :ownername, :nameofretail, :addofretail, :contactno, :emailid, :adproof, :iproof]
		params.require(:contract).permit(allow)
	end
end
