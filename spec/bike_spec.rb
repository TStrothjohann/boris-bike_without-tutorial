require 'bike'

describe Bike do
	
	let(:bike) {Bike.new}
	let(:brokenbike) { Bike.new.break! }

	it 'should be created without being broken' do
		expect(bike).not_to be_broken
	end

	it 'should break' do
		bike.break!
		expect(bike).to be_broken
	end

	it 'should be able to get fixed' do
		brokenbike.fix!
		expect(bike).not_to be_broken
	end

end
