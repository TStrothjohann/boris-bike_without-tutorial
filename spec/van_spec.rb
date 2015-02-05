require 'van'

describe Van do
	let(:van){Van.new}
	let(:station){DockingStation.new}
	let(:bike){double :bike, {broken?: false}}
	let(:broken_bike){double :bike, {broken?: true}}


	it 'should collect broken bikes' do
		station.dock(broken_bike)
		station.dock(bike)
		van.get_broken_bikes_from(station)
		expect(station.broken_bikes.count).to eq 0
		
	end
end	
