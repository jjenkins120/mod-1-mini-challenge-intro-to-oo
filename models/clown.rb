=begin
- [x] `Clown.new(name, age, skill, fears)`
    - *return* a new Clown instance with a name (string), age (number), skill (string) and fears (string)
- [x] `Clown#name`
    - *return* the clown's name.
- [x] `Clown#name=(value)`
    - *set* a new name for the clown.
- [X] `Clown#age`
    - *return* the clown's age.
- [X] `Clown#skill`
    - *return* the clown's skill.
- [x] `Clown#skill=(value)`
    - *set* new skill for the clown.
- [x] `Clown#fears`
    - *return* the clown's fears.
- [X] `Clown#lie_about_age(new_age)`
    - *set* a new age for the clown.
- [X] `Clown#overcome_fears`
    - *set* the clown's fears to `nil`.
- [X] `Clown#say_hi`
    - *output* a string in the following format: `Hello my name is Krusty. I'm 55 years old. I'm good at juggling chainsaws and terrified of failure.`
- [X] `Clown.all`
    - *return* an array of all Clown instances that have been created in our application.
- [X] `Clown.names`
    - *return* an array of strings for each clown's name
- [X] `Clown.find_by_name(name)`
    - *return* a single Clown instance for the clown whose name matches the name argument for this method.
- [X] `Clown.oldest`
    - *return* a single Clown instance for the clown with the highest age.
- [X] `Clown.fearless`
    - *return* an array of Clown instances who have overcome their fears (i.e. their fears is `nil`)
=end



class Clown
  # write methods here!
  attr_accessor :name, :skill
  attr_reader :age, :fears

  @@all = []
  @@name = []

  def initialize(name, age, skill, fears=nil)
    @name = name
    @age = age
    @skill = skill
    @fears = fears
    @@all << self
    @@name << self.name
  end  

  def lie_about_age(new_age)
    @age = new_age
  end 

  def overcome_fears
    @fears = nil
  end

  def say_hi
    puts "Hello my name is #{@name}. I'm #{@age} years old. I'm good at #{@skill} and terrified of #{@fears}."
  end

  def self.all
    @@all
  end

  def self.names
    @@name
  end 

  def self.find_by_name(name)
    @@all.find do |clown_instance|
        clown_instance.name == name
    end
  end   

  def self.oldest
    @@all.max_by do |clown_instance|
        clown_instance.age
    end
  end

  def self.fearless
    @@all.map do |clown_instance|
        if clown_instance.fears == nil
            clown_instance
        end
    end
  end

end # end of Clown class




