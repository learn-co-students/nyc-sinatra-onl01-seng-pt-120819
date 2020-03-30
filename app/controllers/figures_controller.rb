class FiguresController < ApplicationController
  get '/figures/new' do
    @landmarks = Landmark.all
    erb :'/figures/new'
  end

  post '/figures' do
  @figure = Figure.create(params["figure"])

  redirect to "/figures/#{@figure.id}"
  end

  get '/figures/:id' do
    erb :'figures/show'
  end
end
