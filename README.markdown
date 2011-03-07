# Rack::MatrixParams

Just simple Rack middleware to enable 'matrix' params

## FEATURES:

- Allow you to use URL's like 
  - http://localhost:9393/library;category=biology/book;author=Bond;hardcover=yes
  - http://localhost:9393/library/book;author=Bond;hardcover=yes
  - http://localhost:9393/library;category=biology/book?id=123

## EXAMPLES:

### Example Sinatra server

    gem install sinatra
    ruby example_server.rb
    (browse http://localhost:4567/

### Example return values

- http://localhost:9393/library;category=biology/book;author=Bond;hardcover=yes

    params['library']['category']='biology'
    params['book']['author']='Bond'
    params['book']['hardcover']='yes'

- http://localhost:9393/library;category=biology/book?id=123

    params['library']['category']='biology'
    params['id']=123

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
