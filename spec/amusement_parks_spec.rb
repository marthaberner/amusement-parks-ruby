require 'rspec'
require 'amusement_parks'

describe AmusementPark do
  before do
    @data = [
      {
        :id=>546,
        :name=>"Kalahari Resorts",
        :city=>"Wisconsin Dells",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      {
        :id=>547,
        :name=>"Little Amerricka",
        :city=>"Marshall",
        :state=>"Wisconsin",
        :country=>"United States"
      }
    ]
  end
  it 'parks can be indexed by id' do
    input = AmusementPark.new(@data)

    expected = {
      546 => {
        :id=>546,
        :name=>"Kalahari Resorts",
        :city=>"Wisconsin Dells",
        :state=>"Wisconsin",
        :country=>"United States"
      },
      547 => {
        :id=>547,
        :name=>"Little Amerricka",
        :city=>"Marshall",
        :state=>"Wisconsin",
        :country=>"United States"
      }
    }

    expect(input.index_by_id).to eq(expected)

  end
end