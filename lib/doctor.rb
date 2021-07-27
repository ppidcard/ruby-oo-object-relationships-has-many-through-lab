class Doctor
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

    def appointments
        Appointment.all.select{|appointment| appointment.doctor == self}
    end
    
    def new_appointment(date, patient)
        app = Appointment.new(date, patient, self)
        app
    end

    def patients
        appointments.map{|appointment| appointment.patient}
    end
end
