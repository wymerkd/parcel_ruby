require 'rspec'
require 'parcel'

describe "#Parcel" do
  before(:each) do
    Parcel.clear()
  end

  describe('.all') do
    it('returns an empty array when there are no parcels') do
      expect(Parcel.all).to(eq([]))
    end
  end

  describe('#save') do
    it('saves a parcel') do
      parcel = Parcel.new(nil, nil, nil, "Package")
      parcel.save()
      parcel2 = Parcel.new(nil, nil, nil, "Package2")
      parcel2.save()
      expect(Parcel.all).to(eq([parcel, parcel2]))
    end
  end
end
