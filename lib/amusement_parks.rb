class AmusementPark

  def initialize(data)
    @data = data
  end

  def index_by_id
    result = {}
    @data.each do |hash|
      x = hash[:id]
      result[x] = hash
    end
   result

  end
end