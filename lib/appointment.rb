class Appointment
    attr_accessor :date, :patient, :doctor
    @@all = []

    def initialize(date, patient, doctor)
        self.date = date
        self.patient = patient
        self.doctor = doctor
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
    
end
