class MigropostsController < ApplicationController
  before_action :set_migropost, only: %i[ show edit update destroy ]

  # GET /migroposts or /migroposts.json
  def index
    @migroposts = Migropost.all
  end

  # GET /migroposts/1 or /migroposts/1.json
  def show
  end

  # GET /migroposts/new
  def new
    @migropost = Migropost.new
  end

  # GET /migroposts/1/edit
  def edit
  end

  # POST /migroposts or /migroposts.json
  def create
    @migropost = Migropost.new(migropost_params)

    respond_to do |format|
      if @migropost.save
        format.html { redirect_to migropost_url(@migropost), notice: "Migropost was successfully created." }
        format.json { render :show, status: :created, location: @migropost }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @migropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /migroposts/1 or /migroposts/1.json
  def update
    respond_to do |format|
      if @migropost.update(migropost_params)
        format.html { redirect_to migropost_url(@migropost), notice: "Migropost was successfully updated." }
        format.json { render :show, status: :ok, location: @migropost }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @migropost.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /migroposts/1 or /migroposts/1.json
  def destroy
    @migropost.destroy

    respond_to do |format|
      format.html { redirect_to migroposts_url, notice: "Migropost was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_migropost
      @migropost = Migropost.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def migropost_params
      params.require(:migropost).permit(:content, :user_id)
    end
end
