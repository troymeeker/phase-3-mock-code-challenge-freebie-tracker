class Company < ActiveRecord::Base
    has_many :freebies
    has_many :devs, through: :freebies

    def give_freebie(dev, item_name, value)
        Freebie.create(value: value, item_name: item_name, company_id:self.id , dev_id: dev.id)


    end
    def self.oldest_company
       self.all.order(:founding_year).first
    end
end
