class Parcel
  attr_accessor :id, :name, :weight, :height
  @@parcels = {}
  @@total_rows = 0

  def initialize(id, name, weight, height)
    @name = name
    @id = id || @@total_rows +=1
    @weight = weight
    @height = height
  end

  def self.all
    @@parcels.values()
  end

  def save
    @@parcels[self.id] = Parcel.new(self.id, self.name, self.weight, self.height)
  end

  def ==(parcel_to_compare)
    self.name() == parcel_to_compare.name()
  end

  def self.clear
    @@parcels = {}
    @@total_rows = 0
  end

  def self.find(id)
    @@parcels
  end

  def update(name)
    @name = name
  end

  def delete
    @@parcels.delete(self.id)
  end
end
