class BlocksController

  def index
    @blocks = Block.all

  def show
    @block = Block.find([params:id])
  end

  def new
    @kanban = Kanban.find([params:id])
    @block = Block.new
  end

  def create

  end
end