require 'rails_helper'

RSpec.describe Check, type: :model do
  before do
    @count = FactoryBot.build(:count)
end

describe 'カウントの保存' do
  context 'カウントが登録できる場合' do
    it '入力に不備がなければ登録できる' do
      expect(@count).to be_valid
    end
  end
  context 'カウントが登録できない場合' do
    it 'dateが空では登録できない' do
      @count.date = ''
      @count.valid?
      expect(@count.errors.full_messages).to include("Date can't be blank")
    end
    it 'prepared_numberが空では登録できない' do
      @count.prepared_number = ''
      @count.valid?
      expect(@count.errors.full_messages).to include("Prepared number can't be blank")
    end
    it 'handed_numberが空では登録できない' do
      @count.handed_number = ''
      @count.valid?
      expect(@count.errors.full_messages).to include("Handed number can't be blank")
    end
    it 'unusedが空では登録できない' do
      @count.unused = ''
      @count.valid?
      expect(@count.errors.full_messages).to include("Unused can't be blank")
    end
    it 'ユーザーと紐づいていなければ登録できない' do
      @count.user = nil
      @count.valid?
      expect(@count.errors.full_messages).to include("User must exist")
    end     
  end
end
end