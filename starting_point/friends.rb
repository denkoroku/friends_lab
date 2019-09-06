@person1 = {
  name: "Shaggy",
  age: 12,
  monies: 1,
  friends: ["Velma","Fred","Daphne", "Scooby"],
  favourites: {
    tv_show: "Friends",
    snacks: ["charcuterie"]
  }
}

@person2 = {
  name: "Velma",
  age: 15,
  monies: 2,
  friends: ["Fred"],
  favourites: {
    tv_show: "Baywatch",
    snacks: ["soup","bread"]
  }
}

@person3 = {
  name: "Scooby",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma"],
  favourites: {
    tv_show: "Pokemon",
    snacks: ["Scooby snacks"]
  }
}

@person4 = {
  name: "Fred",
  age: 18,
  monies: 20,
  friends: ["Shaggy", "Velma", "Daphne"],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spaghetti", "ratatouille"]
  }
}

@person5 = {
  name: "Daphne",
  age: 20,
  monies: 100,
  friends: [],
  favourites: {
    tv_show: "X-Files",
    snacks: ["spinach"]
  }
}


def get_name(person)
  return person[:name]
end

def getting_favourite_tv_show(person)
  return person[:favourites][:tv_show]
end



def likes_to_eat(person, food)
  for snack in person[:favourites][:snacks]
    if snack == food
      return true
    end
  end
return false
end

# def add_friend(person, new_friend)
#   person[:friends].push(new_friend)
#   return person[:friends].count
# end

def add_friend(person, new_friend)
  person[:friends].push(new_friend)
end



def delete_friend(person, ex_friend)
  person[:friends].delete(ex_friend)
  return person[:friends].count
end

# def delete_friend(person, ex_friend)
#   person[:friends].delete(ex_friend)
# end

def total_money(people)
  total_money = 0
  for person in people
  total_money += person[:monies]
  end
  return total_money
end

#
# def loan(lender, lendee, amount)
#   new_lender_money = lender[:monies] - amount.to_i
#   new_lendee_money = lendee[:monies] + amount.to_i
#   lender[:monies] = new_lender_money
#   lender[:monies] = new_lendee_money
#   return lender[:monies]
# end
#



def loan(lender, lendee, amount)
  lender[:monies] = lender[:monies] - amount.to_i
  lendee[:monies] = lendee[:monies] + amount.to_i
end


# def all_favourite_food(people)
# favourite_food_arr = []
#   for person in people
#     favourite_food_arr.push.concat(person[:favourites][:snacks])
#   end
# return favourite_food_arr.sort
# puts favourite_food_arr
# end


def all_favourite_food(people)
favourite_food_arr = []
  for person in people
    for snack in person
      favourite_food_arr.push(person[:favourites][:snacks][snack])
    end
  end
return favourite_food_arr.sort
puts favourite_food_arr
end



#
# def all_favourite_food(people)
# favourite_food_arr = []
#   for person in people
#     favourite_food_arr.push(person[:favourites][:snacks])
#   end
# return favourite_food_arr.sort
# puts favourite_food_arr
# end
