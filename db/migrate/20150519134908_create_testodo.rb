class CreateTestodo < ActiveRecord::Migration
  def change
  	create_table:testodos do |t|
  		t.string:taches
  		t.string:priorite
  		t.datetime:echeance
  	end
  end
end
