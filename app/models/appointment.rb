class Appointment < ApplicationRecord
    belongs_to :doctor
    belongs_to :patient

    def doctor_name
        doctor.try(:name)
    end

    def patient_name
        patient.try(:name)
    end
end
