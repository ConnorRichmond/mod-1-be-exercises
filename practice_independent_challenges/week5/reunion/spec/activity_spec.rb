require './lib/activity'


describe Activity do

  describe 'creating activity with participants' do

    before(:each) do
      @activity = Activity.new("Brunch")
    end

    context '#initialize' do
      it 'exists' do
        expect(@activity).to be_an(Activity)
      end

      it 'has attributes' do
        expect(@activity.name).to eq("Brunch")
        expect(@activity.participants).to eq({})
      end
    end

    context 'participants' do
      it 'adds participants' do
        expect(@activity.participants).to eq({})

        @activity.add_participant("Maria", 20)
        expect(@activity.participants).to eq({"Maria" => 20})
      end
    end

    context 'total costs from participants' do
      it 'calculates total costs' do
        @activity.add_participant("Maria", 20)
        expect(@activity.total_cost).to eq(20)

        @activity.add_participant("Luther", 40)
        expect(@activity.participants).to eq({
          "Maria" => 20, 
          "Luther" => 40
        })
        expect(@activity.total_cost).to eq(60)
      end
    end
  end

  describe 'splits costs with participants' do
    before(:each) do
      @activity = Activity.new("Brunch")
      @activity.add_participant("Maria", 20)
      @activity.add_participant("Luther", 40)
    end

    context 'splits costs with participants' do
      it 'splits costs' do
        expect(@activity.total_cost).to eq(60)
        expect(@activity.split).to eq(30)
      end

      it 'what is owed between participants' do
        expect(@activity.owed).to eq({
          "Maria" => 10,
          "Luther" => -10
        })
      end
    end


  end


end