module Orbited
  module Session
    class FakeTCPTransport < EventMachine::Connection
      def initialize acceptor
        @acceptor = acceptor
      end
          
      def post_init
        @acceptor.post_init
      end
          
      def unbind
        @acceptor.unbind
      end
      
      def receive_data data
        Orbited.logger.debug "sending #{data} to #{@acceptor}"
        @acceptor.send data
      end
          
    end
  end
end
