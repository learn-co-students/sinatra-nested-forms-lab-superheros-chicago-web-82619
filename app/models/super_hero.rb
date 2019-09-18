class SuperHero

    attr_accessor :name, :power, :bio

    def initialize(super_hero_hash)
        @name = super_hero_hash["name"]
        @power = super_hero_hash["power"]
        @bio = super_hero_hash["bio"]
    end

end