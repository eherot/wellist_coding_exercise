require 'rails_helper'

RSpec.describe User do
  it { should have_one(:wellist) }
  it { should have_many(:vendors) }
end
