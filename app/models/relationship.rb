class Relationship < ActiveRecord::Base
  belongs_to :individual
  enum relation: { marriage: 1, parents: 2 }
  validates_presence_of :individual_id_1, :individual_id_2, :relation
  def check_relation
    Relationship.where(:individual_id_1)
  end
end
