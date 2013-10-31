module Ruhoh::MultipleAuthors
  module Collection
    def authors
      {}.tap do |collection|
        dictionary.each_value do |model|
          if model.author['url']
            author_id = model.author['id']
            author_hash = collection[author_id] || begin
              collection[author_id] = model.author.to_hash
              collection[author_id].update 'count' => 0, resource_name => []
            end
            author_hash['count'] += 1
            author_hash[resource_name] << model.id
          end
        end
        collection['all'] = collection.values
      end
    end
  end
end