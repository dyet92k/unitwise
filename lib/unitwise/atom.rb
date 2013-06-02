module Unitwise
  class Atom < Base
    attr_accessor :classification, :property, :metric, :special
    attr_accessor :arbitrary, :function, :dim

    def self.data
      @data ||= data_files.reduce([]){|m,f| m += YAML::load File.open(f)}
    end

    def self.data_files
      %w(base_unit derived_unit).map{ |type| Unitwise.data_file type }
    end

    def base
      @scale.nil?
    end

    def metric
      base ? true : @metric
    end

    def scale=(hash)
      hash.each do |k,v|
        scale.send :"#{k}=", v
      end
    end

  end
end