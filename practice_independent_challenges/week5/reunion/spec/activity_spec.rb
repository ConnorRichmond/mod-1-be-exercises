require './lib/activity'


describe Activity do

  before(:each) do
    @activity = Activity.new("Brunch")
  end

  describe '#initialize' do
    it 'exists' do
      expect(@activity).to be_an(Activity)
    end

    it 'has attributes' do
      expect(@activity.name).to eq("Brunch")
      expect(@activity.participants).to eq({})
    end
  end

  describe 'participants' do
    it 'adds participants' do
      expect(@activity.participants).to eq({})

      @activity.add_participants("Maria", 20)
      expect(@activity.participants).to eq({"Maria" => 20})
    end
  end

  describe 'total costs from participants' do
    it 'calculates total costs' do
      @activity.add_participants("Maria", 20)
      expect(@activity.total_cost).to eq(20)

      @activity.add_participants("Luther", 40)
      expect(@activity.participants).to eq({
        "Maria" => 20, 
        "Luther" => 40
      })
      expect(@activity.total_cost).to eq(60)
    end
  end


end