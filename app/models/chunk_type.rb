# frozen_string_literal: true

# Material chunks has one type:
#  - text
#  - image
#  - formulae
#  - audio
#  - video
class ChunkType < ApplicationRecord
  has_many :chunks

  validates :name, presence: true
  validates :display_name, presence: true
end
