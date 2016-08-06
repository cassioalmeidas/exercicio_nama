require_relative 'nama_multiple'

(1..35).each do |num|
  puts num.nama_multiple replace: {5 => "Nama", 7 => "Team", 35 => "Nama Team"}
end