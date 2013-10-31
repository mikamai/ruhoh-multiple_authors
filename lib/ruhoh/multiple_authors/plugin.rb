module Ruhoh::MultipleAuthors
  class Plugin
    include Ruhoh::Plugins::Plugin

    initializer 'multiple_authors' do
      require 'ruhoh/multiple_authors/model'
      require 'ruhoh/multiple_authors/collection'

      Ruhoh.model('pages').send :include, Model
      Ruhoh.collection('pages').send :include, Collection
    end
  end
end