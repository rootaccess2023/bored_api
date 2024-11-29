class ActivityController < ApplicationController
  def random_activity
    count = params[:count].to_i
    format = params[:format]

    url = URI("https://bored-api.appbrewery.com/random")
    
    data = []
    count.times do
      response = Net::HTTP.get_response(url)
      activity = JSON.parse(response.body)
      data << activity
    end

    if format == "json"
      render json: { random_activity: data }

    elsif format == "csv"

    elsif format == "console"

    else
    end
  end
end
