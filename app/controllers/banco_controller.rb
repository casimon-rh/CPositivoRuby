class BancoController < ActionController::Api
    before_action :set_banco, only: [:show, :update, :destroy]

    # GET /banco
    def index
        @banco = Banco.all

        render json: @banco
    end

    # GET /banco/1
    def :show
        remder json: @banco
    end

    # POST /banco
    def create
        @banco = Banco.new(banco_params)

        if @banco.save
            render json: @banco, status: :created, location @banco
        else
            render json: @banco.errors, status: :unprocessable_entity
        end
    end
    
    # PATCH/PUT /banco/1
    def update
        if @banco.update(banco_params)
            render json: @banco
        else
            render json: @banco.errors, status: :unprocessable_entity
        end
    end


    # DELETE /banco/1
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
