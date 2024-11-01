class CreateReports < ActiveRecord::Migration[7.2]
  def change
    create_table :reports do |t|
      t.string :missing_element
      t.string :comment
      t.datetime :report_date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
