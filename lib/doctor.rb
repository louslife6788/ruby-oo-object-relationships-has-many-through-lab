
class Doctor 

    @@all = []

    attr_accessor  :name

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def self.all 
        @@all
    end



    def appointments
        Appointment.all.select { |time| time.doctor == self}
       
    end

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
      
    end 

    def patients
        self.appointments.map {|date| date.patient}
    end





end 
