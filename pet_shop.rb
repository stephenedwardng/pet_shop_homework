def pet_shop_name(pet_shop) # pass hash 'pet_shop' to method
  # access key ':name' in hash "pet_shop'
  return pet_shop[:name] 
end

def total_cash(pet_shop)
   return pet_shop[:admin][:total_cash]
end

def add_or_remove_cash(pet_shop, added_removed)
  return pet_shop[:admin][:total_cash] += added_removed
end 

def pets_sold(pet_shop)
  return pet_shop[:admin][:pets_sold]
end

def increase_pets_sold(pet_shop, new_pets)
  return pet_shop[:admin][:pets_sold] += new_pets
end

def stock_count(pet_shop)
  return pet_shop[:pets].count()
end

def pets_by_breed(pet_shop, breed_type)
  # Create array to collect the pets
  pets = []

  # If == breed then push to array
  for pet in pet_shop[:pets]
    if pet[:breed] == breed_type
       pets.push(pet)
    end
  end

  # return array only
  return pets
end

def find_pet_by_name(pet_shop, pet_name)

  # if == pet_name then return element
  for pet in pet_shop[:pets]
    if pet[:name] == pet_name
      return pet
    end
  end

  # specify 'nil' to be returned if not found 
  return nil

end

def remove_pet_by_name(pet_shop, pet_name)
  # loop through the array :pets
  for pet in pet_shop[:pets]
    # if name found then delete
    if pet[:name] == pet_name
      pet.delete(:name)
      # question for 1 to 1 with tutor
      # how do I delete the entire :pets element of Arthur?
    end
  end

end

def add_pet_to_stock(pet_shop, new_pet)
  # add hash new_pet to pet_shop pets
  pet_shop[:pets] << new_pet
end

def customer_pet_count(customers)
  # count customers pets
  return customers[:pets].count()
end

def add_pet_to_customer(customer, new_pet)
  # add new pet to array 'customer' (specified at index 0 in test)
  customer[:pets] << new_pet
end

def customer_can_afford_pet(customer, new_pet)
  # if customer cash >= pet price return true, if not then false
  return customer[:cash] >= new_pet[:price] ? true : false
end

def sell_pet_to_customer(pet_shop, pet, customer)
  # check find_pet_by_name_pet is not nil && customer has funds
  if pet != nil && customer[:cash] >= @new_pet[:price]  

  # add pet to customer
  customer[:pets] << pet 

  # increment pets_sold
  pet_shop[:admin][:pets_sold] += 1

  # add price to total_cash 
   pet_shop[:admin][:total_cash] += pet[:price]
  
  end
end