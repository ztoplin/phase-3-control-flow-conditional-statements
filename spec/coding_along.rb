dog = "cuddly"

if dog == "hungry"
    owner = "Refilling food bowl."
elsif dog == "thirsty"
    owner = "Refiling water bowl."
elsif dog == "playful"
    owner = "Playing tug-of-war."
elsif dog == "cuddly"
    owner = "Snuggling."
else
    owner = "Reading newspaper."
end


# In Ruby, unlike, if/else statements have a return value, which means we could refactor the code above as follows:

dog = "cuddly"

owner = if dog == "hungry"
            "Refilling food bowl."
        elsif dog == "thirsty"
            "Refiling water bowl."
        elsif dog == "playful"
            "Playing tug-of-war."
        elsif dog == "cuddly"
            "Snuggling."
        else
            "Reading newspaper."
        end 


# 'unless' acts as the opposite of 'if'

timer = 15

unless timer == 0
    puts "Still cooking"
end 

# You could write the equivalent of the above code with an 'if' statement and a negative condition:

timer = 15

if timer != 0
    puts "Still cooking"
end


# In Ruby, only two values are considered falsy: 'false' and 'nil'.

def control_flow(value)
    if value
        # i.e. if value is truthy
        puts "yep!"
    else
        # i.e. if the value is falsy
        puts "nope!"
    end
end

control_flow(false)
# => "nope!"
control_flow(nil)
# => "nope!"
control_flow(true)
# => "yep!"
control_flow("")
# => "yep!"
control_flow(0)
# => "yep!"


# in Ruby, we can use statement modifiers and write conditions at the end of a line of code. We can rewrite this example:

this_year = Time.now.year
if this_year == 2046
    puts "Hey, it's 2046!"
end 

# as this:

this_year = Time.now.year
puts "Hey, it's 2046" if this_year == 2046

# 'unless' can also be used as a statement modifier:
fav_cookie = "Chocolate Chip"
puts "Your opinion is invalid" unless fav_cookie == "Chocolate Chip"

# Ruby also has 'case' statements, which are used to run multiple conditions against one value. They can be useful as a replacement for if/else statements, when all the conditions use the same comparison

dog = "cuddly"

owner = case dog
        when "hungry"
            "Refilling food bowl."
        when "thirsty"
            "Refiling water bowl."
        when "playful"
            "Playing tug-of-war."
        when "cuddly"
            "Snuggling."
        else
            "Reading newspaper."
        end 

# You can also use 'then' with 'when' to shorten up each condition to a single line:

dog = "cuddly"

owner = case dog    
        when "hungry" then "Refilling food bowl."
        when "thirsty" then "Refiling water bowl."
        when "playful" then "Playing tug-of-war."
        when "cuddly" then "Snuggling."
        else "Reading newspaper."
        end 

