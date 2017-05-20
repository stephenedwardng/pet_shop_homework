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
      # question for 1 to 1
      # how do I delete the entire :pets element of Arthur?
    end

  end

end

