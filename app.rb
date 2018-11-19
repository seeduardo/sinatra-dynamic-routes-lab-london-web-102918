require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    @name = params[:name]
    "#{@name.reverse}"
  end

  get '/square/:number' do
    @square = params[:number].to_i * params[:number].to_i
    "#{@square}"
  end

  get '/say/:number/:phrase' do
    @rep = params[:phrase]
    "#{@rep}" * params[:number].to_i
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do
    @num1 = params[:number1]
    @num2 = params[:number2]
    if params[:operation] == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif params[:operation] == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif params[:operation] == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    else
      # params[:operation] == "divide"
      "#{@num1.to_i / @num2.to_i}"
    end
  end

end
