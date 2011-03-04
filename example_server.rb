require 'rubygems'
require 'sinatra'
require 'rack_matrix_params'

enable :inline_templates

use Rack::MatrixParams

get '/' do
  haml :index
end

post '/test/test' do
  haml :test
end

__END__

@@ layout
%html
  %head
  %body
  = yield

@@ index
%p
  Sending form to: "/test/test;instance_id=i-123123;test=1"
%form{:action => "/test/test;instance_id=i-123123;test=1", :method => :post}
  %input{:type => :hidden, :name => 'haha', :value => '1'}
  %input{:type => :text, :name => 'text', :value => '', :placeholder => 'Text field'}
  %input{:type => :submit, :value => 'Send'}

@@ test
%pre
  =params.inspect
%a{:href => '/'} Back to index
