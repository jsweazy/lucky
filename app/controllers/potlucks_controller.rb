class PotlucksController < ApplicationController

  def index
    @potlucks = Potluck.all

    respond_to do |format|
      format.html # index.html.erb
    end
  end

  def new
    @potluck = Potluck.new

    respond_to do |format|
      format.html # new.html.erb
    end
  end

  def create
    @potluck = Potluck.new(params[:potluck])

    respond_to do |format|
      if @potluck.save
        format.html { redirect_to @potluck, notice: 'Potluck was successfully created.' }
      else
        format.html { render action: "new" }
      end
    end
  end

  def show
    @potluck = Potluck.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
    end
  end

  def edit
    @potluck = Potluck.find(params[:id])
  end

  def update
    @potluck = Potluck.find(params[:id])

    respond_to do |format|
      if @potluck.update_attributes(params[:potluck])
        format.html { redirect_to @potluck, notice: 'Potluck was successfully updated.' }
      else
        format.html { render action: "edit" }
      end
    end
  end

  def destroy
    @potluck = Potluck.find(params[:id])
    @potluck.destroy

    respond_to do |format|
      format.html { redirect_to potlucks_url }
    end
  end
end
