class ActivityController < ApplicationController
  def random_activity
    count = params[:count].to_i

    url = URI("https://bored-api.appbrewery.com/random")
    
    data = []
    count.times do
      response = Net::HTTP.get_response(url)
      activity = JSON.parse(response.body)
      data << activity
    end
  end
end
