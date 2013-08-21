require 'spec_helper'

describe User do
  let(:user) { User.new }
  # let(:)

  describe 'attributes' do
    it 'has a name' do
      user.name = 'Mortimer'

      expect(user.name).to eql 'Mortimer'
    end

    # it 'has an email' do
    #   user.email = 'mortimer@koala.com'

    #   expect(user.email).to eql 'mortimer@koala.com'
    # end

    # it 'has kanbans' do
    #   user.kanban =
    # end
  end
end