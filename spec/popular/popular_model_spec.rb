shared_examples "a popular model" do

  describe '.befriend!' do
    it 'creates a one way friendship' do
      popular_model.befriend! another_popular_model

      expect( popular_model).to be_friends_with another_popular_model
    end

    context 'successful' do
      it 'triggers after_befriend callback' do
        popular_model_with_after_befriend_callback
          .should_receive( :callback_worked )
          .once
          .and_return true

        popular_model_with_after_befriend_callback.befriend! another_popular_model
      end
    end
  end

  describe '.befriend' do

    context 'successful' do
      it 'triggers after_befriend callback' do
        popular_model_with_after_befriend_callback
          .should_receive( :callback_worked )
          .once
          .and_return true

        popular_model_with_after_befriend_callback.befriend another_popular_model
      end

      it 'creates a one way friendship' do
        popular_model.befriend another_popular_model

        expect( popular_model).to be_friends_with another_popular_model
      end
    end

  end

  describe '#friends_with?' do
    it 'returns true if a popular_model is friends with a given popular_model' do
      expect( popular_model ).to_not be_friends_with another_popular_model
    end
    it 'returns true if a popular_model is friends with a given popular_model' do
      popular_model.befriend another_popular_model

      expect( popular_model ).to be_friends_with another_popular_model
    end
  end

  describe '.unfriend' do
    it 'destroys a friendship' do
      [:befriend, :unfriend].each do |method|
        popular_model.send method, another_popular_model
      end

      expect( popular_model).to_not be_friends_with another_popular_model
    end
  end

end
