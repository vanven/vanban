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

  it 'routes /users/:id/kanbans to kanbans#index' do
    expect(get: '/users/999/kanbans').to route_to(
      controller: 'kanbans',
      action: 'index',
      user_id: '999'
    )
  end

  if 'routes /users/:id/kanbans/:id to kanbans#show' do
    expect(get: 'users/999/kanbans/1').to route_to(
      controller: 'kanbans',
      action: 'show',
      user_id: '999',
      id: '1'
    )
  end
end