# coding: utf-8

class ShouninsController < ApplicationController
  before_action :set_shounin, only: [:show, :edit, :update, :destroy]

  http_basic_authenticate_with :name => ENV['BASIC_AUTHENTICATE_NAME']  , :password => ENV['BASIC_AUTHENTICATE_PASSWORD'], :only => :index

  # GET /shounins
  def index
    @shounins = Shounin.all
  end

  # GET /shounins/1
  def show
  end

  # GET /shounins/new
  def new
    @shounin = Shounin.new
  end

  # GET /shounins/1/edit
  def edit
  end

  # POST /shounins
  def create
    @shounin = Shounin.new(shounin_params)

    if @shounin.save
      redirect_to @shounin, notice: '承認申請フォームが作成されました！'
    else
      render :new
    end
  end

  # PATCH/PUT /shounins/1
  def update
    if @shounin.update(shounin_params)
      redirect_to @shounin, notice: '承認申請フォームが更新されました！'
    else
      render :edit
    end
  end

  # DELETE /shounins/1
  def destroy
    @shounin.destroy
    redirect_to shounins_url, notice: '承認申請フォームが削除されました！'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shounin
      @shounin = Shounin.friendly.find(params[:id])
      render json: { message: 'ないよ'} if @shounin.id == params[:id].to_i
    end

    # Only allow a trusted parameter "white list" through.
    def shounin_params
      params.require(:shounin).permit(:url, :description, :email, :approval, :comment)
    end
end
