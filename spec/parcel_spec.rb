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

  describe("#==") do
    it("is the same parcel if it has the same attributes as another album") do
      parcel = Parcel.new(nil, "Test", nil, nil)
      parcel2 = Parcel.new(nil, "Test", nil, nil)
      expect(parcel).to(eq(parcel2))
    end
  end

  describe('.clear') do
    it("clears all parcels") do
      parcel = Parcel.new(nil, "Test", nil, nil)
      parcel.save()
      parcel2 = Parcel.new(nil, "Test", nil, nil)
      parcel2.save()
      Parcel.clear()
      expect(Parcel.all).to(eq([]))
    end
  end

  describe('.find') do
    it('finds a parcel by id') do
      parcel = Parcel.new(nil, nil, 'Package', nil)
      parcel.save()
      parcel2 = Parcel.new(nil, nil, 'Package', nil)
      parcel2.save()
      expect(Parcel.find(parcel.id)).to(eq(parcel))
    end
  end

  describe('#update') do
    it('updates a parcel by id') do
      parcel = Parcel.new(nil, nil, 'Package', nil)
      parcel.save()
      parcel.update("A Love Supreme")
      expect(parcel.name).to(eq("A Love Supreme"))
    end
  end

  describe('#delete') do
    it("deletes a parcel by id") do
      parcel = Parcel.new(nil, nil, 'Package', nil)
      parcel.save()
      parcel2 = Parcel.new(nil, nil, 'Package', nil)
      parcel2.save()
      parcel.delete()
      expect(Parcel.all).to(eq([parcel2]))
    end
  end
end
