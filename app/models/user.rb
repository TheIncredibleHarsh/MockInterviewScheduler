class User < ApplicationRecord
    has_one :interviewer_profile
    has_one :interviewee_profile
end
