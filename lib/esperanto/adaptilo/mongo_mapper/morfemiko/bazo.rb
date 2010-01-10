require 'mongo_mapper/document'

module Esperanto
  module Morfemiko
    class Bazo
      include MongoMapper::Document

      def self.[](id)
        find(id)
      end

      def self.apartenas_por(association_id, options = {}, &extension)
        key(:"#{association_id}_id", ObjectId)
        belongs_to(association_id, options, &extension)
      end

      def self.havas_multa(association_id, options = {}, &block)
        array_id = "#{association_id.to_s.singular}_ids"
        key(array_id, Array)
        many(association_id, options.merge(:in => array_id), &block)
      end
    end
  end
end
