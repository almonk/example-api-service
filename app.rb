require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/json"
require 'json'

get "/sum" do
  a = Integer(params["number1"]) ?? 2
  b = Integer(params["number2"]) ?? 2
  json :result => a + b
end
