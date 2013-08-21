require 'spec_helper'

describe Kanban do
  let(:kanban) {Kanban.new}

  describe 'attributes' do
    it 'belongs to a user' do
      expect(kanban.user).to eql nil
    end

    it 'has a name' do
      kanban.board_name = 'My Awesome Kanban!'

      expect(kanban.board_name).to eql 'My Awesome Kanban!'
    end

    # it 'has panels' do
    # end

    # it 'has many blocks' do
    #   kanban.blocks = 'Some block title' Wait. What? TO_DO fix this


    #   expect(kanban.block).to eql 'Some block title'
    # end
  end

end