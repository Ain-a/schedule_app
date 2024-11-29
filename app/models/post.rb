class Post < ApplicationRecord
    validates :title, presence: true, length: {maximum:20}
    validates :start_day, presence: true
    validates :end_day, presence: true
    validate :start_end_day
    validates :memo, length: {maximum:500}

    def start_end_day
        return if  start_day.blank? && end_day.blank?
            if end_day < start_day
            errors.add(:end_day, "は開始日よりも前の日付は使えません")
        end
    end
end