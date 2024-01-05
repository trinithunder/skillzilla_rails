require 'httparty'

class ApiController < ApplicationController
  skip_before_action :verify_authenticity_token

  def send_message_to_slack
    webhook_url = 'https://hooks.slack.com/services/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'
    message = {
      text: 'Testing directly from server'
    }

    response = HTTParty.post(webhook_url, body: { payload: message.to_json })

    render json: response.body
  end

end
