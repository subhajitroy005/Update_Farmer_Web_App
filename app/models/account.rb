class Account < ApplicationRecord
        validates :username , presence: true, length: {minimum: 6 , maximum: 200}
        validates :password , presence: true, length: {minimum: 6 , maxumum: 1000}
end
