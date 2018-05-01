require 'rails_helper'

describe Review do
  it { should validate_presence_of :author }
  it { should belong_to :product }
  it { validate_inclusion_of :rating }
  it { validate_length_of :comment }
end
