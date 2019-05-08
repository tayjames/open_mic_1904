
class User
attr_reader :name, :jokes

def initialize(name)
  @name = name
  @jokes = []
end

def learn(joke)
  @jokes << joke
  @jokes
end

def tell(user, joke)
  if user.jokes.include?(joke) == false
    user.jokes << joke
  end
end

def joke_by_id(index)
  match_index = []
  @jokes.each do |joke|
    if joke.id == index
      match_index << joke
    end
  end
  match_index.first
end
end
