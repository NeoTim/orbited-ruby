module Orbited
  module Transport
    class Packet < Array
      attr_reader :id, :name, :data
      
      def initialize id, name, data={}
        @id = id
        @name = name
        @data = data
        
        self << id
        self << name
        self << data
      end
    end
  end
end
