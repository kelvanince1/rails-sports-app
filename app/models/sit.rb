class Sit < ApplicationRecord
  belongs_to :players, optional: true
end
