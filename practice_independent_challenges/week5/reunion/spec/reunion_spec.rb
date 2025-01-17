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

  describe 'event costs and participants of event' do
    before(:each) do
      @reunion = Reunion.new("1406 BE")
      @activity1 = Activity.new("Brunch")
      @activity2 = Activity.new("Basketball")
      @activity3 = Activity.new("Bouncy Castle")
      @reunion.add_activity(@activity1)
      @reunion.add_activity(@activity2)
      @reunion.add_activity(@activity3)

      @activity1.add_participant("Maria", 20)
      @activity1.add_participant("Luther", 40)

      @activity2.add_participant("Maria", 10)
      @activity2.add_participant("Kyle", 30)

      @activity3.add_participant("Kyle", 60)
      @activity3.add_participant("Luther", 60)
    end

    context 'total cost and owned for reunion' do
      it 'shows total cost' do
        expect(@reunion.total_cost_reunion).to eq(220)
      end

      it 'shows a participant and what they owe/are owed' do
        expected = {
          "Maria" => 20,
          "Luther" => -10,
          "Kyle" => -10
        }
        expect(@reunion.total_owed_reunion).to eq(expected)
      end

      it 'prints summary or participant and what they owe' do
        expected_owed = (
          "Maria: 20\n" +
          "Luther: -10\n" +
          "Kyle: -10\n"
          )
        expect(@reunion.summary).to eq(expected_owed)
      end

    end

  end



end