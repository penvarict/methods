require './test_setup'
require './methods'

describe 'Methods' do

  describe 'sleep_in' do

    it 'should sleep in on the weekend at home' do
      sleep_in?(false, false).must_equal(true)
    end

    it 'should not sleep in during the week at home' do
      sleep_in?(true, false).must_equal(false)
    end

    it 'should sleep in on vacation on the weekend' do
      sleep_in?(false, true).must_equal(true)
    end

    it 'should sleep on vacation during the week' do
      sleep_in?(true, true).must_equal(true)
    end

  end
  
  describe 'monkey_trouble' do

    it 'is trouble when both monkeys are smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

    it 'is not trouble when only A is smiling' do
      monkey_trouble?(true, false).must_equal(false)
    end

    it 'is not trouble when only B is smiling' do
      monkey_trouble?(false, true).must_equal(false)
    end

    it 'is trouble when neither monkey is smiling' do
      monkey_trouble?(false, false).must_equal(true)
    end

  end

  describe 'sum_double' do
    
    it 'finds the sum' do
      sum_double(1, 2).must_equal(3)
    end

    it 'doubles the sum when the numbers are the same' do
      sum_double(3, 3).must_equal(12)
    end

  end

  describe 'blackjack' do


    it 'what card is closest' do 
      blackjack(19,20).must_equal(20)
    end 

    it 'what card is closest' do

      blackjack(23,9).must_equal(9)

    end
    it 'what card is closest' do

      blackjack(22,10).must_equal(10)

    end

    it 'what card is closest' do 

      blackjack(23,23).must_equal(0)

    end



  end

  describe "n_twice" do 
    it 'what characters should be printed' do
      n_twice("yomomma", 4).must_equal("yomo")

     end
    it 'what characters should be printed' do
      n_twice("computer", 5).must_equal("compu")

     end
    it 'what characters should be printed' do
      n_twice("computer", 30).must_equal("str is too long or short for word")
    end


  end

  describe "close_far" do
    it 'is it close or far?' do
      close_far(1,2,3).must_equal("close")#both are close
    end  

    it 'is it close or far?' do 
      close_far(2,4,9).must_equal("far") #both are far
    end
  
    it 'is it close or far?' do 
      close_far(3,4,9).must_equal("close") #one is close 
    end
  




  end
  
  
end
