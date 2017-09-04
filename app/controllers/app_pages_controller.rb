class AppPagesController < ApplicationController
	def index

	end

	def lyricist
		user = User.find_by(id: params[:id])
		user.update(is_lyricist: true)
		redirect_to root_url

	end

	def melodist
		user = User.find_by(id: params[:id])
		user.update(is_melodist: true)
		redirect_to root_url
	end

	def vocalist
		user = User.find_by(params[:id])
		user.update(is_vocalist: true)
		redirect_to root_url

	end

	def lyricist_dashboard
		@lyrics= Lyric.where(user_id: params[:user_id])
		
	end

	def melodist_dashboard
		@lyrics= Lyric.where(is_publish: true)
	end

	def vocalist_dashboard
		@users = User.where(is_vocalist: true)
	end

	def publish
		@lyric = Lyric.find_by(id: params[:id])
		@lyric.update(is_publish: true)
		redirect_to lyricist_dashboard_path(user_id: current_user.id)
	end

	def audio
		@lyric = Lyric.find_by(id: params[:lyric_id])
		@sounds = Melody.where(lyric_id: params[:lyric_id])
	end

	def myaudio
		@sounds = Melody.where(user_id: current_user.id)
	end

	def profile
		@user = User.find_by(id: params[:id])
	end
end
