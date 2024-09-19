class Movie < ApplicationRecord
  has_many :bookmarks
  before_destroy :not_referenced_by_any_bookmark

  private

  def not_referenced_by_any_bookmark
    if bookmarks.exists?
      errors.add(:base, "You can't delete a movie if it is referenced in at least one bookmark.")
      throw(:abort)
    end
  end
end
