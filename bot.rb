require 'isaac'

configure do |c|
  c.nick   = 'paragon'
  c.server = 'localhost'
end

on :connect do
  join '#derp'
end

on :channel do
  msg channel, %[Really? "#{message}"?]
end
