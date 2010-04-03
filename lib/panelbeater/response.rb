module CpanelApi
  class Response
    
    def initialize(response)
      @response = response
    end
    
    def success?
      json['result'].first['status'] == 1
    end
    
    def json
      JSON.parse @response.body
    end
    
    def method_missing(method, *args)
      @response.send(method) if @response.respond_to?(method)
    end
    
  end
end