#Ciclo while

#x = 1
#while x <= 5 do
#    puts "hola #{x}"
#    x+=1
#end

#Ciclo loop

x=1
loop do
    puts "hola"
    break if x >= 5
    x+=1
end

#
#Ciclo For}
for i in 1..4 do
    puts "que onda #{i}"
end

#Ciclo each
[1,2,3,4].each{|x| puts "ciclo each #{x}"}

#Ciclo times , solo para enteros

4.times{ |x| puts"times #{x}"}