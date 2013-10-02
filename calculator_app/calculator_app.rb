
#This is the calculator app:

require 'sinatra'
require "sinatra/reloader"
get '/' do
  erb :form 
end

post '/answers' do
  @num1 = params[:num1]
  @num2 = params[:num2]
  @math = params[:math]

  case params[:math]
  when 'add'
    answer = params[:num1].to_f + params[:num2].to_f
    calc = '+'
  when 'subtract'
    answer = params[:num1].to_f - params[:num2].to_f
    calc = '-'
  when 'multiply'
    answer = params[:num1].to_f * params[:num2].to_f
    calc = '*'
  when 'divide'
    answer = params[:num1].to_f / params[:num2].to_f
    calc = '/'
  end
  @answer ="#{answer}"
  @calculate = "#{calc}"

  erb :calc_result
end