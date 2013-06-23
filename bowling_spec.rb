require_relative 'bowling'

class BowlingSpecs
  describe Bowling do

    before(:each) do
      @bowling = Bowling.new
    end

    it 'scores 0 for a gutterball' do
      score = @bowling.score [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score.should eq 0
    end

    it 'scores 10 for a strike' do
      score = @bowling.score [10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score.should eq 10
    end

    it 'scores 20 for a game of all 1s' do
      score = @bowling.score [1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1]
      score.should eq 20
    end

    it 'scores 20 for a spare then a 5' do
      rolls = [7,3,5,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score = @bowling.score(rolls)
      score.should eq 20
    end

    it 'scores 24 for a strike followed by a 4 and a 3' do
      score = @bowling.score [10,4,3,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score.should eq 24
    end


    it 'scores 30 for two strikes in a row' do
      score = @bowling.score [10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score.should eq 30
    end

    it 'scores 60 for three strikes in a row' do
      score = @bowling.score [10,10,10,0,0,0,0,0,0,0,0,0,0,0,0,0,0]
      score.should eq 60
    end

    it 'scores 270 when you miss the last two shots ' do
      score = @bowling.score [10,10,10,10,10,10,10,10,10,10,0,0]
      score.should eq 270
    end

    it 'scores 300 for a perfect game' do
      score = @bowling.score [10,10,10,10,10,10,10,10,10,10,10,10]
      score.should eq 300
    end

  end
end

