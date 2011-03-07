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

post '/test/test/another_test' do
  haml :test
end

get '/library/book' do
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
  Test GET params:
  %ul
    %li
      %a{:href => "/library;category=biology/book;author=Bond;hardcover=yes"} James Bond book
    %li
      %a{:href => "/library/book;author=Bond;hardcover=yes"} James Bond book 2
    %li
      %a{:href => "/library;category=biology/book?id=123"} Random biology book
%p
%p
  Sending form to: "/test/test;instance_id=i-123123;test=1/another_test;hello=1"
%form{:action => "/test/test;instance_id=i-123123;test=1", :method => :post}
  %input{:type => :hidden, :name => 'haha', :value => '1'}
  %input{:type => :text, :name => 'text', :value => '', :placeholder => 'Text field'}
  %input{:type => :submit, :value => 'Send'}

@@ test
%pre
  =params.inspect
%a{:href => '/'} Back to index
