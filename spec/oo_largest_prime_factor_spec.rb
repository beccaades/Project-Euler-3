describe "LargestPrimeFactor" do
  let(:app) { LargestPrimeFactor.new(600851475143) }
  let(:invalid_app) { LargestPrimeFactor.new }

  describe "attributes and method tests" do
    subject { app }

    it "raises Argument Error when initialized without a limit parameter" do
      expect { invalid_app }.to raise_error(ArgumentError)
    end
  end
end

# describe '#largest_prime_factor' do
#   it 'returns the correct sum when the limit is 10' do
#     expect(largest_prime_factor(10)).to eq(5)
#   end

#   it 'returns the correct sum when the limit is 13195' do
#     expect(largest_prime_factor(13195)).to eq(29)
#   end

#   it 'returns the correct sum when the limit is 13195' do
#     expect(largest_prime_factor(600851475143)).to eq(6857)
#   end
# end