require 'rails_helper'

describe Station do
  it { should have_and_belong_to_many :buses }
  it { should belong_to :line }

  it { should validate_presence_of :name }
end
