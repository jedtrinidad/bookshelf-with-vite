module Web
  module Views
    module Books
      class Index
        include Web::View

        def add_book_form
          form_for :book, '/books', class: 'grid grid-rows-2 grid-cols-2' do
            text_field :title, placeholder: 'Title', class: 'p-2 m-1'
            text_field :author, placeholder: 'Author', class: 'p-2 m-1'
            submit 'Add Book', class: 'bg-green-500 text-white p-2 mt-2 rounded-xl col-span-full'
          end
        end
      end
    end
  end
end
