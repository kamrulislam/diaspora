require File.dirname(__FILE__) + '/../spec_helper'
require File.dirname(__FILE__) + '/../../lib/hcard'

describe HCard do
  it 'should retreive and parse an hcard' do
    f = Redfinger.finger('tom@tom.joindiaspora.com')
    hcard = HCard.find f.hcard.first[:href]
    hcard[:family_name].include?("Hamiltom").should be true
    hcard[:given_name].include?("Alex").should be true
    hcard[:url].should  == "http://tom.joindiaspora.com/"
  end
end