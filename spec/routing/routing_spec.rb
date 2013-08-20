require 'spec_helper'

describe 'application routing' do
  it 'routes /users to users#index' do
    expect(get: '/users').to route_to(
      controller: 'users',
      action: 'index'
    )
  end

  it 'routes /users/:id to users#show' do
    expect(get: 'users/999').to route_to(
      controller: 'users',
      action: 'show',
      id: '999'
    )
  end

  it 'routes /users/:user_id/kanbans to kanbans#index' do
    expect(get: '/users/999/kanbans').to route_to(
      controller: 'kanbans',
      action: 'index',
      user_id: '999'
    )
  end

  it 'routes /users/:user_id/kanbans/:id to kanbans#show' do
    expect(get: 'users/999/kanbans/111').to route_to(
      controller: 'kanbans',
      action: 'show',
      user_id: '999',
      id: '111'
    )
  end

  # According to this best practices article:
  # http://weblog.jamisbuck.org/2007/2/5/nesting-resources
  # Resources should never be nested more than one level deep!


  # it 'routes /users/:user_id/kanbans/:kanban_id/blocks to blocks#index' do
  #   expect(get: '/users/999/kanbans/111/blocks').to route_to(
  #     controller: 'blocks',
  #     action: 'index',
  #     user_id: '999',
  #     kanban_id: '111'
  #   )
  # end

  # it 'routes /users/:user_id/kanbans/:kanban_id/blocks/:id to blocks#show' do
  #   expect(get: 'users/999/kanbans/111/blocks/888').to route_to(
  #     controller: 'blocks',
  #     action: 'show',
  #     user_id: '999',
  #     kanban_id: '111',
  #     id: '888'
  #   )
  # end

end