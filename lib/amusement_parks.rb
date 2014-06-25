class AmusementPark

  def initialize(data)
    @data = data
  end

  def index_by_id
    result = {}
    @data.each do |hash|
      key = hash[:id]
      result[key] = hash
    end
    result
  end

  def index_by_country
    result = {}
    @data.each do |hash|
      key = hash[:country]
      result[key] = [hash]
    end
    result
  end
end