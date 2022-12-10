class AutomateDisturb
    attr_reader :sold,:id #user's id and its sold
    @@count=0 #count the number of users 
    def initialize(sold)
        @sold=sold 
        @id=(@@count+=1)
        puts "carte entrée\n"
    end    
    def verification_solde
        puts"Votre est de #{@sold} Ar"
    end

    def minimum_billet(amount)
       if amount<sold #verify if the amount is cheaper than the sold 
         
            if amount%20000==0 #if amount is a 20000Ar multiple
                puts"#{amount} = (20000 * #{amount/20000}) Ar"
            else 
                if ((amount%20000)%10000)==0
                    puts"#{amount} = (20000 * #{amount/20000}) et (10000 * #{(amount%20000)/10000}) Ar"
                
                else 
                    puts"#{amount} = (20000 * #{amount/20000}) et (10000 * #{(amount%20000)/10000} et #{((amount%20000)%10000)}) Ar"        
                end
            end
       else puts"transaction impossible car le montant est superieur a votre solde"  
      end  
    end              
    def balance_billet(amount)
        #amount is the user's money that he wants to keep
        if amount<@sold
            nb5000=amount/5000
            
            
                #we count the amount that the user takes and we'll cut that into 5000 Ar product
            if nb5000*5000==amount 
                puts "#{amount} vaut 5000 * #{nb5000} Ar\n"
            else 
                puts"#{amount} vaut 5000 * #{nb5000} et #{amount% 5000} Ar\n"    
            end
            #we substract the sold with the amount because the user take the money from the sold    
            @sold-=amount
        else 
            puts"transaction impossible vous n'avez pas assez d'argent sur votre solde"   
        end
    end
    #ANDRIARIMANANA Andy Andrianina ESIIA 3 n 18
end  


#the user enters the card.The card must have unless 50000Ar in his sold
user1 = AutomateDisturb.new(100000)
user1.verification_solde


#user's input
puts "Entrer le montant a retirer (minimum 30000Ar)"
amountUser=gets.chomp.to_i

puts "Faites un choix entre 1 et 2\n"
puts "1:Balancer le nombre de billet\n"
puts "2:Minimum de billet\n"

choice=gets.chomp.to_i

if choice==1 
    user1.balance_billet(amountUser)
else 
    user1.minimum_billet(amountUser)    
end    
# puts 'Card entered'
# sold=