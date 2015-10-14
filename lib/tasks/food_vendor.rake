require 'csv'	
namespace :times_square_data do
	desc "this is the list of food vendor in Times Square"
	task import: :environment do
		

		CSV.foreach("Times_Square.csv", :headers => true) do |row|

		FoodVendor.create({
		
		:name => row[0],
		:subindustry => row[1],
		:sub_subindustry => row[2],
		:phone => row[3],
		:website => row[4]
			
		})			
		end
	end
end
