require 'rubygems'
require 'twitter'
require 'keys_develop' # this file defines CONSUMER_KEY and CONSUMER_SECRET

oauth = Twitter::OAuth.new(CONSUMER_KEY, CONSUMER_SECRET)
request_token = oauth.request_token
print request_token.authorize_url + "\n"
print 'input PIN: '
pin = gets.chomp
atoken, asecret = oauth.authorize_from_request(request_token.token, request_token.secret, pin)

print "access token: #{atoken}\n"
print "access secret: #{asecret}\n"


