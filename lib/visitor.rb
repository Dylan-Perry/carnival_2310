class Visitor
    attr_reader :name, :height, :spending_money, :preferences

    def initialize(name, height, spending_money)
        @name = name
        @height = height
        @spending_money = spending_money.delete("$").to_i
        @preferences = []
    end

    def add_preference(preference)
        @preferences << preference.to_sym
    end

    def tall_enough?(height_requirement)
        @height >= height_requirement ? true : false
    end

    def charge_money(amount)
        @spending_money -= amount
    end
end