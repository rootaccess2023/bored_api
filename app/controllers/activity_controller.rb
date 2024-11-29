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
      csv = create_csv(data)
      send_data csv, filename: "random_activities.csv"
    elsif format == "console"
      
    else
    end
  end

  private

  def create_csv(data)
    CSV.generate(headers: true) do |csv|
      csv << data.first.keys
      data.each { |activity| csv << activity.values }
    end
  end
end
