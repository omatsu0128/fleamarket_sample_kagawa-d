require 'rails_helper'
describe Destination do
  describe '#create' do
    before do
      @destination = build(:destination)
    end

    it "post_code、prefecture_id、city、house_numberがあれば登録できること" do
      expect(@destination).to be_valid
    end

    it "post_codeが空では登録できないこと" do
      @destination.post_code = nil
      @destination.valid?
      expect(@destination.errors[:post_code]).to include("を入力してください")
    end

    it "prefecture_idが空では登録できないこと" do
      @destination.prefecture_id = nil
      @destination.valid?
      expect(@destination.errors[:prefecture_id]).to include("を入力してください")
    end

    it "cityが空では登録できないこと" do
      @destination.city = nil
      @destination.valid?
      expect(@destination.errors[:city]).to include("を入力してください")
    end

    it "house_numberが空では登録できないこと" do
      @destination.house_number = nil
      @destination.valid?
      expect(@destination.errors[:house_number]).to include("を入力してください")
    end

  end
end
