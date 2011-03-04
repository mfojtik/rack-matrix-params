module Rack

  class MatrixParams
    def initialize(app)
      @app = app
    end

    # This will allow to use 'matrix' params in POST requests, like:
    #
    # POST http://127.0.0.1:9393/test/test;person_id=i-123123;test=1
    # 
    # => {"instance_id"=>"i-123123", "haha"=>"1", "test"=>"1"}
    #
    # (where 'haha' is regular POST param sent from HTML form
    #
    def call(env)
      uri = env['REQUEST_URI']
      if env['REQUEST_METHOD'] == 'POST' and uri =~ /\;(\w+)\=/
        params_arr = uri.split(/;(\w+)=/)
        matrix_params, value = {}, nil
        while param=params_arr.pop do
          if value
            (matrix_params[param]=value) && (value=nil)
            next
          else
            value = param
          end
        end
        env['rack.request.form_hash'].merge!(matrix_params)
      end
      @app.call(env)
    end
  end

end
