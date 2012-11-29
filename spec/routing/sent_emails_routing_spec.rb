require 'spec_helper'

describe 'routing sent_emails' do

  it 'routes to #index' do
    get('/sent_emails').should route_to('sent_emails#index')
  end

  it 'routing to #edit' do
    get('/sent_emails/1/edit').should route_to('sent_emails#edit', id:'1')
  end

  it 'no routing to #new' do
    get('/sent_emails/new').should_not route_to('sent_emails#new')
  end

  it 'no routing to #create' do
    post('/sent_emails').should_not route_to('sent_emails#create')
  end

  it 'no routing to #update' do
    put('/sent_emails/1').should_not route_to('sent_emails#update', id:'1')
  end

  it 'no routing to #destroy' do
    delete('/sent_emails/1').should_not route_to('sent_emails#destroy', id:'1')
  end

  it 'no routing to #show' do
    get('/sent_emails/1').should_not route_to('sent_emails#show', id: '1')
  end

end