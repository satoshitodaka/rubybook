require 'sinatra'
get '/drink' do
  ['ビール', 'ワイン', '日本酒'].sample
end