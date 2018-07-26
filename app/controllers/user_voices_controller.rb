class UserVoicesController < ApplicationController
    before_action :set_user_voice, only: [:show, :edit, :update, :destroy]

  # GET /user_voices
  # GET /user_voices.json
  def index
    @user_voice = UserVoice.all
  end

  # GET /user_voices/1
  # GET /user_voices/1.json
  def show
  end

  # GET /user_voices/new
  def new
    @user_voice = UserVoice.new
  end

  # GET /user_voices/1/edit
  def edit
  end

  # POST /user_voices
  # POST /user_voices.json
  def create
    @lecture = Lecture.find(params[:lecture_id])  
    @user_voice = @lecture.user_voices.build(user_voice_params)
    # @user_voice = UserVoice.new(user_voice_params)

    respond_to do |format|
      if @user_voice.save
        format.html { redirect_to @lecture, notice: 'user_voice was successfully created.' }
        format.json { render :show, status: :created, location: @user_voice }
      else
        format.html { render :new }
        format.json { render json: @user_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_voices/1
  # PATCH/PUT /user_voices/1.json
  def update
    respond_to do |format|
      if @user_voice.update(user_voice_params)
        format.html { redirect_to @user_voice, notice: 'user_voice was successfully updated.' }
        format.json { render :show, status: :ok, location: @user_voices }
      else
        format.html { render :edit }
        format.json { render json: @user_voice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_voices/1
  # DELETE /user_voices/1.json
  def destroy
    # p "-----------------" 
    # p @user_id
    # p "-----------------"
    
    #@user_voice = @lecture.user_voice.find(params[:user_voice_id])
    @lecture = Lecture.find(params[:id])
    # p "-----------------" 
    # p @lecture
    # p "-----------------" 
    @user_voice = UserVoice.find_by(id:params[:user_voice_id])
    @user_voice.destroy
    respond_to do |format|
     format.html { redirect_to @lecture, notice: 'user_voice was successfully destroyed.' }
     format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_voice
      #@lecture = Lecture.find(params[:lecture_id])  
      #@user_voice = user_voices.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def user_voice_params
      params.require(:user_voice).permit(:comment, :satisfaction)
    end
end


