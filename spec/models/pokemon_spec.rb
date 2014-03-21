require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    it { should validate_presence_of(:nome) }

    describe 'id_nacional' do

      it { should validate_presence_of(:id_nacional) }
      it { should validate_numericality_of(:id_nacional).only_integer.is_greater_than(0) }
    end

    describe 'ataque' do

      context 'quando está aprovado' do

        subject do
          Pokemon.new(aprovado: true )
        end

        it { should validate_presence_of(:ataque) }
      end

      context 'quando não está aprovado' do

        subject do
          Pokemon.new
        end

        it { should_not validate_presence_of(:ataque) }
      end
    end
  end
end
