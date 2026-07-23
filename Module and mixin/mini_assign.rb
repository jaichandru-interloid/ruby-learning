module Printable
    def print_me
        puts @details
    end
end

module Exportable
    def export(format)
        puts"Exported in format of #{format}."
    end
end

module Trackable
    def track(action)
        @histort<< action
    end
end

class Invoice
	include Printable
	include Exportable
	include Trackable
	def initialize(number,amount)
		@detail={number:number,amount:amount}
		@history=[]
  end

	def show_history
		puts @history
end
end

class Report
    include Printable
    include Exportable
    include Trackable
    def initialize(title,author)
        @detail={title:title,author:author}
        @history=[]
    end

    def show_history
        puts @history
		end
end
