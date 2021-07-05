
class Appointment
    @@all = []

    attr_accessor :doctor, :patient, :date 

    def initialize(date, patient, doctor)
        @date = date
        @doctor = doctor
        @patient = patient
        @@all << self
    end


    def self.all 
        @@all
    end 

    





end 
