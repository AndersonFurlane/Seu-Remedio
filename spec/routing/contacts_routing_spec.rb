require 'spec_helper'

describe 'routing contacts' do

  it 'no routing #index' do
    get('/contacts').should_not route_to('contacts#index')
  end

  it 'no routing #edit' do
    get('/contacts/1/edit').should_not route_to('contacts#edit', id:'1')
  end

  it 'routing to #new' do
    get('/contacts/new').should route_to('contacts#new')
  end

  it 'routing to #create' do
    post('/contacts').should route_to('contacts#create')
  end

  it 'no routing to #update' do
    put('/contacts/1').should_not route_to('contacts#update', id:'1')
  end

  it 'no routing to #destroy' do
    delete('/contacts/1').should_not route_to('contacts#destroy', id:'1')
  end

  it 'no routing to #show' do
    get('/contacts/1').should_not route_to('contacts#show', id: '1')
  end

end