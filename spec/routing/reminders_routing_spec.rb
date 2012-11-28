require 'spec_helper'

describe 'routing reminders' do
  it 'routes to #index' do
    get('/reminders').should route_to('reminders#index')
  end

  it 'routing to #edit' do
    get('/reminders/1/edit').should route_to('reminders#edit', id:'1')
  end

  it 'routing to #new' do
    get('/reminders/new').should route_to('reminders#new')
  end

  it 'routing to #create' do
    post('/reminders').should route_to('reminders#create')
  end

  it 'routing to #update' do
    put('/reminders/1').should route_to('reminders#update', id:'1')
  end

end