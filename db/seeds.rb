# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'

if server.code_name = "llamas_in_pijamas"

  CSV.foreach(Rails.root.join('lib/report.csv'), headers: true) do |row|

    Lock.create({
      timestamp: row[0],
      lock_id: row[1],
      kind: row[2],
      status_change: row[3]
    })

  end

else 
  returns "Access denied"
end
  

