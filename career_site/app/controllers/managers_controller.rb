class ManagersController < ApplicationController
  before_action :authenticate_user, except: [:index, :show]
  before_action :set_manager, only: [:show, :edit, :update, :destroy]

  # GET /managers
  # GET /managers.json
  def index
    @managers = Manager.all
  end

  # GET /managers/1
  # GET /managers/1.json
  def show
  end

  # GET /managers/new
  def new
    @manager = Manager.new
  end

  # GET /managers/1/edit
  def edit
  end

  # POST /managers
  # POST /managers.json
  def create
    @manager = Manager.new(manager_params)
    @manager.user = current_user
    respond_to do |format|
      if @manager.save
        session[:manager_id] = @manager.id
        
        format.html { redirect_to @manager, notice: 'Manager was successfully created.' }
        format.json { render :show, status: :created, location: @manager }
      else
        format.html { render :new }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /managers/1
  # PATCH/PUT /managers/1.json
  def update
    respond_to do |format|
      if @manager.update(manager_params)
        format.html { redirect_to @manager, notice: 'Manager was successfully updated.' }
        format.json { render :show, status: :ok, location: @manager }
      else
        format.html { render :edit }
        format.json { render json: @manager.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /managers/1
  # DELETE /managers/1.json
  def destroy
    if @manager.user.uid == current_user.uid
      @manager.destroy
      respond_to do |format|
        format.html { redirect_to managers_url, notice: 'Manager was successfully destroyed.' }
        format.json { head :no_content }
      end
    else
      redirect_to managers_url, notice: "You can only delete your own records"
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manager
      @manager = Manager.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manager_params
      params.require(:manager).permit(:name, :title)
    end
end
