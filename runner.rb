require 'unirest'

response = Unirest.post("http://localhost:3000/api/guess_url", parameters: {user_guess: 32}).body

puts JSON.pretty_generate(response)