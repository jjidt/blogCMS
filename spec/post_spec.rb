require 'rails_helper'

describe Post do
  it { should validate_presence_of :title }
  it { should validate_presence_of :content }
  it { should have_many :comments }

  context '#format_date' do
    it 'should put the created_at date into correct display format' do
      test_post = Post.create({:title => 'test', :content => 'no content'})
      expect(test_post.format_date).to eq "#{Time.now.month}/#{Time.now.day}/#{Time.now.year}"
    end
  end
end
