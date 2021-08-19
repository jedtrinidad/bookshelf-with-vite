module Web
  module Views
    class ApplicationLayout
      include Web::Layout

      def navbar
        html.nav(class: 'flex p-4 bg-red-500') do
          h1(class: 'text-3xl text-white font-extralight') do
            "Hanami Bookshelf"
          end
        end
      end

    end
  end
end
