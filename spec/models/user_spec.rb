require 'rails_helper'

RSpec.describe User, type: :model do
  describe "#validate" do
    it { is_expected.to validate_presence_of(:login) }
    it { is_expected.to validate_presence_of(:email) }

    it { is_expected.to validate_uniqueness_of(:login) }
    it { is_expected.to validate_uniqueness_of(:email) }
  end
end
