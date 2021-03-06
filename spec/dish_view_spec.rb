require 'dish_view'

describe DishView do
  let(:name) { 'name' }
  let(:price) { 8 }
  let(:item) { double :item, name: name, price: price }
  subject { described_class.new(item) }

  describe '#display' do
    it 'displays the dish' do
      expect(subject.display).to eq "  #{name.ljust(30)}£#{format("%.2f", price)}"
    end
  end
end
