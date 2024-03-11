# frozen_string_literal: true

require 'rails_helper'

describe '投稿のテスト' do
  let!(:list) { create(:list, title:'hoge', body:'body') }
  describe 'トップ画面(top_path)のテスト' do
    before do
      visit top_path
    end
    context '表示の確認' do
      it 'トップ画面(top_path)に「ここはTopページです」が表示されているか' do
        expect(page).to have_link "", href: top_path
      end
      it 'top_pathが"/top"であるか' do
        expect(current_path).to eq('/')
      end
    end
  end
end
describe '投稿画面のテスト' do
  before do
    visit new_list_path
  end
  conext '表示の確認' do
    it 'new_list_pathが"/lists/new"であるか' do
      expect(page).to have_link "", href: new_list_path
    end
    it '投稿ボタンが表示されているか' do
      expect(page).to have_button ''
    end
  end
  context '情報処理のテスト' do
    it '投稿後のリダイレクト先は正しいか' do
    end
  end
end
