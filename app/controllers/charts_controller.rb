class ChartsController < ApplicationController
    def new_users
        render json: User.select(:created_at).group(:created_at).count
    end
    def new_clients
        # render json: ActiveRecord::Base.connection.exec_query('SELECT * FROM CLIENTE_POR_FECHA').json
         render json: Clientefecha.select(:fecha).group(:fecha).count
    end
    def count_clientes
        render html: Cliente.all.count
    end
end