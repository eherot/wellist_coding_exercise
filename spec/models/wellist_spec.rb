require 'rails_helper'

RSpec.describe Wellist do
  it { should belong_to(:user) }
  it { should have_many(:vendors) }
end
