module Report
    class PDF
        def generate
            puts "PDF Generated.....!"
        end
    end

    class CSV
        def generate
            puts "CSV Generated.....!"
        end
    end
end

pdf_report=Report::PDF.new
csv_report=Report::CSV.new

puts pdf_report.generate
puts csv_report.generate