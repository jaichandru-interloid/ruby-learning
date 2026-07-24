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
        @history<< action
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


invoice = Invoice.new("INV-101", 2500)
invoice.print_me
invoice.export("PDF")
invoice.track("Printed")
invoice.show_history

puts

report = Report.new("Annual Report", "Alice")
report.print_me
report.export("Excel")
report.track("Shared with Manager")
report.show_history
		