class Task < ActiveRecord::Base

  belongs_to :challenge
  has_many :gains, :dependent => :destroy

  after_create :setup_gains

  def setup_gains
    users = User.all()
    users.each do |user|
      user.gains.create(task_id: self.id)
    end

  end

end
