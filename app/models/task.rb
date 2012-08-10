class Task < ActiveRecord::Base
  attr_accessible :completed, :due_date, :title, :priority, :user_id
  
  belongs_to :user
end
