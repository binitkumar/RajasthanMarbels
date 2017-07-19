class StockCollectionsController < ApplicationController
  before_action :set_stock_collection, only: [:show, :edit, :update, :destroy]

  # GET /stock_collections
  # GET /stock_collections.json
  def index
    @stock_collections = StockCollection.all
  end

  # GET /stock_collections/1
  # GET /stock_collections/1.json
  def show
  end

  # GET /stock_collections/new
  def new
    @stock_collection = StockCollection.new
  end

  # GET /stock_collections/1/edit
  def edit
  end

  # POST /stock_collections
  # POST /stock_collections.json
  def create
    @stock_collection = StockCollection.new(stock_collection_params)

    respond_to do |format|
      if @stock_collection.save
        format.html { redirect_to stocks_path, notice: 'Stock collection was successfully loaded.' }
        format.json { render :show, status: :created, location: @stock_collection }
      else
        format.html { render :new }
        format.json { render json: @stock_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_collections/1
  # PATCH/PUT /stock_collections/1.json
  def update
    respond_to do |format|
      if @stock_collection.update(stock_collection_params)
        format.html { redirect_to @stock_collection, notice: 'Stock collection was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_collection }
      else
        format.html { render :edit }
        format.json { render json: @stock_collection.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_collections/1
  # DELETE /stock_collections/1.json
  def destroy
    @stock_collection.destroy
    respond_to do |format|
      format.html { redirect_to stock_collections_url, notice: 'Stock collection was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_collection
      @stock_collection = StockCollection.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_collection_params
      params.require(:stock_collection).permit(:addition_type, stocks_attributes: [:id, :product_name, :modal_number, :quantity, :purchase_price, :sale_price, :minimum_stock, :_destroy])
    end
end
