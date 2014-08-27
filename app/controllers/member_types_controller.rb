class MemberTypesController < ApplicationController
  before_action :set_member_type, only: [:show, :edit, :update, :destroy]

  # GET /member_types
  # GET /member_types.json
  def index
    @member_types = MemberType.all
  end

  # GET /member_types/1
  # GET /member_types/1.json
  def show
  end

  # GET /member_types/new
  def new
    @member_type = MemberType.new
  end

  # GET /member_types/1/edit
  def edit
  end

  # POST /member_types
  # POST /member_types.json
  def create
    @member_type = MemberType.new(member_type_params)

    respond_to do |format|
      if @member_type.save
        format.html { redirect_to @member_type, notice: 'Member type was successfully created.' }
        format.json { render :show, status: :created, location: @member_type }
      else
        format.html { render :new }
        format.json { render json: @member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_types/1
  # PATCH/PUT /member_types/1.json
  def update
    respond_to do |format|
      if @member_type.update(member_type_params)
        format.html { redirect_to @member_type, notice: 'Member type was successfully updated.' }
        format.json { render :show, status: :ok, location: @member_type }
      else
        format.html { render :edit }
        format.json { render json: @member_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_types/1
  # DELETE /member_types/1.json
  def destroy
    @member_type.destroy
    respond_to do |format|
      format.html { redirect_to member_types_url, notice: 'Member type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_type
      @member_type = MemberType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def member_type_params
      params.require(:member_type).permit(:name)
    end
end
