class OurJokesController < ApplicationController
  def vote
    session[:session_code] = SecureRandom.hex if session[:session_code].nil?
    our_joke = OurJoke.find(params[:id])
    vote = Vote.new(our_joke: our_joke, session_code: session[:session_code], like: like)
    @json  = { status: vote.save!,
               notice: vote.errors.full_messages.join(', ') }
    render :json =>  @json
  end

  private

  def like
    params[:like] == 'true'
  end
end