class CompetenciesController < ApplicationController
	def index
		# @competency = Competency.all
	end
	
	def new
		# @competency = Competency.new
	end

	def create
		@competency = Competency.new(competency_params)

		if @competency.save
			redirect_to @competency
		else	
			render 'new'
		end
	end

	private
		def competency_params
			params.require(:competency).permit(:title, :text)
		end
end
