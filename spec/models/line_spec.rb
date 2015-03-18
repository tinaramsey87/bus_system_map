require 'rails_helper'

describe Line do
  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
end
