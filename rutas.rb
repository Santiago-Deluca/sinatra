require "sinatra"

get '/' do
   unless params[:name]
     "Hola Mundo "
   else
     "esto fue escrito por #{params[:name]}"
   end
   @day
   @month
   @year
   erb:index
  end



get '/:name' do
  "Hola #{params[:name]}"
end

post '/nuevo/objeto' do
  "Hemos creado un nuevo objeto con los siguientes entradas #{params[:day]} , #{params[:month]} , #{params[:year]} "
end


post '/resultado' do
  erb :resultado
end
