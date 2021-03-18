require 'httparty'
require 'json'

questions = Hash.new({ value: 0 })

SCHEDULER.every '2s' do
  question = get_question
  questions[question] = { label: question, value: (questions[question][:value] + 1) % 30 }

  send_event('api-request', { items: questions.values })
end

def get_question
  response = HTTParty.get('http://api.stackexchange.com/2.2/questions?site=stackoverflow', :verify => false)
  data = JSON.parse response.body, symbolize_names: true
  data[:items].take(5).sample[:title]
end
