class Event < ActiveRecord::Base
  attr_accessible :end_at, :name, :start_at, :user
  has_event_calendar
end
