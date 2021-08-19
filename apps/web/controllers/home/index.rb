module Web
  module Controllers
    module Home
      class Index
        include Web::Action
        expose :greeting

        def call(params)
          @greeting = 'Hello World'

          if !params[:name].nil?
            @greeting = "Hello #{params[:name]}"
          end
        end
      end
    end
  end
end
