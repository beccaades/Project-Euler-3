describe '#largest_prime_factor' do
  it 'returns the correct sum when the limit is 10' do
    expect(largest_prime_factor(10)).to eq(5)
  end

  it 'returns the correct sum when the limit is 13195' do
    expect(largest_prime_factor(13195)).to eq(29)
  end

  # it 'returns the correct sum when the limit is 13195' do
  #   expect(largest_prime_factor(600851475143)).to eq(6857)
  # end
end