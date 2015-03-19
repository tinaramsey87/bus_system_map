require 'rails_helper'

describe Line do
  it { should have_many :stops }
  it { should have_many :stations}

  it { should validate_presence_of :name }
  it { should validate_presence_of :number }
end
