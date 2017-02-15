class ChatbotController < ApplicationController
  def chat
  end

  def show
    @response = $client.text_request params[:question]
    render :json => @response
  end

end
