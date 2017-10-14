require 'rails_helper'

RSpec.describe Vendor do
  it { should have_many(:wellists) }
end
