require 'rails_helper'

RSpec.describe QuestionsController, type: :controller do
  
  let(:questions){ create_list(:question, 2)}
  let(:question){ create(:question)}

  describe 'GET #index' do    
    before {get :index}
    it 'populates an array of all questions' do
      expect(assigns(:questions)).to match_array(questions)
    end
    it 'renders index view' do
      expect(response).to render_template :index
    end
  end

  describe 'GET #show' do
    before { get :show, id: question }
    it 'assigns the requested question to @question' do
      expect(assigns (:question)).to eq question
    end
    it 'renders show view' do
      expect(response).to render_template :show
    end
  end


end