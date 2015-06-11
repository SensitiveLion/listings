require "pry"
require "mechanize"

agent = Mechanize.new
reddit = agent.get("https://www.reddit.com/")
reddit_form =  reddit.forms[1]
reddit_form.user = "this_is_only_a_test"
reddit_form.passwd = "password123"
reddit = agent.submit(reddit_form)
subreddit = ["railsjobs", "forhire", "nycjobs", "jobs", "jobbit", "bostonjobs"]

subreddit.each do |subreddit|
  reddit = agent.get("https://www.reddit.com/r/#{subreddit}/submit?selftext=true")
  pp reddit
  binding.pry
end
