require 'careerjet/api_client'
require 'pp' 
require 'dotenv/load'

def get_job_offer(api, keyword, location)
  # Uses user input to search for a job offer 
  api.search(
    :keywords   => keyword,
    :location   => location,
    :affid      => ENV['API_KEY'],
    :user_ip    => '11.22.33.44', 
    :user_agent => 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/120.0.0.0 Safari/537.36',
    :url        => 'http://www.example.com/jobsearch'
  ).jobs.first 
end
