class ListsController < ProtectedController
  before_action :set_list, only: [:show, :update, :destroy]

  # GET /lists
  # GET /lists.json
  def index
    @lists = current_user.lists

    render json: @lists
  end

  # GET /lists/1
  # GET /lists/1.json
  def show
    render json: @list
  end

  # POST /lists
  # POST /lists.json
  def create
    @list = current_user.lists.new(list_params)

    if @list.save
      render json: @list, status: :created, location: @list
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lists/1
  # PATCH/PUT /lists/1.json
  def update
    @list = current_user.lists.find(params[:id])

    if @list.update(list_params)
      head :no_content
    else
      render json: @list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lists/1
  # DELETE /lists/1.json
  def destroy
    @list.destroy

    head :no_content
  end

  private

    def set_list
      @list = current_user.lists.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:title, :priority, :time_due, :due_by, :user_id, :user)
    end
end
