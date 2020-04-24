require 'rubygems'
require 'bundler/setup'
require 'sinatra'
require "sinatra/json"
require 'sinatra/cross_origin'
require 'json'

configure do
  enable :cross_origin
end

get "/sum" do
  a = Integer(params["number1"])
  b = Integer(params["number2"])
  json :result => a + b
end