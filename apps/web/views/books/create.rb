module Web
  module Views
    module Books
      class Create
        include Web::View
        template 'books/index'

        def add_book_form
          form_for :book, '/books', class: 'grid grid-rows-2 grid-cols-2' do
            text_field :title, placeholder: 'Title', class: 'p-2 m-1'
            text_field :author, placeholder: 'Author', class: 'p-2 m-1'
            submit 'Add Book', class: 'bg-green-500 text-white p-2 mt-2 rounded-xl col-span-full'
          end
        end

        def books_list
          html.ul(class: 'pt-3 list-outside') do
            books.each do |book|
              li(class: 'list-none') do
                div(class: 'bg-gray-100 mt-3 p-3 max-w-md rounded') do
                  h2(class: 'font-bold text-xl') do
                    link_to routes.book_path(id: book.id) do
                      book.title
                    end
                  end
                  p(book.author, class: 'font-extralight')
                end
              end
            end
            li(class: 'list-none') do
              div(class: 'bg-gray-100 mt-3 p-3 max-w-md rounded') do
                add_book_form
              end
            end
          end
        end
        
      end
    end
  end
end
