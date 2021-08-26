module Web
  module Views
    class ApplicationLayout
      include Web::Layout
      

      def title_link
        link_to '/', class: 'no-underline' do
          h1(class: 'text-3xl text-white font-extralight py-2') do
            "Hanami Bookshelf"
          end
        end 
      end

      def navbar
        html.nav(class: 'flex justify-center p-3 bg-red-500') do
          title_link + link_to('About', '/about', class: 'no-underline text-white py-2')
        end
      end

    end
  end
end
