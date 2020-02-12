# Added feature for Wave 1 here:
def draw_letters
  letter_pool = {
    A: 9, B: 2, C: 2, D: 4, E: 12, F: 2, G: 3, H: 2, I: 9, J: 1,K: 1, L: 4, M: 2, N: 6, O: 8, P: 2, Q: 1, R: 6, S: 4, T: 6, U: 4, V: 2, W: 2, X: 1, Y: 2, Z: 1 
  }

  hand = []
  letter_pool.each do |letter, quantity|
    quantity.times do |i|
      hand << letter.to_s
    end
  end

  return hand.sample(10)
end


# Added feature for Wave 2 here:
def uses_available_letters?(input, letters_in_hand)

  # edge case
  return false if input.length > 10 || input.length < 1 

  temp_array = letters_in_hand.clone

  input.upcase!
  user_input_array = input.split("")

  user_input_array.each do |letter, i|
    return false if !temp_array.include?(letter)   

    # Delete a letter that was used from <temp_array>
    temp_array.delete(letter) 
  end 
  return true
end