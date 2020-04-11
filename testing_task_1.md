### Testing task 1:

# Carry out static testing on the code below.
# Comment on any errors that you see below.
```ruby

class CardGame


  def checkforAce(card) # this should be a class method. ruby convention is to have snake_case. CamelCase has been done incorrectly
    if card.value = 1 # should be == not =. single = is for assignment.
      return true
    else
      return false
    end
  end

  dif highest_card(card1 card2) # def spelled incorrectly, dif should be def. Should be a class method. Missing comma between arguments.
  if card1.value > card2.value # indentation is incorrect
    return card  # should be card1. card is not an argument.
  else
    return card2 # cards could be equal. There should be a 3rd case.
  end
end # indentation is incorrect
end # defunct end. Should be removed.  

def self.cards_total(cards) #name should be more representative, this should give back total value of cards, don't know what card game relies on that. Number of card is used in some card games, this could be confusing when used.
  total   # total has not been initilized. should be total = 0
  for card in cards
    total += card.value
    return "You have a total of" + total # return statement should be outside of the for loop, this will print every total for every card. additional space after of, as there is no separation. total.to_s should be used for conversion, interpolation would be better.
  end
end #additional end required
```
