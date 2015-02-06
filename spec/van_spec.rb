require 'van'

describe Van do

	let(:broken_bike){double :bike, broken?: true}
	let(:bike){double :bike, broken?: false}
	let(:brokenbikedepot){double :brokenbikedepot, bikes: [broken_bike, broken_bike, bike, bike, bike]}
	let(:van){Van.new}
	
	it 'it should be able to receive bikes' do
		van.dock(broken_bike)
		van.dock(bike)
		expect(van.bike_count).to eq(2)
	end

	it "should call the brokenbikedepot's release_broken_bikes method"  do
		expect(brokenbikedepot).to receive :release_broken_bikes
		van.collect_broken_bikes(brokenbikedepot)

	end

	

	
end	
