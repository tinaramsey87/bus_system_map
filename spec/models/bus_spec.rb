require 'rails_helper'

describe Bus do
  it { should have_and_belong_to_many :stations }

  it { should validate_presence_of :number }
end
