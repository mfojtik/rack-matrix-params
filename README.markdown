# Rack::MatrixParams

Just simple Rack middleware to enable 'matrix' params for POST requests


## FEATURES:

- Allow you to use URL's like "/test/test;person_id=12345;kitty_name=Hello Kitty" where
  person_id and kitty_name will be passed as regular POST params

## EXAMPLES:

### Example Sinatra server

    gem install sinatra
    ruby example_server.rb
    (browse http://localhost:4567/

## LICENSE

Copyright (C) 2011 Red Hat, Inc.

Licensed to the Apache Software Foundation (ASF) under one or more
contributor license agreements.  See the NOTICE file distributed with
this work for additional information regarding copyright ownership.  The
ASF licenses this file to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance with the
License.  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.  See the
License for the specific language governing permissions and limitations
under the License.

FIXME: This should be moved into lib/ and be called Deltacloud::Drivers
or some such
