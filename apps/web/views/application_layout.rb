module Web
  module Views
    class ApplicationLayout
      include Web::Layout

      TITLE_BAR_LINK_CLASS = "no-underline text-white px-2 py-4 hover:bg-white hover:text-red-500"

      def title_link
        link_to '/', class: 'no-underline' do
          h1(class: 'text-3xl text-white font-extralight p-3') do
            "Hanami Bookshelf"
          end
        end 
      end

      def navbar
        html.nav(class: 'flex justify-left bg-red-500 lg:rounded-md lg:mt-5 lg:mx-5') do
          title_link + 
            link_to('About', '/about', class: TITLE_BAR_LINK_CLASS) +
            link_to('Books', '/books', class: TITLE_BAR_LINK_CLASS)
        end
      end

    end
  end
end
