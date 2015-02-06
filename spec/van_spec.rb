require 'van'

describe Van do

	let(:broken_bike){double :bike, broken?: true}
	let(:bike){double :bike, broken?: false}
	let(:van){Van.new}
	
	it 'it should be able to receive bikes' do
		van.dock(broken_bike)
		van.dock(bike)
		expect(van.bike_count).to eq(2)
	end




	
end	
