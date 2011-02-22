# Generates part of the right hand side for the data production
# for Project Euler Problem 11 in Soar
#
# By Jonathan Voigt <voigtjr@gmail.com>
#

def p11
    IO.readlines("data11.txt").each_with_index do |x, i|
        x.split.each_with_index do |y, j|
            id = sprintf("<c%02d%02d>", i, j)
            unless i == 19
                right = sprintf("<c%02d%02d>", i + 1, j) 
            else
                right = "nil"
            end
            unless j == 19
                down = sprintf("<c%02d%02d>", i, j + 1) 
            else
                down = "nil"
            end
            unless right == "nil" || down == "nil"
                diag = sprintf("<c%02d%02d>", i + 1, j + 1) 
            else
                diag = "nil"
            end
            puts "    (<t> ^cell " + id + ")"
            puts "    (" + id + " ^value " + y + " ^right " + right + " ^diag " + diag + " ^down " + down + ")"
        end
    end
end

p11

