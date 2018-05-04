require 'rails_helper'

describe OrderItem do
  it { should validate_numericality_of :quantity }
end
