require "csv"

namespace :import do
  task :copy_csv do 
    CSV.foreach("lib/assets/test.csv", :headers => true) do |row|
      puts row.to_hash
      break
    end
  end
end

