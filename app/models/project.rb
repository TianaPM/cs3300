class Project < ApplicationRecord
    validates_presence_of :title, :description

    belongs_to :student
  end