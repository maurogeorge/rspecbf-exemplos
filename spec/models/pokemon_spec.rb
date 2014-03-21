require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    it { should validate_presence_of(:nome) }

    describe 'id_nacional' do

      it { should validate_presence_of(:id_nacional) }
      it { should validate_numericality_of(:id_nacional).only_integer.is_greater_than(0) }
    end
  end
end
