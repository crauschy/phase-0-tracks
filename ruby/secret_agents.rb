#METHOD DECLARATIONS

#1: ENCRYPT METHOD
#Ask user for "password" to encrypt. Assign password variable.

#puts "Choose and type a password to be encrypted. It must be in all lower-case letters."
#password = gets.chomp

#Define encrypt method that advances each letter of password string one letter forward in alphabet:
def encrypt(x)
  #Assign counter variable.
  counter = 0
  #Print password to be encrypted.
puts "Ok, so the password you wish to encrypt is:
  [#{x}]
Easy peasy... Your password will be encrypted..."
  #Write loop to rewrite each letter as next letter in alphabet
  while counter < x.length
    if x[counter] == "z"
      x[counter] = "a"
    else x[counter] =
      x[counter].next!
    end
    #advance the counter
    counter += 1
  end
  #Print encrypted password
  puts "Your password is now encrypted as:
  [#{x}]"
  #Return (now encrypted) password
  return x
end

#encrypt(password)

#Time to decrypt
#puts "Great!!!
#Now, we will decrypt our newly encrypted password to return it to normal.
#When you're ready to decrypt, hit return."
#pause = gets.chomp

#2: DECRYPT METHOD
#Reverse encrypt method to return to the original password


  #then pushes the letter corresponding to the new position into our empty string, returning a new string that is our original password.

def decrypt(x)
  #Define new counter variable.
  counter = 0
  #Declare an empty string
  decrypted_password = ""
  #Loop through each letter of encrypted password to return to original letter
  while counter < x.length
    #assign alphabet string
    alphabet = "abcdefghijklmnopqrstuvwxyz"
    #define letter's position as an index of the alphabet,
    encrypted_position = alphabet.index(x[counter])
    #assign new variable to move back a position in the alphabet
    decrypted_position = encrypted_position - 1
    #push new letters into empty string
    decrypted_password<<alphabet[decrypted_position]
    #advance the counter
    counter += 1
  end
  #print decrypted password
  puts "Your original password was #{decrypted_password}."
  #return decrypted password
  decrypted_password
end

#decrypt(password)

#encrypt("abc")
#encrypt("zed")
#decrypt("bcd")
#decrypt("afe")

#p decrypt(encrypt("swordfish"))


#DRIVER CODE

#Ask user whether to decrypt or encrypt a password
puts "Hello Secret Agent. Would you like to decrypt or encrypt a password?"
crypt_direction = gets.chomp

#Ask for the password
puts "What is the password you would like to #{crypt_direction}?"
password = gets.chomp

#Does chosen operation
if crypt_direction == "encrypt"
  encrypt(password)
elsif crypt_direction == "decrypt"
  decrypt(password)
else puts "You have typed incorrectly. Try again"
end






