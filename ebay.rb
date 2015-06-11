require "pry"
require "mechanize"

agent = Mechanize.new
login = agent.get("http://signin.ebay.com/")
ebay = login.link_with(text: "here").click
ebay_form =  ebay.form()
ebay_form.userid = "passidomo.linkedin@gmail.com"
ebay_form.pass = "Wo!1xFnb4Q"
ebay = agent.submit(ebay_form)
sell = agent.get("http://csr.ebay.com/cse/list.jsf?usecase=create&mode=AddItem&categoryId=551&rp=srp&categoryPath=550|158658|551|&title=&motors=0")
pp sell
