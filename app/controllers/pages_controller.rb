class PagesController < ApplicationController
	#layout 'admin', {only: [:index]}
	def index
		@link = {content: 'our catalog', url: '/catalog'}
	end

	def about
		@link = {content: 'our promo', url: '/promo'}
	end
end