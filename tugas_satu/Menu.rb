require_relative 'Player'
@pemain = Array.new
@user = Array.new

j=0
pil = 'new'




def start
pil = 'serang'
while pil=='serang'
	puts 'welcome to the battle'
	puts 'Current Player:                            '
	for i in 0..@user.length-1
	puts "#  #{@user[i].name}                         "
	end
puts "ketik serang untuk memulai battle" 	
pil=gets.chomp	
if pil=='serang'	
	
puts "masukan nama pnyerang"
nama_penyerang= gets.chomp
indeks_penyerang = @pemain.index(nama_penyerang)

puts "masukan nama target serangan"
nama_diserang= gets.chomp
indeks_diserang = @pemain.index(nama_penyerang)

@user[indeks_penyerang].serang
@user[indeks_diserang].diserang


puts "manna #{nama_penyerang} = #{@user[indeks_penyerang].manna}"
puts "blood #{nama_diserang} = #{@user[indeks_diserang].blood}"
end
end
end



while (pil=='new')
puts "#===========================================#"
puts  "#         welcome to battle arena           #"
puts "#-------------------------------------------#"
puts "#Description:                               #"
puts '#1. Ketik "new" untuk membuat karakter      #'
puts '#2. Ketik "start" untuk memulai pertarungan #'
puts '#-------------------------------------------#'
puts '#Current Player:                            '
for i in 0..@user.length-1
puts "#  #{@user[i].name}                         "
end
puts '# *max player 2 atau 3                       '
puts '#-------------------------------------------#'

pil=gets.chomp

	if pil=='new'
	puts 'masukan nama karakter :'
	nama=gets.chomp
	@user[j]=Player.new nama
	@pemain[j] = nama
	j=j+1
	#puts "#{pil}"

	elsif pil=='start' 
	pil=='bukan new'
	start

	#puts "#{user[j-1].name}"

	end
end




