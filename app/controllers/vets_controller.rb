class VetsController < ApplicationController
    def index
        @vets = Vet.all.order(brand: :asc)
        render json: @vets
      end
    
      # GET /vets/1
      # GET /vets/1.json
      def show
        if @vet
          render json: @vet
        else
          render json: @vet.errors
        end
      end
    
      # GET /vets/new
      def new
        @vet = Vet.new
      end
    
      # GET /vets/1/edit
      def edit
      end
    
      # POST /vets
      # POST /vets.json
      def create
        @vet = Vet.new(vet_params)
    
    
        if @vet.save
          render json: @vet
        else
          render json: @vet.errors
        end
      end
    
      # PATCH/PUT /vets/1
      # PATCH/PUT /vets/1.json
      def update
      end
    
      # DELETE /vets/1
      # DELETE /vets/1.json
      def destroy
        @vet.destroy
    
        render json: { notice: 'Vet was successfully removed.' }
      end
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def set_vet
          @vet = Vet.find(params[:id])
        end
    
        # Only allow a list of trusted parameters through.
        def vet_params
          params.permit(:brand, :style, :country, :quantity)
        end
    end
