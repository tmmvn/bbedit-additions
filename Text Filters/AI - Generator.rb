#!/usr/bin/env ruby

require 'json'
require 'net/http'

input = ARGF.read
prompt = "#{input}"
post_body = {
	"candidate_count": 1,
	"max_output_tokens": 1024,
	"prompt" => {
		"text" => prompt
	},
	"stop_sequences": [],
	"temperature": 0,
	"top_k": 40,
	"top_p": 0.95
}.to_json
key = "YOURgooglePALMapiKEY"
model = "text-bison-001"
functionality = "generateText"
api_version = "v1beta3"
url = "https://generativelanguage.googleapis.com/#{api_version}/models/#{model}:#{functionality}?key=#{key}"
uri = URI.parse(url)
Net::HTTP.start uri.host, uri.port, :use_ssl => true do |http|
	req = Net::HTTP::Post.new uri
	req['Content-Type'] = 'application/json'
	res = http.request req, post_body
	body = res.read_body
	response = JSON.parse(body)
	candidates = response["candidates"]
	candidates.each do |c|
		output = c["output"].gsub /^```.*$/, ""
		puts output
	end
end
