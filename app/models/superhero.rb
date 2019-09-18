class SuperHero
    attr_accessor :name, :power, :bio

    def initialize(args)
        self.name = args[:name]
        self.power = args[:power]
        self.bio = args[:bio]
    end
end