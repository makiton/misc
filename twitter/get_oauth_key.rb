require 'rubygems'
require 'twitter'
require 'pp'
require 'keys_develop'

oauth = Twitter::OAuth.new(CONSUMER_KEY, CONSUMER_SECRET)
request_token = oauth.request_token
print request_token.authorize_url + "\n"
print 'input PIN: '
pin = gets.chomp
atoken, asecret = oauth.authorize_from_request(request_token.token, request_token.secret, pin)

print "access token: #{atoken}\n"
print "access secret: #{asecret}\n"


