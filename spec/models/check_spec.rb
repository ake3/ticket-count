require 'rails_helper'

RSpec.describe Check, type: :model do
  before do
    @check = FactoryBot.build(:check)
end

describe 'チェックの保存' do
  context 'チェックが登録できる場合' do
    it '入荷枚数を入力すると登録できる' do
      expect(@check).to be_valid
    end
  end
  context 'チェックが登録できない場合' do
    it '入荷枚数が空では登録できない' do
      @check.arrival = ''
      @check.valid?
      expect(@check.errors.full_messages).to include("Arrival can't be blank")
    end
    it 'ユーザーと紐づいていなければ登録できない' do
      @check.user = nil
      @check.valid?
      expect(@check.errors.full_messages).to include("User must exist")
    end     
  end
end
end

