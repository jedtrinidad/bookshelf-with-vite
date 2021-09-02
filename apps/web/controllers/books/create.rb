module Web
  module Controllers
    module Books
      class Create
        include Web::Action
        expose :books

        params do
          required(:book).schema do
            required(:title).filled
            required(:author).filled
          end
        end

        def call(params)
          @books = BookRepository.new.all
          to_url = request.referrer

          if params.valid?
            BookRepository.new.create(params[:book])

            self.status = 303
            self.headers.merge!({ 'Location' => to_url })
          else
            self.status = 422
            self.headers.merge!({ 'Location' => to_url })
          end
        end
      end
    end
  end
end
