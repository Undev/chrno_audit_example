class Nested::PagesController < ApplicationController
  # GET /nested/pages
  # GET /nested/pages.json
  def index
    @nested_pages = Nested::Page.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @nested_pages }
    end
  end

  # GET /nested/pages/1
  # GET /nested/pages/1.json
  def show
    @nested_page = Nested::Page.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @nested_page }
    end
  end

  # GET /nested/pages/new
  # GET /nested/pages/new.json
  def new
    @nested_page = Nested::Page.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @nested_page }
    end
  end

  # GET /nested/pages/1/edit
  def edit
    @nested_page = Nested::Page.find(params[:id])
  end

  # POST /nested/pages
  # POST /nested/pages.json
  def create
    @nested_page = Nested::Page.new(params[:nested_page])

    respond_to do |format|
      if @nested_page.save
        format.html { redirect_to @nested_page, notice: 'Page was successfully created.' }
        format.json { render json: @nested_page, status: :created, location: @nested_page }
      else
        format.html { render action: "new" }
        format.json { render json: @nested_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /nested/pages/1
  # PUT /nested/pages/1.json
  def update
    @nested_page = Nested::Page.find(params[:id])

    respond_to do |format|
      if @nested_page.update_attributes(params[:nested_page])
        format.html { redirect_to @nested_page, notice: 'Page was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @nested_page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /nested/pages/1
  # DELETE /nested/pages/1.json
  def destroy
    @nested_page = Nested::Page.find(params[:id])
    @nested_page.destroy

    respond_to do |format|
      format.html { redirect_to nested_pages_url }
      format.json { head :no_content }
    end
  end
end
