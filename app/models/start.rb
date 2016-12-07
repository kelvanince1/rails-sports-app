class Start < ApplicationRecord
  belongs_to :players, optional: true
end
