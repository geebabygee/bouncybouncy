class BouncyCastlesController < ApplicationController

  before_action :find_bouncy_castle, only: [:show, :edit, :update, :destroy]
  # before calling all these methods, call the find_bouncy_castle method first!

  def index # Read all
    @bouncy_castles = BouncyCastle.all
  end

  def show # Read 1
    # @bouncy_castle = BouncyCastle.find(params[:id])
    # raise
  end

  def new
    @bouncy_castle = BouncyCastle.new # Empty instance of the bouncy castle to display in the form
  end

  def create
    # raise
    bouncy_castle = BouncyCastle.new(bouncy_castle_params)
    bouncy_castle.save

    redirect_to bouncy_castle_path(bouncy_castle) # Redirect to the show page - same as saying bouncy_castle.id


    # OUR PARAMS LOOK LIKE THIS NOW

     # params = {
     #   bouncy_castle:
     #     {"name"=>"Fluffy Bouncy", "address"=>"Berlin", "rating"=>"4"}
     # }


    # TO CREATE A BOUNCY CASTLE WE WOULD DO  THIS

    # BouncyCastle.create(params[:bouncy_castle])

    # BUT WE NEED TO USE STRONG PARAMS SO ACTUALLY WE DO THIS

    # bouncy_castle = BouncyCastle.new(bouncy_castle_params)

  end

  def edit
    # @bouncy_castle = BouncyCastle.find(params[:id]) # Prefilled bouncy castle instance to display in the form
  end

  def update
    # bouncy_castle = BouncyCastle.find(params[:id]) # Prefilled bouncy castle instance to display in the form
    @bouncy_castle.update(bouncy_castle_params)

    redirect_to bouncy_castle_path(@bouncy_castle) # Redirect to the show page
  end

  def destroy
    # bouncy_castle = BouncyCastle.find(params[:id])
    @bouncy_castle.destroy

    redirect_to bouncy_castles_path
  end

  private

  # STRONG PARAMS
  def bouncy_castle_params # Whitelist your params, only the ones below will be admitted. To protect against malicious input injections into forms
    params.require(:bouncy_castle).permit(:name, :address, :rating)
  end

  def find_bouncy_castle
    @bouncy_castle = BouncyCastle.find(params[:id])
  end

end















