require 'spec_helper'

describe Reunion do

  describe 'creates a reunion with activities' do

    before(:each) do
      @reunion = Reunion.new("1406 BE")
    end

    context '#initialize' do
      it 'exitst' do
        expect(@reunion).to be_a(Reunion)
      end

      it 'has atributes' do
        expect(@reunion.class_name).to eq("1406 BE")
        expect(@reunion.activities).to eq([])
      end
    end

    context '#add_activity' do
      it 'adds activities' do
        activity1 = Activity.new("Brunch")
        @reunion.add_activity(activity1)

        expect(@reunion.activities).to eq([activity1])
      end
    end

  end



end