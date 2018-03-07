class MethsController < ApplicationController
  before_action :set_meth, only: [:show, :edit, :update, :destroy]

  # GET /meths
  # GET /meths.json
  def index
    @meths = Meth.all
  end

  # GET /meths/1
  # GET /meths/1.json
  def show
  end

  # GET /meths/new
  def new
    @meth = Meth.new
  end

  # GET /meths/1/edit
  def edit
  end

  # POST /meths
  # POST /meths.json
  def create
    @meth = Meth.new(meth_params)

    respond_to do |format|
      if @meth.save
        format.html { redirect_to @meth, notice: 'Meth was successfully created.' }
        format.json { render :show, status: :created, location: @meth }
      else
        format.html { render :new }
        format.json { render json: @meth.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /meths/1
  # PATCH/PUT /meths/1.json
  def update
    respond_to do |format|
      if @meth.update(meth_params)
        format.html { redirect_to @meth, notice: 'Meth was successfully updated.' }
        format.json { render :show, status: :ok, location: @meth }
      else
        format.html { render :edit }
        format.json { render json: @meth.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /meths/1
  # DELETE /meths/1.json
  def destroy
    @meth.destroy
    respond_to do |format|
      format.html { redirect_to meths_url, notice: 'Meth was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meth
      @meth = Meth.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def meth_params
      params.require(:meth).permit(:program_id, :description)
    end
end
