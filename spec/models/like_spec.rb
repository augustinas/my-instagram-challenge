require 'spec_helper'

RSpec.describe Like, type: :model do

  it { is_expected.to belong_to :post }

end