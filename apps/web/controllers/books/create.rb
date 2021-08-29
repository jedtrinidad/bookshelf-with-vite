module Web
  module Controllers
    module Books
      class Create
        include Web::Action

        def call(params)
          BookRepository.new.create(params[:book])

          to_url = request.referrer

          self.status = 303
          self.headers.merge!({ 'Location' => to_url })
        end
      end
    end
  end
end
