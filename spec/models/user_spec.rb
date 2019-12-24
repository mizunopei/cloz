require "rails_helper"
describe User do
  describe "#create" do

    it "名前、メールアドレス、パスワード（確認含む）が入力されていれば登録できる" do
      user = build(:user)
      expect(user).to be_valid
    end

    it "名前が空欄の場合は登録出来ない" do
      user = build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("を入力してください")
    end

    it "emailが空欄の場合は登録出来ない" do
      user = build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("を入力してください")
    end

    it "パスワードが空欄の場合は登録出来ない" do
      user = build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("を入力してください")
    end
    it "パスワードと確認が一致していないと登録できない" do
      user = build(:user, password_confirmation: "")
      user.valid?
      expect(user.errors[:password_confirmation]).to include("とpasswordの入力が一致しません")
    end
  end
end