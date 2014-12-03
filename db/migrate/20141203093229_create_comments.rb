class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
    	t.text :text
    	t.string   "email",                  default: "", null: false
   		t.string   "encrypted_password",     default: "", null: false
   		t.string   "reset_password_token"
   		t.datetime "reset_password_sent_at"
   		t.datetime "remember_created_at"
   		t.integer  "sign_in_count",          default: 0,  null: false
   		t.datetime "current_sign_in_at"
   		t.datetime "last_sign_in_at"
   		t.string   "current_sign_in_ip"
   		t.string   "last_sign_in_ip"
    	t.timestamps
    end
  end
end
