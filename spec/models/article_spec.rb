require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :id }
    it { is_expected.to have_db_column :title }
    it { is_expected.to have_db_column :content }
  end

  describe 'Validations' do
    it { is_expected.to validate_presence_of :title }
    it { is_expected.to validate_presence_of :content }
    it { is_expected.not_to allow_value(' 5h@gmai.com').for :email }
  end

  describe 'Relations' do
    it { is_expected.to have_many :comments }
  end
end
