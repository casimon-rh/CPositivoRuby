class BancosController < ActionController::API
    before_action :set_banco, only: [:show, :update, :destroy]

    # GET /bancos
    def index
        @banco = Banco.all

        render json: @banco
    end

    # GET /bancos/1
    def show
        render json: @banco
    end

    # POST /bancos
    def create
        @banco = Banco.new(banco_params)

        if @banco.save
            render json: @banco #, status: :created, location @banco
        else
            render json: @banco.errors #, status: :unprocessable_entity
        end
    end
    
    # PATCH/PUT /bancos/1
    def update
        if @banco.update(banco_params)
            render json: @banco
        else
            render json: @banco.errors #, status: :unprocessable_entity
        end
    end


    # DELETE /bancos/1
    def destroy
        @banco.destroy
    end

    private
        def set_banco
            @banco = Banco.find(params[:id])
        end

        def banco_params
            params.require(:banco)
        end
        
end
