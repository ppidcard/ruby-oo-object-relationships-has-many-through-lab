class Patient
    attr_accessor :name
    @@all = []

    def initialize(name)
        self.name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(date, doctor)
        app = Appointment.new(date, self, doctor)
        app
    end

    def self.all
        @@all
    end

    def appointments
        Appointment.all.select{|appointment| appointment.patient == self}
    end

    def doctors
        appointments.map{|appointment| appointment.doctor}
    end
end