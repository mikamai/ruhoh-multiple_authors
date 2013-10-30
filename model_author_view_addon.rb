module MultipleAuthors
  module ModelHelpers
    module Author
      def author
        data_author = data['author']
        authors_list = collection.ruhoh.config['authors']
        if data_author.is_a?(String) && authors_list && authors_list[data_author]
          authors_url = [
            ruhoh.to_url('authors'),
            ruhoh.to_url('authors.html')
          ].detect { |url| ruhoh.routes.find(url) }

          authors_list[data_author].update({
            'id' => data_author,
            'url' => "#{authors_url}##{CGI.escape data_author}-ref"
          })
        else
          data_author
        end
      end
    end
  end
end

Ruhoh.model('pages').send :include, MultipleAuthors::ModelHelpers::Author