require "rails_helper"

describe Item do
  describe "#create" do
    it "アイテム名、画像、値段、カテゴリー、色が入力されていれば登録可能" do
      user = create(:user)
      item = build(:item, user_id: user.id)
      expect(item).to be_valid
    end

    it "アイテム名が空欄の場合はエラー" do
      item = build(:item, name: nil)
      item.valid?
      expect(item.errors[:name]).to include("を入力してください")
    end

    it "アイテム名が20文字以上の場合はエラー" do
      item = build(:item, name: "123456789012345678901")
      item.valid?
      expect(item.errors[:name]).to include("は20文字以内で入力してください")
    end

    it "画像が無い場合はエラー" do
      item = build(:item, image: nil)
      item.valid?
      expect(item.errors[:image]).to include("を入力してください")
    end

    it "価格が空欄の場合はエラー" do
      item = build(:item, price: nil)
      item.valid?
      expect(item.errors[:price]).to include("を入力してください")
    end

    it "価格が0より小さい場合はエラー" do
      item = build(:item, price: "-1")
      item.valid?
      expect(item.errors[:price]).to include("は0以上の値にしてください")
    end

    it "カテゴリーが空欄の場合はエラー" do
      item = build(:item, category_id: nil)
      item.valid?
      expect(item.errors[:category_id]).to include("を入力してください")
    end

    it "色が空欄の場合はエラー" do
      item = build(:item, color_id: nil)
      item.valid?
      expect(item.errors[:color_id]).to include("を入力してください")
    end

  end
end