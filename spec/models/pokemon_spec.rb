require 'spec_helper'

describe Pokemon do

  describe 'validações' do

    include_examples 'valida presenca de string', Pokemon, :nome
  end
end
