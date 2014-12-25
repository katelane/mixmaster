class MixersController < ApplicationController
  before_action :set_mixer, only: [:show, :edit, :update, :destroy]
  before_filter :zero_mixers_or_authenticated, only: [:new, :create]
  before_filter :require_login, except: [:new, :create]

  def zero_mixers_or_authenticated
    unless Mixer.count == 0 || current_user
      redirect_to root_path
      return false
    end
  end

  def index
    @mixers = Mixer.all
  end

  def show
  end

  def new
    @mixer = Mixer.new
  end

  def edit
  end

  def create
    @mixer = Mixer.new(mixer_params)

    respond_to do |format|
      if @mixer.save
        format.html { redirect_to @mixer, notice: 'Mixer was successfully created.' }
        format.json { render :show, status: :created, location: @mixer }
      else
        format.html { render :new }
        format.json { render json: @mixer.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @mixer.update(mixer_params)
        format.html { redirect_to @mixer, notice: 'Mixer was successfully updated.' }
        format.json { render :show, status: :ok, location: @mixer }
      else
        format.html { render :edit }
        format.json { render json: @mixer.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @mixer.destroy
    respond_to do |format|
      format.html { redirect_to mixers_url, notice: 'Mixer was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_mixer
    @mixer = Mixer.find(params[:id])
  end

  def mixer_params
    params.require(:mixer).permit(:username, :email, :password, :password_confirmation)
  end
end
