# frozen_string_literal: true

require "rails_helper"

describe "モデルのテスト" do
  it "有効ば投稿内容の場合は保存されるか" do
    expect(FactoryBot.build(:list)).to be_valid
  end
end
