class PuppiesController < ApplicationController
  before_action :set_puppy, only: [:show, :edit, :update, :destroy]   
  access all: [:show], admin: :all

  # GET /puppies
  # GET /puppies.json
  def index
    @puppies = Puppy.all
  end

  # GET /puppies/1
  # GET /puppies/1.json
  def show
    @puppies = Puppy.all
  end

  # GET /puppies/new
  def new    
    @mother = Mother.find(params[:mother_id])  
    @litter = Litter.find_by_date(params[:litter_date]) && Litter.find_by_mother_id(params[:mother_id])  
    @puppy = Puppy.new

    if @litter != nil
      @puppy.litter_id = @litter.id      
    else
    redirect_to root_path, notice: 'To add a new litter please navigate to Our dogs, the mother you wish to add a new puppy for, select the litter and use the new puppy feature.'
    end
  end

  # GET /puppies/1/edit
  def edit
  end

  # POST /puppies
  # POST /puppies.json
  def create
    @puppy = Puppy.new(puppy_params)
    respond_to do |format|
      if @puppy.save
        format.html { redirect_to @puppy, notice: 'Puppy was successfully created.' }
        format.json { render :show, status: :created, location: @puppy }
      else
        format.html { render :new }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /puppies/1
  # PATCH/PUT /puppies/1.json
  def update
    respond_to do |format|
      if @puppy.update(puppy_params)
        format.html { redirect_to @puppy, notice: 'Puppy was successfully updated.' }
        format.json { render :show, status: :ok, location: @puppy }
      else
        format.html { render :edit }
        format.json { render json: @puppy.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /puppies/1
  # DELETE /puppies/1.json
  def destroy
    @puppy.destroy
    respond_to do |format|
      format.html { redirect_to puppies_url, notice: 'Puppy was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puppy
      @puppy = Puppy.friendly.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def puppy_params
      params.require(:puppy).permit( :name, :about, :main_image, :image_one, :image_two, :price, :litter_id)
    end
end
