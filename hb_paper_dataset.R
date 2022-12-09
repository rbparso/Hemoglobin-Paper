#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxT3AdultCovidTest-PositiveTests_DATA_2022-07-13_1414.csv')
#Setting Labels

label(data$study_id)="Study ID"
label(data$age_years)="Participant Age in years"
label(data$dob)="Participant Date of Birth"
label(data$date_consent)="Date of Consent"
label(data$race___1)="Participant Race (choice=White)"
label(data$race___2)="Participant Race (choice=Black/African-American)"
label(data$race___3)="Participant Race (choice=Asian)"
label(data$race___4)="Participant Race (choice=Other)"
label(data$race___88)="Participant Race (choice=Refused to answer)"
label(data$ethnicity)="Participant Ethnicity "
label(data$med_conditions___1)="Do you have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data$med_conditions___2)="Do you have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data$med_conditions___3)="Do you have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data$med_conditions___4)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data$med_conditions___5)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data$med_conditions___6)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data$med_conditions___7)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data$med_conditions___8)="Do you have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data$med_conditions___9)="Do you have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data$med_conditions___10)="Do you have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data$med_conditions___13)="Do you have any of the following conditions? Please check all that apply:  (choice=Asthma)"
label(data$med_conditions___14)="Do you have any of the following conditions? Please check all that apply:  (choice=Allergies)"
label(data$med_conditions___15)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic sinus disease)"
label(data$med_conditions___11)="Do you have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data$med_conditions___12)="Do you have any of the following conditions? Please check all that apply:  (choice=None)"
label(data$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fever)"
label(data$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=chills)"
label(data$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=congestion/rhinorrhea)"
label(data$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=cough)"
label(data$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=headache)"
label(data$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=sore throat)"
label(data$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fatigue)"
label(data$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=arthralgias)"
label(data$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=myalgias)"
label(data$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=photophobia)"
label(data$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=vomiting)"
label(data$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=nausea)"
label(data$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=diarrhea)"
label(data$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=abdominal pain)"
label(data$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=loss of sense of taste or smell)"
label(data$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=shortness of breath (dyspnea))"
label(data$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=other)"
label(data$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=none)"
label(data$recd_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data$vaccine1_vaccine)="Which vaccine did you receive for your first dose?"
label(data$recd_vaccine2)="Have you received a second dose?"
label(data$vaccine2_vaccine)="Which vaccine did you receive for your second dose?"
label(data$covid_pos)="Have you tested positive for COVID-19 before?"
label(data$covid_result)="Result of clinical COVID test:"
label(data$choa_mrn)="Patient MRN "
#Setting Units


#Setting Factors(will create new variable for factors)
data$race___1.factor = factor(data$race___1,levels=c("0","1"))
data$race___2.factor = factor(data$race___2,levels=c("0","1"))
data$race___3.factor = factor(data$race___3,levels=c("0","1"))
data$race___4.factor = factor(data$race___4,levels=c("0","1"))
data$race___88.factor = factor(data$race___88,levels=c("0","1"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","0","88"))
data$med_conditions___1.factor = factor(data$med_conditions___1,levels=c("0","1"))
data$med_conditions___2.factor = factor(data$med_conditions___2,levels=c("0","1"))
data$med_conditions___3.factor = factor(data$med_conditions___3,levels=c("0","1"))
data$med_conditions___4.factor = factor(data$med_conditions___4,levels=c("0","1"))
data$med_conditions___5.factor = factor(data$med_conditions___5,levels=c("0","1"))
data$med_conditions___6.factor = factor(data$med_conditions___6,levels=c("0","1"))
data$med_conditions___7.factor = factor(data$med_conditions___7,levels=c("0","1"))
data$med_conditions___8.factor = factor(data$med_conditions___8,levels=c("0","1"))
data$med_conditions___9.factor = factor(data$med_conditions___9,levels=c("0","1"))
data$med_conditions___10.factor = factor(data$med_conditions___10,levels=c("0","1"))
data$med_conditions___13.factor = factor(data$med_conditions___13,levels=c("0","1"))
data$med_conditions___14.factor = factor(data$med_conditions___14,levels=c("0","1"))
data$med_conditions___15.factor = factor(data$med_conditions___15,levels=c("0","1"))
data$med_conditions___11.factor = factor(data$med_conditions___11,levels=c("0","1"))
data$med_conditions___12.factor = factor(data$med_conditions___12,levels=c("0","1"))
data$symptoms___1.factor = factor(data$symptoms___1,levels=c("0","1"))
data$symptoms___2.factor = factor(data$symptoms___2,levels=c("0","1"))
data$symptoms___3.factor = factor(data$symptoms___3,levels=c("0","1"))
data$symptoms___4.factor = factor(data$symptoms___4,levels=c("0","1"))
data$symptoms___5.factor = factor(data$symptoms___5,levels=c("0","1"))
data$symptoms___6.factor = factor(data$symptoms___6,levels=c("0","1"))
data$symptoms___7.factor = factor(data$symptoms___7,levels=c("0","1"))
data$symptoms___8.factor = factor(data$symptoms___8,levels=c("0","1"))
data$symptoms___9.factor = factor(data$symptoms___9,levels=c("0","1"))
data$symptoms___10.factor = factor(data$symptoms___10,levels=c("0","1"))
data$symptoms___11.factor = factor(data$symptoms___11,levels=c("0","1"))
data$symptoms___12.factor = factor(data$symptoms___12,levels=c("0","1"))
data$symptoms___13.factor = factor(data$symptoms___13,levels=c("0","1"))
data$symptoms___14.factor = factor(data$symptoms___14,levels=c("0","1"))
data$symptoms___15.factor = factor(data$symptoms___15,levels=c("0","1"))
data$symptoms___17.factor = factor(data$symptoms___17,levels=c("0","1"))
data$symptoms___99.factor = factor(data$symptoms___99,levels=c("0","1"))
data$symptoms___16.factor = factor(data$symptoms___16,levels=c("0","1"))
data$recd_vaccine.factor = factor(data$recd_vaccine,levels=c("1","0"))
data$vaccine1_vaccine.factor = factor(data$vaccine1_vaccine,levels=c("1","2","3","4","5","9"))
data$recd_vaccine2.factor = factor(data$recd_vaccine2,levels=c("1","0"))
data$vaccine2_vaccine.factor = factor(data$vaccine2_vaccine,levels=c("1","2","3","4","5","9"))
data$covid_pos.factor = factor(data$covid_pos,levels=c("1","0"))
data$covid_result.factor = factor(data$covid_result,levels=c("1","0","99"))

levels(data$race___1.factor)=c("Unchecked","Checked")
levels(data$race___2.factor)=c("Unchecked","Checked")
levels(data$race___3.factor)=c("Unchecked","Checked")
levels(data$race___4.factor)=c("Unchecked","Checked")
levels(data$race___88.factor)=c("Unchecked","Checked")
levels(data$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refused to answer")
levels(data$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data$med_conditions___13.factor)=c("Unchecked","Checked")
levels(data$med_conditions___14.factor)=c("Unchecked","Checked")
levels(data$med_conditions___15.factor)=c("Unchecked","Checked")
levels(data$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data$symptoms___1.factor)=c("Unchecked","Checked")
levels(data$symptoms___2.factor)=c("Unchecked","Checked")
levels(data$symptoms___3.factor)=c("Unchecked","Checked")
levels(data$symptoms___4.factor)=c("Unchecked","Checked")
levels(data$symptoms___5.factor)=c("Unchecked","Checked")
levels(data$symptoms___6.factor)=c("Unchecked","Checked")
levels(data$symptoms___7.factor)=c("Unchecked","Checked")
levels(data$symptoms___8.factor)=c("Unchecked","Checked")
levels(data$symptoms___9.factor)=c("Unchecked","Checked")
levels(data$symptoms___10.factor)=c("Unchecked","Checked")
levels(data$symptoms___11.factor)=c("Unchecked","Checked")
levels(data$symptoms___12.factor)=c("Unchecked","Checked")
levels(data$symptoms___13.factor)=c("Unchecked","Checked")
levels(data$symptoms___14.factor)=c("Unchecked","Checked")
levels(data$symptoms___15.factor)=c("Unchecked","Checked")
levels(data$symptoms___17.factor)=c("Unchecked","Checked")
levels(data$symptoms___99.factor)=c("Unchecked","Checked")
levels(data$symptoms___16.factor)=c("Unchecked","Checked")
levels(data$recd_vaccine.factor)=c("Yes","No")
levels(data$vaccine1_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data$recd_vaccine2.factor)=c("Yes","No")
levels(data$vaccine2_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data$covid_pos.factor)=c("Yes","No")
levels(data$covid_result.factor)=c("Positive","Negative","Undetermined")

#Read Data
data2=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxtraCOVID19TestVe-PositiveTests_DATA_2022-07-21_1433.csv')
#Setting Labels

label(data2$study_id)="StudyID"
label(data2$age_years)="Age in years"
label(data2$dob)="Date of Birth"
label(data2$date_consent)="Date of Consent"
label(data2$race___1)="Participants Race (choice=White)"
label(data2$race___2)="Participants Race (choice=Black/African-American)"
label(data2$race___3)="Participants Race (choice=Asian)"
label(data2$race___4)="Participants Race (choice=Other)"
label(data2$race___99)="Participants Race (choice=Refuse to Answer)"
label(data2$ethnicity)="Participants Ethnicity "
label(data2$med_conditions___1)="Do you have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data2$med_conditions___2)="Do you have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data2$med_conditions___3)="Do you have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data2$med_conditions___4)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data2$med_conditions___5)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data2$med_conditions___6)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data2$med_conditions___7)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data2$med_conditions___8)="Do you have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data2$med_conditions___9)="Do you have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data2$med_conditions___10)="Do you have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data2$med_conditions___13)="Do you have any of the following conditions? Please check all that apply:  (choice=Asthma)"
label(data2$med_conditions___14)="Do you have any of the following conditions? Please check all that apply:  (choice=Allergies)"
label(data2$med_conditions___15)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic sinus disease)"
label(data2$med_conditions___11)="Do you have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data2$med_conditions___12)="Do you have any of the following conditions? Please check all that apply:  (choice=None)"
label(data2$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fever (>100.4))"
label(data2$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Chills)"
label(data2$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Congestion/runny nose (rhinorrhea))"
label(data2$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Cough)"
label(data2$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Headache)"
label(data2$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Sore throat)"
label(data2$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fatigue)"
label(data2$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Joint pain (arthralgias))"
label(data2$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Muscle aches or pains (myalgias))"
label(data2$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Light sensitivity (photophobia))"
label(data2$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Vomiting)"
label(data2$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Nausea)"
label(data2$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Diarrhea)"
label(data2$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Abdominal pain)"
label(data2$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Loss of sense of taste or smell)"
label(data2$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Shortness of Breath (dyspnea))"
label(data2$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Other)"
label(data2$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=None)"
label(data2$covid_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data2$doses)="How many vaccine doses have you received?"
label(data2$previous_covid)="Have you tested positive previously (prior to the current illness) for COVID-19 using a PCR lab test?"
label(data2$vaccine)="Which vaccine? (NOW HIDDEN)"
label(data2$dose1_vaccine)="Which vaccine did you receive for dose #1?"
label(data2$dose2_vaccine)="Which vaccine did you receive for dose #2?"
label(data2$dose3_vaccine)="Which vaccine did you receive for dose #3?"
label(data2$dose4_vaccine)="Which vaccine did you receive for dose #4?"
label(data2$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data2$race_sp___1)="Raza: (choice=Blanca)"
label(data2$race_sp___2)="Raza: (choice=Afroamericana)"
label(data2$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data2$race_sp___4)="Raza: (choice=Otro)"
label(data2$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data2$ethnicity_sp)="Etnicidad:"
label(data2$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data2$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data2$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data2$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data2$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data2$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data2$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data2$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data2$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data2$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data2$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data2$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data2$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fiebre)"
label(data2$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Escalofr&#237os)"
label(data2$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data2$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Tos)"
label(data2$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de cabeza)"
label(data2$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de garganta)"
label(data2$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fatiga)"
label(data2$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de articulaciones (artralgia))"
label(data2$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor muscular o corporal (Mialgia))"
label(data2$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Sensibilidad a la luz (Fotofobia))"
label(data2$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=V&#243mito)"
label(data2$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Nausea)"
label(data2$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Diarrea)"
label(data2$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor abdominal)"
label(data2$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=P&#233rdida del olfato o sabor)"
label(data2$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dificultad para respirar (disnea))"
label(data2$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Otro)"
label(data2$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Ninguno)"
label(data2$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data2$vaccine_sp)="¿Cuál de ellas? :"
label(data2$doses_sp)="¿Cuántas dosis? "
label(data2$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
label(data2$covid_result)="Result of clinical COVID test:"
label(data2$patient_mrn)="Medical Record Number (MRN)"
label(data2$adult_mrn)="Adult Medical Number (MRN)  (NOW HIDDEN)"
#Setting Units


#Setting Factors(will create new variable for factors)
data2$race___1.factor = factor(data2$race___1,levels=c("0","1"))
data2$race___2.factor = factor(data2$race___2,levels=c("0","1"))
data2$race___3.factor = factor(data2$race___3,levels=c("0","1"))
data2$race___4.factor = factor(data2$race___4,levels=c("0","1"))
data2$race___99.factor = factor(data2$race___99,levels=c("0","1"))
data2$ethnicity.factor = factor(data2$ethnicity,levels=c("1","0","99"))
data2$med_conditions___1.factor = factor(data2$med_conditions___1,levels=c("0","1"))
data2$med_conditions___2.factor = factor(data2$med_conditions___2,levels=c("0","1"))
data2$med_conditions___3.factor = factor(data2$med_conditions___3,levels=c("0","1"))
data2$med_conditions___4.factor = factor(data2$med_conditions___4,levels=c("0","1"))
data2$med_conditions___5.factor = factor(data2$med_conditions___5,levels=c("0","1"))
data2$med_conditions___6.factor = factor(data2$med_conditions___6,levels=c("0","1"))
data2$med_conditions___7.factor = factor(data2$med_conditions___7,levels=c("0","1"))
data2$med_conditions___8.factor = factor(data2$med_conditions___8,levels=c("0","1"))
data2$med_conditions___9.factor = factor(data2$med_conditions___9,levels=c("0","1"))
data2$med_conditions___10.factor = factor(data2$med_conditions___10,levels=c("0","1"))
data2$med_conditions___13.factor = factor(data2$med_conditions___13,levels=c("0","1"))
data2$med_conditions___14.factor = factor(data2$med_conditions___14,levels=c("0","1"))
data2$med_conditions___15.factor = factor(data2$med_conditions___15,levels=c("0","1"))
data2$med_conditions___11.factor = factor(data2$med_conditions___11,levels=c("0","1"))
data2$med_conditions___12.factor = factor(data2$med_conditions___12,levels=c("0","1"))
data2$symptoms___1.factor = factor(data2$symptoms___1,levels=c("0","1"))
data2$symptoms___2.factor = factor(data2$symptoms___2,levels=c("0","1"))
data2$symptoms___3.factor = factor(data2$symptoms___3,levels=c("0","1"))
data2$symptoms___4.factor = factor(data2$symptoms___4,levels=c("0","1"))
data2$symptoms___5.factor = factor(data2$symptoms___5,levels=c("0","1"))
data2$symptoms___6.factor = factor(data2$symptoms___6,levels=c("0","1"))
data2$symptoms___7.factor = factor(data2$symptoms___7,levels=c("0","1"))
data2$symptoms___8.factor = factor(data2$symptoms___8,levels=c("0","1"))
data2$symptoms___9.factor = factor(data2$symptoms___9,levels=c("0","1"))
data2$symptoms___10.factor = factor(data2$symptoms___10,levels=c("0","1"))
data2$symptoms___11.factor = factor(data2$symptoms___11,levels=c("0","1"))
data2$symptoms___12.factor = factor(data2$symptoms___12,levels=c("0","1"))
data2$symptoms___13.factor = factor(data2$symptoms___13,levels=c("0","1"))
data2$symptoms___14.factor = factor(data2$symptoms___14,levels=c("0","1"))
data2$symptoms___15.factor = factor(data2$symptoms___15,levels=c("0","1"))
data2$symptoms___17.factor = factor(data2$symptoms___17,levels=c("0","1"))
data2$symptoms___99.factor = factor(data2$symptoms___99,levels=c("0","1"))
data2$symptoms___16.factor = factor(data2$symptoms___16,levels=c("0","1"))
data2$covid_vaccine.factor = factor(data2$covid_vaccine,levels=c("1","0","99"))
data2$doses.factor = factor(data2$doses,levels=c("1","2","3","4"))
data2$previous_covid.factor = factor(data2$previous_covid,levels=c("1","0","99"))
data2$vaccine.factor = factor(data2$vaccine,levels=c("1","2","3","4","99"))
data2$dose1_vaccine.factor = factor(data2$dose1_vaccine,levels=c("1","2","3","4","99"))
data2$dose2_vaccine.factor = factor(data2$dose2_vaccine,levels=c("1","2","3","4","99"))
data2$dose3_vaccine.factor = factor(data2$dose3_vaccine,levels=c("1","2","3","4","99"))
data2$dose4_vaccine.factor = factor(data2$dose4_vaccine,levels=c("1","2","3","4","99"))
data2$race_sp___1.factor = factor(data2$race_sp___1,levels=c("0","1"))
data2$race_sp___2.factor = factor(data2$race_sp___2,levels=c("0","1"))
data2$race_sp___3.factor = factor(data2$race_sp___3,levels=c("0","1"))
data2$race_sp___4.factor = factor(data2$race_sp___4,levels=c("0","1"))
data2$race_sp___99.factor = factor(data2$race_sp___99,levels=c("0","1"))
data2$ethnicity_sp.factor = factor(data2$ethnicity_sp,levels=c("1","0","99"))
data2$med_conditions_sp___1.factor = factor(data2$med_conditions_sp___1,levels=c("0","1"))
data2$med_conditions_sp___2.factor = factor(data2$med_conditions_sp___2,levels=c("0","1"))
data2$med_conditions_sp___3.factor = factor(data2$med_conditions_sp___3,levels=c("0","1"))
data2$med_conditions_sp___4.factor = factor(data2$med_conditions_sp___4,levels=c("0","1"))
data2$med_conditions_sp___5.factor = factor(data2$med_conditions_sp___5,levels=c("0","1"))
data2$med_conditions_sp___6.factor = factor(data2$med_conditions_sp___6,levels=c("0","1"))
data2$med_conditions_sp___7.factor = factor(data2$med_conditions_sp___7,levels=c("0","1"))
data2$med_conditions_sp___8.factor = factor(data2$med_conditions_sp___8,levels=c("0","1"))
data2$med_conditions_sp___9.factor = factor(data2$med_conditions_sp___9,levels=c("0","1"))
data2$med_conditions_sp___10.factor = factor(data2$med_conditions_sp___10,levels=c("0","1"))
data2$med_conditions_sp___11.factor = factor(data2$med_conditions_sp___11,levels=c("0","1"))
data2$med_conditions_sp___12.factor = factor(data2$med_conditions_sp___12,levels=c("0","1"))
data2$symptoms_sp___1.factor = factor(data2$symptoms_sp___1,levels=c("0","1"))
data2$symptoms_sp___2.factor = factor(data2$symptoms_sp___2,levels=c("0","1"))
data2$symptoms_sp___3.factor = factor(data2$symptoms_sp___3,levels=c("0","1"))
data2$symptoms_sp___4.factor = factor(data2$symptoms_sp___4,levels=c("0","1"))
data2$symptoms_sp___5.factor = factor(data2$symptoms_sp___5,levels=c("0","1"))
data2$symptoms_sp___6.factor = factor(data2$symptoms_sp___6,levels=c("0","1"))
data2$symptoms_sp___7.factor = factor(data2$symptoms_sp___7,levels=c("0","1"))
data2$symptoms_sp___8.factor = factor(data2$symptoms_sp___8,levels=c("0","1"))
data2$symptoms_sp___9.factor = factor(data2$symptoms_sp___9,levels=c("0","1"))
data2$symptoms_sp___10.factor = factor(data2$symptoms_sp___10,levels=c("0","1"))
data2$symptoms_sp___11.factor = factor(data2$symptoms_sp___11,levels=c("0","1"))
data2$symptoms_sp___12.factor = factor(data2$symptoms_sp___12,levels=c("0","1"))
data2$symptoms_sp___13.factor = factor(data2$symptoms_sp___13,levels=c("0","1"))
data2$symptoms_sp___14.factor = factor(data2$symptoms_sp___14,levels=c("0","1"))
data2$symptoms_sp___15.factor = factor(data2$symptoms_sp___15,levels=c("0","1"))
data2$symptoms_sp___17.factor = factor(data2$symptoms_sp___17,levels=c("0","1"))
data2$symptoms_sp___99.factor = factor(data2$symptoms_sp___99,levels=c("0","1"))
data2$symptoms_sp___16.factor = factor(data2$symptoms_sp___16,levels=c("0","1"))
data2$covid_vaccine_sp.factor = factor(data2$covid_vaccine_sp,levels=c("1","0","99"))
data2$vaccine_sp.factor = factor(data2$vaccine_sp,levels=c("1","2","3","4","99"))
data2$doses_sp.factor = factor(data2$doses_sp,levels=c("1","2"))
data2$previous_covid_sp.factor = factor(data2$previous_covid_sp,levels=c("1","0","99"))
data2$covid_result.factor = factor(data2$covid_result,levels=c("1","0","99"))

levels(data2$race___1.factor)=c("Unchecked","Checked")
levels(data2$race___2.factor)=c("Unchecked","Checked")
levels(data2$race___3.factor)=c("Unchecked","Checked")
levels(data2$race___4.factor)=c("Unchecked","Checked")
levels(data2$race___99.factor)=c("Unchecked","Checked")
levels(data2$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data2$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___13.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___14.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___15.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data2$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data2$symptoms___1.factor)=c("Unchecked","Checked")
levels(data2$symptoms___2.factor)=c("Unchecked","Checked")
levels(data2$symptoms___3.factor)=c("Unchecked","Checked")
levels(data2$symptoms___4.factor)=c("Unchecked","Checked")
levels(data2$symptoms___5.factor)=c("Unchecked","Checked")
levels(data2$symptoms___6.factor)=c("Unchecked","Checked")
levels(data2$symptoms___7.factor)=c("Unchecked","Checked")
levels(data2$symptoms___8.factor)=c("Unchecked","Checked")
levels(data2$symptoms___9.factor)=c("Unchecked","Checked")
levels(data2$symptoms___10.factor)=c("Unchecked","Checked")
levels(data2$symptoms___11.factor)=c("Unchecked","Checked")
levels(data2$symptoms___12.factor)=c("Unchecked","Checked")
levels(data2$symptoms___13.factor)=c("Unchecked","Checked")
levels(data2$symptoms___14.factor)=c("Unchecked","Checked")
levels(data2$symptoms___15.factor)=c("Unchecked","Checked")
levels(data2$symptoms___17.factor)=c("Unchecked","Checked")
levels(data2$symptoms___99.factor)=c("Unchecked","Checked")
levels(data2$symptoms___16.factor)=c("Unchecked","Checked")
levels(data2$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data2$doses.factor)=c("1 dose","2 doses","3 doses","4 doses")
levels(data2$previous_covid.factor)=c("Yes","No","Unknown")
levels(data2$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data2$dose1_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data2$dose2_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data2$dose3_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data2$dose4_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data2$race_sp___1.factor)=c("Unchecked","Checked")
levels(data2$race_sp___2.factor)=c("Unchecked","Checked")
levels(data2$race_sp___3.factor)=c("Unchecked","Checked")
levels(data2$race_sp___4.factor)=c("Unchecked","Checked")
levels(data2$race_sp___99.factor)=c("Unchecked","Checked")
levels(data2$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data2$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data2$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data2$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data2$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data2$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data2$doses_sp.factor)=c("1 dosis","2 dosis")
levels(data2$previous_covid_sp.factor)=c("Si","No","No sé.")
levels(data2$covid_result.factor)=c("POSITIVE","NEGATIVE","UNDETERMINED (inconclusive)")
#Read Data
data3=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-DemographicsPullAgeE_DATA_2022-07-12_1627.csv')
#Setting Labels

label(data3$record_id)="Record ID"
label(data3$redcap_repeat_instrument)="Repeat Instrument"
label(data3$redcap_repeat_instance)="Repeat Instance"
label(data3$dob)="Child Date of Birth"
label(data3$age_years)="Child Age in years"
label(data3$age_years2)="Child age in years"
label(data3$choa_mrn)="Patient CHOA MRN (CID)"
#Setting Units

#Read Data
data4=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-PositiveTestsDemogra_DATA_2022-07-13_1417.csv')
#Setting Labels

label(data4$record_id)="Record ID"
label(data4$redcap_repeat_instrument)="Repeat Instrument"
label(data4$redcap_repeat_instance)="Repeat Instance"
label(data4$race___1)="Child Race (choice=White)"
label(data4$race___2)="Child Race (choice=Black/African-American)"
label(data4$race___3)="Child Race (choice=Asian)"
label(data4$race___4)="Child Race (choice=Other)"
label(data4$race___99)="Child Race (choice=Refuse to Answer)"
label(data4$ethnicity)="Child Ethnicity "
label(data4$date_consent)="Date of Consent (or repeat visit date, if this is repeat instance)"
label(data4$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data4$med_conditions___1)="Does your child have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data4$med_conditions___2)="Does your child have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data4$med_conditions___3)="Does your child have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data4$med_conditions___4)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data4$med_conditions___5)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data4$med_conditions___6)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data4$med_conditions___7)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data4$med_conditions___8)="Does your child have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data4$med_conditions___9)="Does your child have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data4$med_conditions___10)="Does your child have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data4$med_conditions___11)="Does your child have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data4$med_conditions___12)="Does your child have any of the following conditions? Please check all that apply:  (choice=None)"
label(data4$symptoms___1)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fever)"
label(data4$symptoms___2)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Chills)"
label(data4$symptoms___3)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Congestion/runny nose (rhinorrhea))"
label(data4$symptoms___4)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Cough)"
label(data4$symptoms___5)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Headache)"
label(data4$symptoms___6)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Sore throat)"
label(data4$symptoms___7)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fatigue)"
label(data4$symptoms___8)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Joint pain (arthralgias))"
label(data4$symptoms___9)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Muscle aches or pains (myalgias))"
label(data4$symptoms___10)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Light sensitivity (photophobia))"
label(data4$symptoms___11)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Vomiting)"
label(data4$symptoms___12)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Nausea)"
label(data4$symptoms___13)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Diarrhea)"
label(data4$symptoms___14)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Abdominal pain)"
label(data4$symptoms___15)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Loss of sense of taste or smell)"
label(data4$symptoms___17)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Shortness of Breath (dyspnea))"
label(data4$symptoms___99)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Other)"
label(data4$symptoms___16)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=None)"
label(data4$covid_vaccine)="2. Has your child received any of the COVID-19 vaccines?"
label(data4$vaccine)="Which vaccine?"
label(data4$doses)="How many vaccine doses has child received?"
label(data4$previous_covid)="1. 	Has your child tested positive for COVID-19 previously?  "
label(data4$race_sp___1)="Raza: (choice=Blanca)"
label(data4$race_sp___2)="Raza: (choice=Afroamericana)"
label(data4$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data4$race_sp___4)="Raza: (choice=Otro)"
label(data4$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data4$ethnicity_sp)="Etnicidad:"
label(data4$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data4$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data4$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data4$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data4$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data4$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data4$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data4$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data4$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data4$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data4$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data4$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data4$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fiebre)"
label(data4$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Escalofr&#237os)"
label(data4$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data4$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Tos)"
label(data4$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de cabeza)"
label(data4$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de garganta)"
label(data4$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fatiga)"
label(data4$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de articulaciones (artralgia))"
label(data4$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor muscular o corporal (Mialgia))"
label(data4$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Sensibilidad a la luz (Fotofobia))"
label(data4$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=V&#243mito)"
label(data4$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Nausea)"
label(data4$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Diarrea)"
label(data4$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor abdominal)"
label(data4$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=P&#233rdida del olfato o sabor)"
label(data4$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dificultad para respirar (disnea))"
label(data4$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Otro)"
label(data4$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Ninguno)"
label(data4$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data4$vaccine_sp)="¿Cuál de ellas? :"
label(data4$doses_sp)="¿Cuántas dosis? "
label(data4$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
#Setting Units


#Setting Factors(will create new variable for factors)
data4$race___1.factor = factor(data4$race___1,levels=c("0","1"))
data4$race___2.factor = factor(data4$race___2,levels=c("0","1"))
data4$race___3.factor = factor(data4$race___3,levels=c("0","1"))
data4$race___4.factor = factor(data4$race___4,levels=c("0","1"))
data4$race___99.factor = factor(data4$race___99,levels=c("0","1"))
data4$ethnicity.factor = factor(data4$ethnicity,levels=c("1","0","99"))
data4$med_conditions___1.factor = factor(data4$med_conditions___1,levels=c("0","1"))
data4$med_conditions___2.factor = factor(data4$med_conditions___2,levels=c("0","1"))
data4$med_conditions___3.factor = factor(data4$med_conditions___3,levels=c("0","1"))
data4$med_conditions___4.factor = factor(data4$med_conditions___4,levels=c("0","1"))
data4$med_conditions___5.factor = factor(data4$med_conditions___5,levels=c("0","1"))
data4$med_conditions___6.factor = factor(data4$med_conditions___6,levels=c("0","1"))
data4$med_conditions___7.factor = factor(data4$med_conditions___7,levels=c("0","1"))
data4$med_conditions___8.factor = factor(data4$med_conditions___8,levels=c("0","1"))
data4$med_conditions___9.factor = factor(data4$med_conditions___9,levels=c("0","1"))
data4$med_conditions___10.factor = factor(data4$med_conditions___10,levels=c("0","1"))
data4$med_conditions___11.factor = factor(data4$med_conditions___11,levels=c("0","1"))
data4$med_conditions___12.factor = factor(data4$med_conditions___12,levels=c("0","1"))
data4$symptoms___1.factor = factor(data4$symptoms___1,levels=c("0","1"))
data4$symptoms___2.factor = factor(data4$symptoms___2,levels=c("0","1"))
data4$symptoms___3.factor = factor(data4$symptoms___3,levels=c("0","1"))
data4$symptoms___4.factor = factor(data4$symptoms___4,levels=c("0","1"))
data4$symptoms___5.factor = factor(data4$symptoms___5,levels=c("0","1"))
data4$symptoms___6.factor = factor(data4$symptoms___6,levels=c("0","1"))
data4$symptoms___7.factor = factor(data4$symptoms___7,levels=c("0","1"))
data4$symptoms___8.factor = factor(data4$symptoms___8,levels=c("0","1"))
data4$symptoms___9.factor = factor(data4$symptoms___9,levels=c("0","1"))
data4$symptoms___10.factor = factor(data4$symptoms___10,levels=c("0","1"))
data4$symptoms___11.factor = factor(data4$symptoms___11,levels=c("0","1"))
data4$symptoms___12.factor = factor(data4$symptoms___12,levels=c("0","1"))
data4$symptoms___13.factor = factor(data4$symptoms___13,levels=c("0","1"))
data4$symptoms___14.factor = factor(data4$symptoms___14,levels=c("0","1"))
data4$symptoms___15.factor = factor(data4$symptoms___15,levels=c("0","1"))
data4$symptoms___17.factor = factor(data4$symptoms___17,levels=c("0","1"))
data4$symptoms___99.factor = factor(data4$symptoms___99,levels=c("0","1"))
data4$symptoms___16.factor = factor(data4$symptoms___16,levels=c("0","1"))
data4$covid_vaccine.factor = factor(data4$covid_vaccine,levels=c("1","0","99"))
data4$vaccine.factor = factor(data4$vaccine,levels=c("1","2","3","4","99"))
data4$doses.factor = factor(data4$doses,levels=c("1","2"))
data4$previous_covid.factor = factor(data4$previous_covid,levels=c("1","0","99"))
data4$race_sp___1.factor = factor(data4$race_sp___1,levels=c("0","1"))
data4$race_sp___2.factor = factor(data4$race_sp___2,levels=c("0","1"))
data4$race_sp___3.factor = factor(data4$race_sp___3,levels=c("0","1"))
data4$race_sp___4.factor = factor(data4$race_sp___4,levels=c("0","1"))
data4$race_sp___99.factor = factor(data4$race_sp___99,levels=c("0","1"))
data4$ethnicity_sp.factor = factor(data4$ethnicity_sp,levels=c("1","0","99"))
data4$med_conditions_sp___1.factor = factor(data4$med_conditions_sp___1,levels=c("0","1"))
data4$med_conditions_sp___2.factor = factor(data4$med_conditions_sp___2,levels=c("0","1"))
data4$med_conditions_sp___3.factor = factor(data4$med_conditions_sp___3,levels=c("0","1"))
data4$med_conditions_sp___4.factor = factor(data4$med_conditions_sp___4,levels=c("0","1"))
data4$med_conditions_sp___5.factor = factor(data4$med_conditions_sp___5,levels=c("0","1"))
data4$med_conditions_sp___6.factor = factor(data4$med_conditions_sp___6,levels=c("0","1"))
data4$med_conditions_sp___7.factor = factor(data4$med_conditions_sp___7,levels=c("0","1"))
data4$med_conditions_sp___8.factor = factor(data4$med_conditions_sp___8,levels=c("0","1"))
data4$med_conditions_sp___9.factor = factor(data4$med_conditions_sp___9,levels=c("0","1"))
data4$med_conditions_sp___10.factor = factor(data4$med_conditions_sp___10,levels=c("0","1"))
data4$med_conditions_sp___11.factor = factor(data4$med_conditions_sp___11,levels=c("0","1"))
data4$med_conditions_sp___12.factor = factor(data4$med_conditions_sp___12,levels=c("0","1"))
data4$symptoms_sp___1.factor = factor(data4$symptoms_sp___1,levels=c("0","1"))
data4$symptoms_sp___2.factor = factor(data4$symptoms_sp___2,levels=c("0","1"))
data4$symptoms_sp___3.factor = factor(data4$symptoms_sp___3,levels=c("0","1"))
data4$symptoms_sp___4.factor = factor(data4$symptoms_sp___4,levels=c("0","1"))
data4$symptoms_sp___5.factor = factor(data4$symptoms_sp___5,levels=c("0","1"))
data4$symptoms_sp___6.factor = factor(data4$symptoms_sp___6,levels=c("0","1"))
data4$symptoms_sp___7.factor = factor(data4$symptoms_sp___7,levels=c("0","1"))
data4$symptoms_sp___8.factor = factor(data4$symptoms_sp___8,levels=c("0","1"))
data4$symptoms_sp___9.factor = factor(data4$symptoms_sp___9,levels=c("0","1"))
data4$symptoms_sp___10.factor = factor(data4$symptoms_sp___10,levels=c("0","1"))
data4$symptoms_sp___11.factor = factor(data4$symptoms_sp___11,levels=c("0","1"))
data4$symptoms_sp___12.factor = factor(data4$symptoms_sp___12,levels=c("0","1"))
data4$symptoms_sp___13.factor = factor(data4$symptoms_sp___13,levels=c("0","1"))
data4$symptoms_sp___14.factor = factor(data4$symptoms_sp___14,levels=c("0","1"))
data4$symptoms_sp___15.factor = factor(data4$symptoms_sp___15,levels=c("0","1"))
data4$symptoms_sp___17.factor = factor(data4$symptoms_sp___17,levels=c("0","1"))
data4$symptoms_sp___99.factor = factor(data4$symptoms_sp___99,levels=c("0","1"))
data4$symptoms_sp___16.factor = factor(data4$symptoms_sp___16,levels=c("0","1"))
data4$covid_vaccine_sp.factor = factor(data4$covid_vaccine_sp,levels=c("1","0","99"))
data4$vaccine_sp.factor = factor(data4$vaccine_sp,levels=c("1","2","3","4","99"))
data4$doses_sp.factor = factor(data4$doses_sp,levels=c("1","2"))
data4$previous_covid_sp.factor = factor(data4$previous_covid_sp,levels=c("1","0","99"))

levels(data4$race___1.factor)=c("Unchecked","Checked")
levels(data4$race___2.factor)=c("Unchecked","Checked")
levels(data4$race___3.factor)=c("Unchecked","Checked")
levels(data4$race___4.factor)=c("Unchecked","Checked")
levels(data4$race___99.factor)=c("Unchecked","Checked")
levels(data4$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data4$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data4$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data4$symptoms___1.factor)=c("Unchecked","Checked")
levels(data4$symptoms___2.factor)=c("Unchecked","Checked")
levels(data4$symptoms___3.factor)=c("Unchecked","Checked")
levels(data4$symptoms___4.factor)=c("Unchecked","Checked")
levels(data4$symptoms___5.factor)=c("Unchecked","Checked")
levels(data4$symptoms___6.factor)=c("Unchecked","Checked")
levels(data4$symptoms___7.factor)=c("Unchecked","Checked")
levels(data4$symptoms___8.factor)=c("Unchecked","Checked")
levels(data4$symptoms___9.factor)=c("Unchecked","Checked")
levels(data4$symptoms___10.factor)=c("Unchecked","Checked")
levels(data4$symptoms___11.factor)=c("Unchecked","Checked")
levels(data4$symptoms___12.factor)=c("Unchecked","Checked")
levels(data4$symptoms___13.factor)=c("Unchecked","Checked")
levels(data4$symptoms___14.factor)=c("Unchecked","Checked")
levels(data4$symptoms___15.factor)=c("Unchecked","Checked")
levels(data4$symptoms___17.factor)=c("Unchecked","Checked")
levels(data4$symptoms___99.factor)=c("Unchecked","Checked")
levels(data4$symptoms___16.factor)=c("Unchecked","Checked")
levels(data4$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data4$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data4$doses.factor)=c("1 dose","2 doses")
levels(data4$previous_covid.factor)=c("Yes","No","Unknown")
levels(data4$race_sp___1.factor)=c("Unchecked","Checked")
levels(data4$race_sp___2.factor)=c("Unchecked","Checked")
levels(data4$race_sp___3.factor)=c("Unchecked","Checked")
levels(data4$race_sp___4.factor)=c("Unchecked","Checked")
levels(data4$race_sp___99.factor)=c("Unchecked","Checked")
levels(data4$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data4$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data4$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data4$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data4$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data4$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data4$doses_sp.factor)=c("1 dosis","2 dosis")
levels(data4$previous_covid_sp.factor)=c("Si","No","No sé.")

#Read Data
data5=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-PositiveTestsTestRes_DATA_2022-07-07_1534.csv')
#Setting Labels

label(data5$record_id)="Record ID"
label(data5$redcap_repeat_instrument)="Repeat Instrument"
label(data5$redcap_repeat_instance)="Repeat Instance"
label(data5$covid_result)="Result of clinical COVID test:"
#Setting Units

#Setting Factors(will create new variable for factors)
data5$covid_result.factor = factor(data5$covid_result,levels=c("1","0","99","88"))

levels(data5$covid_result.factor)=c("Positive","Negative","Undetermined (inconclusive)","Test Not Performed")

data6=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//hemoglobin_diagnosis.csv')

remove_repeat = c()
for (i in 1:nrow(data4)) {
   if (is.na(data4$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data4_norep = data4[-remove_repeat,]
remove_repeat = c()
for (i in 1:nrow(data5)) {
   if (is.na(data5$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data5_norep = data5[-remove_repeat,]
data_comb3 = merge(data4_norep, data5_norep, by=c("record_id", "redcap_repeat_instance")) 
data_comb2 = merge(data3, data_comb3, by="record_id")
for (i in 1:nrow(data)) {
   if ((data$med_conditions___13[i] == 1 & !is.na(data$med_conditions___13[i])) |
       (data$med_conditions___14[i] == 1 & !is.na(data$med_conditions___14[i])) |
       (data$med_conditions___15[i] == 1 & !is.na(data$med_conditions___15[i]))) {
      data$med_conditions___11[i] = 1
   }
}
for (i in 1:nrow(data2)) {
   if ((data2$med_conditions___13[i] == 1 & !is.na(data2$med_conditions___13[i])) |
       (data2$med_conditions___14[i] == 1 & !is.na(data2$med_conditions___14[i])) |
       (data2$med_conditions___15[i] == 1 & !is.na(data2$med_conditions___15[i]))) {
      data2$med_conditions___11[i] = 1
   }
}

levels(data$recd_vaccine2.factor)=c(levels(data$recd_vaccine2.factor),"1 dose","2 doses")
for (i in 1:length(data$recd_vaccine2.factor)) {
   if (data$recd_vaccine2.factor[i] == "Yes" & !is.na(data$recd_vaccine2.factor[i])) {
      data$recd_vaccine2.factor[i] = "2 doses"
   } else if ((data$recd_vaccine2.factor[i] == "No" & !is.na(data$recd_vaccine2.factor[i])) & 
              (data$recd_vaccine.factor[i] == "Yes" & !is.na(data$recd_vaccine.factor[i]))) {
      data$recd_vaccine2.factor[i] = "1 dose"
   } else {
      data$recd_vaccine2.factor[i] = NA
   }
}

#for (i in 1:nrow(data2_med)) {
#    for (j in c(29:52)) {
#       levels(data2_med[,j-24]) = c(levels(data2_med[,j-24]), levels(data2_med[,j]))
#       if (is.na(data2_med[i,j-24]) & !is.na(data2_med[i,j])) {
#          data2_med[i,j-24] = data2_med[i,j]
#       }
#    }
#}
for (i in 1:nrow(data_comb2)) {
    if (data_comb2[i,16] == "" & data_comb2[i,17] != "") {
       data_comb2[i,16] = data_comb2[i,17]
    }
    for (j in c(52:56)) {
       if (is.na(data_comb2[i,j-42]) & !is.na(data_comb2[i,j])) {
          data_comb2[i,j-42] = data_comb2[i,j]
       }
    }
    for (j in c(58:91,132:136,138:171)) {
       if (is.na(data_comb2[i,j-40]) & !is.na(data_comb2[i,j])) {
          data_comb2[i,j-40] = data_comb2[i,j]
       }
    }
    levels(data_comb2[,97]) = c(levels(data_comb2[,97]), levels(data_comb2[,137]))
    if (is.na(data_comb2[i,97]) & !is.na(data_comb2[i,137])) {
       data_comb2[i,97] = data_comb2[i,137]
    }
}
library(lubridate)
data$dob = as.Date(data$dob)
data$date_consent = as.Date(data$date_consent)
for (i in 1:nrow(data)) {
   if (is.na(data$age_years[i])) {
      if (!is.na(data$dob[i]) & !is.na(data$date_consent[i])) {
         data$age_years[i] = time_length(difftime(data$date_consent[i], data$dob[i]), "years")
      }
   }
} 
data2$dob = as.Date(data2$dob)
data2$date_consent = as.Date(data2$date_consent)
for (i in 1:nrow(data2)) {
   if (is.na(data2$age_years[i])) {
      if (!is.na(data2$dob[i]) & !is.na(data2$date_consent[i])) {
         data2$age_years[i] = time_length(difftime(data2$date_consent[i], data2$dob[i]), "years")
      }
   }
} 
data_comb2$dob = as.Date(data_comb2$dob)
data_comb2$date_consent = as.Date(data_comb2$date_consent)
data_comb2$date_consent_sp = as.Date(data_comb2$date_consent_sp)
for (i in 1:nrow(data_comb2)) {
   if (is.na(data_comb2$age_years[i])) {
      if (!is.na(data_comb2$dob[i]) & !is.na(data_comb2$date_consent[i])) {
         data_comb2$age_years[i] = time_length(difftime(data_comb2$date_consent[i], data_comb2$dob[i]), "years")
      }
      if (!is.na(data_comb2$dob[i]) & !is.na(data_comb2$date_consent_sp[i])) {
         data_comb2$age_years[i] = time_length(difftime(data_comb2$date_consent_sp[i], data_comb2$dob[i]), "years")
      }
   }
}
data$status.factor = as.factor(c(rep(NA, nrow(data))))
levels(data$status.factor) = c("Unvaccinated", "Partially Vaccinated",
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data)) {
  if (data$recd_vaccine.factor[i] == "No" & !is.na(data$recd_vaccine.factor[i])) {
    data$status.factor[i] = "Unvaccinated"
  }
  else if (!is.na(data$recd_vaccine.factor[i])) {
    if (!is.na(data$vaccine1_vaccine.factor[i])) {
      if (data$vaccine1_vaccine.factor[i] == "Pfizer" | 
          data$vaccine1_vaccine.factor[i] == "Moderna") {
        if (data$recd_vaccine2.factor[i] == "1 dose" & 
            !is.na(data$recd_vaccine2.factor[i])) {
          data$status.factor[i] = "Partially Vaccinated"
        }
        else if (data$recd_vaccine2.factor[i] == "2 doses" & 
                 !is.na(data$recd_vaccine2.factor[i])) {
          data$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      } else if (data$recd_vaccine2.factor[i] == "2 doses" & 
                !is.na(data$recd_vaccine2.factor[i])) {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data$vaccine1_vaccine.factor[i] == "Johnson and Hohnson") {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
}

data2$status.factor = as.factor(c(rep(NA, nrow(data2))))
levels(data2$status.factor) = c("Unvaccinated", "Partially Vaccinated",
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data2)) {
  if (data2$covid_vaccine.factor[i] == "No" &
      !is.na(data2$covid_vaccine.factor[i])) {
    data2$status.factor[i] = "Unvaccinated"
  }
  else {
    if (!is.na(data2$vaccine.factor[i])) {
      if (data2$vaccine.factor[i] == "Johnson and Johnson") {
        data2$status.factor[i] = "Fully Vaccinated/Boosted"
      } else {
        if (data2$doses.factor[i] == "1 dose" & !is.na(data2$doses.factor[i]) & 
                 data2$vaccine.factor[i] != "I dont know") {
          data2$status.factor[i] = "Partially Vaccinated"
        }
        else if (data2$doses.factor[i] != "1 dose" & !is.na(data2$doses.factor[i])) {
          data2$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      }
    }
    else {
      if (data2$doses.factor[i] == "1 dose" & 
          !is.na(data2$doses.factor[i])) {
        if (data2$dose1_vaccine.factor[i] == "Johnson and Johnson") {
          data2$status.factor[i] = "Fully Vaccinated/Boosted"
        } else if (!is.na(data2$dose1_vaccine.factor[i]) &
                   data2$dose1_vaccine.factor[i] != "I dont know") {
          data2$status.factor[i] = "Partially Vaccinated"
        }
      } 
      else if (data2$doses.factor[i] == "2 doses" & 
               !is.na(data2$doses.factor[i])) {
        data2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data2$doses.factor[i] == "3 doses" & 
               !is.na(data2$doses.factor[i])) {
        data2$status.factor[i] = "Fully Vaccinated/Boosted"
      } 
      else if (data2$doses.factor[i] == "4 doses" & 
               !is.na(data2$doses.factor[i])) {
        data2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
}
data_comb2$status.factor = as.factor(c(rep(NA, nrow(data_comb2))))
levels(data_comb2$status.factor) = c("Unvaccinated", "Partially Vaccinated",
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data_comb2)) {
  if (data_comb2$covid_vaccine.factor[i] == "No" &
     !is.na(data_comb2$covid_vaccine.factor[i])) {
    data_comb2$status.factor[i] = "Unvaccinated"
  }
  else if (data_comb2$covid_vaccine.factor[i] == "Yes" &
           !is.na(data_comb2$covid_vaccine.factor[i])) {
    if (!is.na(data_comb2$doses.factor[i])) {
      if (data_comb2$vaccine.factor[i] == "Pfizer" | 
          data_comb2$vaccine.factor[i] == "Moderna") {
        if (data_comb2$doses.factor[i] == "1 dose") {
          data_comb2$status.factor[i] = "Partially Vaccinated"
        }
        else if (data_comb2$doses.factor[i] == "2 doses") {
          data_comb2$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      }
      else if (data_comb2$vaccine.factor[i] == "Johnson and Johnson") {
         data_comb2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
  else {
    if (is.na(data_comb2$doses.factor[i]) &
        data_comb2$date_consent[i] < "2022-02-12" &
        !is.na(data_comb2$date_consent[i])) {
      data_comb2$status.factor[i] = "Unvaccinated"
    }
  }
}

for (i in 1:nrow(data)) {
   if (!is.na(data$med_conditions___8[i])) {
      if (data$med_conditions___8[i] == 0) {
         data$sickle_cell[i] = "No"
         data$hgbss[i] = "No"
         data$hgbsc[i] = "No"
         data$sct[i] = "No"
         data$bthal[i] = "No"
         data$hgbso[i] = "No"
         data$nosc[i] = "No"
         data$unco[i] = "No"
      } else {
         data$sickle_cell[i] = "Unsure"
         data$hgbss[i] = "Unsure"
         data$hgbsc[i] = "Unsure"
         data$sct[i] = "Unsure"
         data$bthal[i] = "Unsure"
         data$hgbso[i] = "Unsure"
         data$nosc[i] = "Unsure"
         data$unco[i] = "Unsure"
      }
   } else {
      data$sickle_cell[i] = "Unsure"
      data$hgbss[i] = "Unsure"
      data$hgbsc[i] = "Unsure"
      data$sct[i] = "Unsure"
      data$bthal[i] = "Unsure"
      data$hgbso[i] = "Unsure"
      data$nosc[i] = "Unsure"
      data$unco[i] = "Unsure"
   }
}
for (i in 1:nrow(data2)) {
   if (!is.na(data2$med_conditions___8[i])) {
      if (data2$med_conditions___8[i] == 0) {
         data2$sickle_cell[i] = "No"
         data2$hgbss[i] = "No"
         data2$hgbsc[i] = "No"
         data2$sct[i] = "No"
         data2$bthal[i] = "No"
         data2$hgbso[i] = "No"
         data2$nosc[i] = "No"
         data2$unco[i] = "No"
      } else {
         data2$sickle_cell[i] = "Unsure"
         data2$hgbss[i] = "Unsure"
         data2$hgbsc[i] = "Unsure"
         data2$sct[i] = "Unsure"
         data2$bthal[i] = "Unsure"
         data2$hgbso[i] = "Unsure"
         data2$nosc[i] = "Unsure"
         data2$unco[i] = "Unsure"
      }
   } else {
      data2$sickle_cell[i] = "Unsure"
      data2$hgbss[i] = "Unsure"
      data2$hgbsc[i] = "Unsure"
      data2$sct[i] = "Unsure"
      data2$bthal[i] = "Unsure"
      data2$hgbso[i] = "Unsure"
      data2$nosc[i] = "Unsure"
      data2$unco[i] = "Unsure"
   }
}
for (i in 1:nrow(data_comb2)) {
   if (!is.na(data_comb2$med_conditions___8[i])) {
      if (data_comb2$med_conditions___8[i] == 0) {
         data_comb2$sickle_cell[i] = "No"
         data_comb2$hgbss[i] = "No"
         data_comb2$hgbsc[i] = "No"
         data_comb2$sct[i] = "No"
         data_comb2$bthal[i] = "No"
         data_comb2$hgbso[i] = "No"
         data_comb2$nosc[i] = "No"
         data_comb2$unco[i] = "No"
      } else {
         data_comb2$sickle_cell[i] = "Unsure"
         data_comb2$hgbss[i] = "Unsure"
         data_comb2$hgbsc[i] = "Unsure"
         data_comb2$sct[i] = "Unsure"
         data_comb2$bthal[i] = "Unsure"
         data_comb2$hgbso[i] = "Unsure"
         data_comb2$nosc[i] = "Unsure"
         data_comb2$unco[i] = "Unsure"
      }
   } else {
      data_comb2$sickle_cell[i] = "Unsure"
      data_comb2$hgbss[i] = "Unsure"
      data_comb2$hgbsc[i] = "Unsure"
      data_comb2$sct[i] = "Unsure"
      data_comb2$bthal[i] = "Unsure"
      data_comb2$hgbso[i] = "Unsure"
      data_comb2$nosc[i] = "Unsure"
      data_comb2$unco[i] = "Unsure"
   }
}

data$choa_mrn = sub("^0+","",data$choa_mrn)

data6$Date.of.Birth = as.Date(data6$Date.of.Birth, "%m/%d/%Y")
for (i in 1:nrow(data6)) {
      radx = which(data2$sickle_cell == "Unsure" &
                   as.character(data2$dob) == as.character(data6$Date.of.Birth[i]))
      at3 = which(data$sickle_cell == "Unsure" &
                   as.character(data$dob) == as.character(data6$Date.of.Birth[i]))
      pt3 = which(data_comb2$record_id == data6$Record.ID[i] & 
                  as.character(data_comb2$dob) == as.character(data6$Date.of.Birth[i]))
      if (length(radx) > 0) {
         data2$sickle_cell[radx] = data6$Sickle.Cell[i]
         data2$hgbss[radx] = data6$HgbSS[i]
         data2$hgbsc[radx] = data6$HgbSC[i]
         data2$sct[radx] = data6$SCT[i]
         data2$bthal[radx] = data6$Bthal[i]
         data2$hgbso[radx] = data6$HgbSO[i]
         data2$nosc[radx] = data6$NoSC[i]
         data2$unco[radx] = data6$Unconfirmed[i]
      } else if (length(at3) > 0) {
         data$sickle_cell[at3] = data6$Sickle.Cell[i]
         data$hgbss[at3] = data6$HgbSS[i]
         data$hgbsc[at3] = data6$HgbSC[i]
         data$sct[at3] = data6$SCT[i]
         data$bthal[at3] = data6$Bthal[i]
         data$hgbso[at3] = data6$HgbSO[i]
         data$nosc[at3] = data6$NoSC[i]
         data$unco[at3] = data6$Unconfirmed[i]
      } else if (length(pt3) > 0) {
         data_comb2$sickle_cell[pt3] = data6$Sickle.Cell[i]
         data_comb2$hgbss[pt3] = data6$HgbSS[i]
         data_comb2$hgbsc[pt3] = data6$HgbSC[i]
         data_comb2$sct[pt3] = data6$SCT[i]
         data_comb2$bthal[pt3] = data6$Bthal[i]
         data_comb2$hgbso[pt3] = data6$HgbSO[i]
         data_comb2$nosc[pt3] = data6$NoSC[i]
         data_comb2$unco[pt3] = data6$Unconfirmed[i]
   }
}


data$sickle_cell = as.factor(data$sickle_cell)
data2$sickle_cell = as.factor(data2$sickle_cell)
data_comb2$sickle_cell = as.factor(data_comb2$sickle_cell)

data2$race___88.factor = data2$race___99.factor
data_comb2$race___88.factor = data_comb2$race___99.factor

names12 = intersect(names(data), names(data2))
names123 = intersect(names12, names(data_comb2))

data_sel <- data[,names123]
data2_sel <- data2[,names123]
data3_sel <- data_comb2[,names123]

data_comb = rbind(data_sel, data2_sel, data3_sel)
dataset = data_comb[order(data_comb$date_consent, data_comb$age_years),]
write.csv(dataset, "C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_pos_tests.csv")
#Read Data
data_hb=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxtraCOVID19TestVe-HemoglobinDemographi_DATA_2022-07-21_1432.csv')
#Setting Labels

label(data_hb$record_id)="Record ID"
label(data_hb$redcap_event_name)="Event Name"
label(data_hb$age_years)="Age in years"
label(data_hb$dob)="Date of Birth"
label(data_hb$date_consent)="Date of Consent"
label(data_hb$how_aware)="How did you become aware of the RADx rapid test research project at Emory?"
label(data_hb$aware_other)="If the how did you became aware question is marked Other, please specify how you became aware of the Emory RADx program."
label(data_hb$sex)="Participants Sex at birth"
label(data_hb$race___1)="Participants Race (choice=White)"
label(data_hb$race___2)="Participants Race (choice=Black/African-American)"
label(data_hb$race___3)="Participants Race (choice=Asian)"
label(data_hb$race___4)="Participants Race (choice=Other)"
label(data_hb$race___99)="Participants Race (choice=Refuse to Answer)"
label(data_hb$other_race)="Other race/ethnicity"
label(data_hb$ethnicity)="Participants Ethnicity "
label(data_hb$city)="City:"
label(data_hb$state)="State (defaults to Georgia; click Other to override):"
label(data_hb$state_other)="If State is Other, specify state:"
label(data_hb$zipcode)="Zipcode:"
label(data_hb$phone)="Telephone Number:"
label(data_hb$num_household)="How many people are living in the household?"
label(data_hb$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fever (>100.4))"
label(data_hb$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Chills)"
label(data_hb$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Congestion/runny nose (rhinorrhea))"
label(data_hb$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Cough)"
label(data_hb$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Headache)"
label(data_hb$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Sore throat)"
label(data_hb$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fatigue)"
label(data_hb$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Joint pain (arthralgias))"
label(data_hb$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Muscle aches or pains (myalgias))"
label(data_hb$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Light sensitivity (photophobia))"
label(data_hb$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Vomiting)"
label(data_hb$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Nausea)"
label(data_hb$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Diarrhea)"
label(data_hb$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Abdominal pain)"
label(data_hb$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Loss of sense of taste or smell)"
label(data_hb$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Shortness of Breath (dyspnea))"
label(data_hb$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Other)"
label(data_hb$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=None)"
label(data_hb$symptom_onset)="What is the date of the earliest symptom onset?"
label(data_hb$symptomatic)="Are you currently symptomatic?"
label(data_hb$symptoms_today___1)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Fever (>100.4))"
label(data_hb$symptoms_today___2)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Chills)"
label(data_hb$symptoms_today___3)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Congestion/runny nose (rhinorrhea))"
label(data_hb$symptoms_today___4)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Cough)"
label(data_hb$symptoms_today___5)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Headache)"
label(data_hb$symptoms_today___6)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Sore throat)"
label(data_hb$symptoms_today___7)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Fatigue)"
label(data_hb$symptoms_today___8)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Joint pain (arthralgias))"
label(data_hb$symptoms_today___9)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Muscle aches or pains (myalgias))"
label(data_hb$symptoms_today___10)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Light sensitivity (photophobia))"
label(data_hb$symptoms_today___11)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Vomiting)"
label(data_hb$symptoms_today___12)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Nausea)"
label(data_hb$symptoms_today___13)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Diarrhea)"
label(data_hb$symptoms_today___14)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Abdominal pain)"
label(data_hb$symptoms_today___15)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Loss of sense of taste or smell)"
label(data_hb$symptoms_today___17)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Shortness of Breath (dyspnea))"
label(data_hb$symptoms_today___99)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Other)"
label(data_hb$symptoms_today___16)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=None)"
label(data_hb$other_symptom_describe)="Describe other symptom"
label(data_hb$med_conditions___1)="Do you have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data_hb$med_conditions___2)="Do you have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data_hb$med_conditions___3)="Do you have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data_hb$med_conditions___4)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data_hb$med_conditions___5)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data_hb$med_conditions___6)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data_hb$med_conditions___7)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data_hb$med_conditions___8)="Do you have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data_hb$med_conditions___9)="Do you have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data_hb$med_conditions___10)="Do you have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data_hb$med_conditions___13)="Do you have any of the following conditions? Please check all that apply:  (choice=Asthma)"
label(data_hb$med_conditions___14)="Do you have any of the following conditions? Please check all that apply:  (choice=Allergies)"
label(data_hb$med_conditions___15)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic sinus disease)"
label(data_hb$med_conditions___11)="Do you have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data_hb$med_conditions___12)="Do you have any of the following conditions? Please check all that apply:  (choice=None)"
label(data_hb$med_conditions_other)="Other medical condition not listed above:"
label(data_hb$eat_drink)="(NOW HIDDEN) Did you eat or drink anything in the last 15 minutes?"
label(data_hb$smoker)="Are you a current smoker?"
label(data_hb$smoked_last_hour)="If yes, have you smoked in the last hour?"
label(data_hb$drink_alcohol)="Do you drink alcoholic beverages?"
label(data_hb$alcohol_last)="When was the last time you had an alcoholic beverage?"
label(data_hb$alcohol_product)="Do you use products with alcohol in them like mouthwash?"
label(data_hb$alcohol_last_product)="When was the last time you used a product with alcohol in it such as mouthwash?"
label(data_hb$test_reason___1)="Reason for testing (mark all that apply): (choice=Exposure to known COVID-19 (tested positive) individual)"
label(data_hb$test_reason___2)="Reason for testing (mark all that apply): (choice=Exposure to COVID-19 symptomatic individual)"
label(data_hb$test_reason___6)="Reason for testing (mark all that apply): (choice=Symptomatic without known exposure)"
label(data_hb$test_reason___3)="Reason for testing (mark all that apply): (choice=Travel)"
label(data_hb$test_reason___4)="Reason for testing (mark all that apply): (choice=Event)"
label(data_hb$test_reason___5)="Reason for testing (mark all that apply): (choice=Other)"
label(data_hb$reason_oth_spec)="If reason for testing is Other, describe:"
label(data_hb$known_covid_exposure)="Have you been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data_hb$exposure_source_known___1)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Someone at home/family member)"
label(data_hb$exposure_source_known___2)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Friend)"
label(data_hb$exposure_source_known___3)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Camp/school)"
label(data_hb$exposure_source_known___5)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Work)"
label(data_hb$exposure_source_known___4)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Other)"
label(data_hb$other_exp_source_known)="Other exposure source (known positive):"
label(data_hb$suspected_exposure)="Have you been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data_hb$exposure_source___1)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Someone at home/family member)"
label(data_hb$exposure_source___2)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Friend)"
label(data_hb$exposure_source___3)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Camp/school)"
label(data_hb$exposure_source___5)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Work)"
label(data_hb$exposure_source___4)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Other)"
label(data_hb$other_exposure_source)="Other exposure source (suspected/symptoms):"
label(data_hb$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data_hb$any_test_14days)="Have you had a COVID-19 test of any type in the last 14 days?"
label(data_hb$home_test_before)="Have you ever conducted an over the counter COVID-19 home test before?"
label(data_hb$home_test_number)="If yes, how many times have you conducted a home test? (approximate is acceptable; enter as integer):"
label(data_hb$previous_covid)="Have you tested positive previously (prior to the current illness) for COVID-19 using a PCR lab test?"
label(data_hb$number_infections)="If you have tested positive for COVID previously, how many separate COVID infections have you experienced?"
label(data_hb$pos_date)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your most recent infection?"
label(data_hb$date_positive)="When did you test positive for COVID-19 during your most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$type_of_test)="Type of positive COVID-19 test during your most recent infection:"
label(data_hb$antiviral_rx)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your most recent infection?"
label(data_hb$antiviral_rx_spec)="If you were prescribed an antiviral for your most recent infection, which medication was prescribed?"
label(data_hb$antiviral_rx_spec_oth)="If other antiviral for most recent infection, specify:"
label(data_hb$antiviral_rx_know_dt)="If you were prescribed an antiviral for your most recent infection, do you know the exact start and end dates that you took the medication?"
label(data_hb$antiviral_rx_start_dt)="Please indicate the date you started taking the antiviral medication for your most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$antiviral_rx_end_dt)="Please indicate the date you stopped taking the antiviral medication for your most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$pos_date_2)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your second most recent infection?"
label(data_hb$date_positive_2)="When did you test positive for COVID-19 during your second most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$type_of_test_2)="Type of positive COVID-19 test during your second most recent infection:"
label(data_hb$antiviral_rx_2)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your second most recent infection?"
label(data_hb$antiviral_rx_spec_2)="If you were prescribed an antiviral for your second most recent infection, which medication was prescribed?"
label(data_hb$antiviral_rx_spec_oth_2)="If other antiviral for second most recent infection, specify:"
label(data_hb$antiviral_rx_know_dt_2)="If you were prescribed an antiviral for your second most recent infection, do you know the exact start and end dates that you took the medication?"
label(data_hb$antiviral_rx_start_dt_2)="Please indicate the date you started taking the antiviral medication for your second most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$antiviral_rx_end_dt_2)="Please indicate the date you stopped taking the antiviral medication for your second most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$pos_date_3)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your third most recent infection?"
label(data_hb$date_positive_3)="When did you test positive for COVID-19 during your third most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$type_of_test_3)="Type of positive COVID-19 test during your third most recent infection:"
label(data_hb$antiviral_rx_3)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your third most recent infection?"
label(data_hb$antiviral_rx_spec_3)="If you were prescribed an antiviral for your third most recent infection, which medication was prescribed?"
label(data_hb$antiviral_rx_spec_oth_3)="If other antiviral for third most recent infection, specify:"
label(data_hb$antiviral_rx_know_dt_3)="If you were prescribed an antiviral for your third most recent infection, do you know the exact start and end dates that you took the medication?"
label(data_hb$antiviral_rx_start_dt_3)="Please indicate the date you started taking the antiviral medication for your third most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$antiviral_rx_end_dt_3)="Please indicate the date you stopped taking the antiviral medication for your third most recent infection (estimate the date if you dont know it exactly)."
label(data_hb$covid_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data_hb$vaccine)="Which vaccine? (NOW HIDDEN)"
label(data_hb$other_vaccine)="Other vaccine (specify): (NOW HIDDEN)"
label(data_hb$doses)="How many vaccine doses have you received?"
label(data_hb$know_dose1_date)="Do you know the exact date you received vaccine dose #1?"
label(data_hb$dose1_date)="When did you receive vaccine dose #1?  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$dose1_vaccine)="Which vaccine did you receive for dose #1?"
label(data_hb$dose1_other_vaccine)="Dose #1 other vaccine (specify):"
label(data_hb$know_dose2_date)="Do you know the exact date you received vaccine dose #2?"
label(data_hb$dose2_date)="When did you receive vaccine dose #2?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$dose2_vaccine)="Which vaccine did you receive for dose #2?"
label(data_hb$dose2_other_vaccine)="Dose #2 other vaccine (specify):"
label(data_hb$know_dose3_date)="Do you know the exact date you received vaccine dose #3?"
label(data_hb$dose3_date)="When did you receive vaccine dose #3?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$dose3_vaccine)="Which vaccine did you receive for dose #3?"
label(data_hb$dose3_other_vaccine)="Dose #3 other vaccine (specify):"
label(data_hb$know_dose4_date)="Do you know the exact date you received vaccine dose #4?"
label(data_hb$dose4_date)="When did you receive vaccine dose #4?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data_hb$dose4_vaccine)="Which vaccine did you receive for dose #4?"
label(data_hb$dose4_other_vaccine)="Dose #4 other vaccine (specify):"
label(data_hb$part_healthcare)="Is the study participant considered healthcare personnel? (See definition below.)  Healthcare personnel refers to all paid and unpaid persons serving in healthcare settings who have the potential for direct or indirect exposure to patients or infectious materials. This includes any employee or contractor of a healthcare facility such as physicians, nurses, students, respiratory therapists, phlebotomists, and laboratory staff, as well as transport, food service, housekeeping, volunteers and maintenance personnel."
label(data_hb$healthcare_survey)="Would the study participant be willing to participate in a separate vaccine effectiveness project for healthcare personnel by completing a 20 minute confidential survey online? Those eligible will receive an additional $20 gift card (separate from the one you will receive for participating in our testing study)."
label(data_hb$demographics_and_clinical_characteristics_complete)="Complete?"
label(data_hb$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data_hb$sex_sp)="Sexo al Nacimiento: "
label(data_hb$race_sp___1)="Raza: (choice=Blanca)"
label(data_hb$race_sp___2)="Raza: (choice=Afroamericana)"
label(data_hb$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data_hb$race_sp___4)="Raza: (choice=Otro)"
label(data_hb$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data_hb$other_race_sp)="Otra raza"
label(data_hb$ethnicity_sp)="Etnicidad:"
label(data_hb$address_sp)="Domicilio Postal:"
label(data_hb$city_sp)="Ciudad:"
label(data_hb$state_sp)="Estado:"
label(data_hb$zipcode_sp)="C&#243digo Postal:"
label(data_hb$phone_sp)="N&#250mero Telef&#243nico:"
label(data_hb$days_last_sx_sp)="Si actualmente tu hijo/a presenta síntomas, ¿desde hace cuántos días empezaron?"
label(data_hb$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fiebre)"
label(data_hb$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Escalofr&#237os)"
label(data_hb$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data_hb$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Tos)"
label(data_hb$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de cabeza)"
label(data_hb$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de garganta)"
label(data_hb$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fatiga)"
label(data_hb$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de articulaciones (artralgia))"
label(data_hb$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor muscular o corporal (Mialgia))"
label(data_hb$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Sensibilidad a la luz (Fotofobia))"
label(data_hb$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=V&#243mito)"
label(data_hb$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Nausea)"
label(data_hb$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Diarrea)"
label(data_hb$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor abdominal)"
label(data_hb$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=P&#233rdida del olfato o sabor)"
label(data_hb$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dificultad para respirar (disnea))"
label(data_hb$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Otro)"
label(data_hb$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Ninguno)"
label(data_hb$other_symptom_describe_sp)="Describe el Otro s&#237ntoma:"
label(data_hb$fever_sp)="Duraci&#243n de la fiebre, d&#237as:"
label(data_hb$chills_sp)="Duraci&#243n de los escalofr&#237os, d&#237as"
label(data_hb$congestion_sp)="Duraci&#243n de la congesti&#243n nasal/escurrimiento nasal (rinorrea), d&#237as"
label(data_hb$cough_sp)="Duraci&#243n de la tos, d&#237as "
label(data_hb$headache_sp)="Duraci&#243n del dolor de cabeza, d&#237as "
label(data_hb$sorethroat_sp)="Duraci&#243n del dolor de garganta, d&#237as"
label(data_hb$fatigue_sp)="Duraci&#243n de la fatiga,  d&#237as"
label(data_hb$arthralgias_sp)="Duraci&#243n del dolor de articulaciones (artralgias), d&#237as"
label(data_hb$myalgias_sp)="Duraci&#243n del dolor muscular o corporal (mialgias), d&#237as"
label(data_hb$photophobia_sp)="Duraci&#243n de la sensibilidad a la luz (fotofobia), d&#237as"
label(data_hb$vomiting_sp)="Duraci&#243n del v&#243mito, d&#237as"
label(data_hb$nausea_sp)="Duraci&#243n de la n&#225usea, d&#237as"
label(data_hb$diarrhea_sp)="Duraci&#243n de la diarrea, d&#237as"
label(data_hb$abdominalpain_sp)="Duraci&#243n del dolor abdominal, d&#237as"
label(data_hb$loss_taste_smell_sp)="Duraci&#243n de la p&#233rdida del olfato o sabor, d&#237as"
label(data_hb$dyspnea_sp)="Duraci&#243n de dificultad de respirar, d&#237as"
label(data_hb$other_symptom_sp)="Duraci&#243n [other_symptom_describe], d&#237as"
label(data_hb$symptom_onset_sp)="¿Cuál es la fecha cuando empezaron los primeros síntomas? "
label(data_hb$first_sx_start_sp)="¿Hace cu&#225ntos d&#237as tuviste tu primer s&#237ntoma?"
label(data_hb$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data_hb$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data_hb$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data_hb$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data_hb$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data_hb$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data_hb$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data_hb$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data_hb$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data_hb$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data_hb$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data_hb$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data_hb$med_conditions_other_sp)="Alguna otra condici&#243n m&#233dica no mencionada anteriormente:"
label(data_hb$known_covid_exposure_sp)="¿Ha tenido tu hijo/hija contacto o estado expuesto/a un caso CONFIRMADO (prueba positiva) de COVID-19?"
label(data_hb$suspected_exposure_sp)="¿Ha estado tu hijo/a expuesto/a o tenido contacto con alguien quien haya tenido sí de COVID-19 (caso sospechoso)?"
label(data_hb$exposure_source_sp___1)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Alguien en la casa/miembro de la familia)"
label(data_hb$exposure_source_sp___2)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Amigo)"
label(data_hb$exposure_source_sp___3)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Campamento/escuela)"
label(data_hb$exposure_source_sp___4)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Otro)"
label(data_hb$other_exposure_source_sp)="Otra fuente de exposici&#243n:"
label(data_hb$study_home_members_sp)="¿Te gustaría que te contactáramos si contamos con un estudio de investigación donde busquemos hacer la prueba de COVID-19 en otros miembros de tu hogar?"
label(data_hb$ssb_sp)="1. ¿Cómo ha cambiado la ingesta de bebidas azucaradas de tu hijo/a (incluyendo sodas, jugo, bebidas deportivas, bebidas energéticas, limonada, té azucarado, café; sin incluir bebidas dietéticas)?"
label(data_hb$physical_activity_sp)="2. ¿Cómo ha cambiado la actividad física de tu hijo/a?"
label(data_hb$child_weight_sp)="3. ¿Estás preocupado de cambios en el peso de tu hijo/a?"
label(data_hb$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
label(data_hb$date_positive_sp)="Cuando (fecha) recibio su hijo/hija un resultado positivo de COVID-19:"
label(data_hb$location_test_sp)="¿Donde recibio un resultado positivo ? "
label(data_hb$other_location_test_sp)="Otro sitio de pruebas:"
label(data_hb$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data_hb$vaccine_sp)="¿Cuál de ellas? :"
label(data_hb$other_vaccine_sp)="Cual otra vacuna:"
label(data_hb$doses_sp)="¿Cuántas dosis? "
label(data_hb$dose1_date_sp)="¿Cuando recibio la primera dosis (dosis #1):    "
label(data_hb$dose2_date_sp)="¿Cuando recibio la segunda dosis (dosis #2):   "
label(data_hb$covid_result)="Result of clinical COVID test:"
label(data_hb$patient_mrn)="Medical Record Number (MRN)"
label(data_hb$adult_mrn)="Adult Medical Number (MRN)  (NOW HIDDEN)"
#Setting Units


#Setting Factors(will create new variable for factors)
data_hb$redcap_event_name.factor = factor(data_hb$redcap_event_name,levels=c("event_1_arm_1","fatigue_study_base_arm_1","fatigue_study_fu_1_arm_1","fatigue_study_fu_2_arm_1"))
data_hb$how_aware.factor = factor(data_hb$how_aware,levels=c("1","2","3","4","5","6","7","8","99"))
data_hb$sex.factor = factor(data_hb$sex,levels=c("1","2"))
data_hb$race___1.factor = factor(data_hb$race___1,levels=c("0","1"))
data_hb$race___2.factor = factor(data_hb$race___2,levels=c("0","1"))
data_hb$race___3.factor = factor(data_hb$race___3,levels=c("0","1"))
data_hb$race___4.factor = factor(data_hb$race___4,levels=c("0","1"))
data_hb$race___99.factor = factor(data_hb$race___99,levels=c("0","1"))
data_hb$ethnicity.factor = factor(data_hb$ethnicity,levels=c("1","0","99"))
data_hb$state.factor = factor(data_hb$state,levels=c("1","99"))
data_hb$symptoms___1.factor = factor(data_hb$symptoms___1,levels=c("0","1"))
data_hb$symptoms___2.factor = factor(data_hb$symptoms___2,levels=c("0","1"))
data_hb$symptoms___3.factor = factor(data_hb$symptoms___3,levels=c("0","1"))
data_hb$symptoms___4.factor = factor(data_hb$symptoms___4,levels=c("0","1"))
data_hb$symptoms___5.factor = factor(data_hb$symptoms___5,levels=c("0","1"))
data_hb$symptoms___6.factor = factor(data_hb$symptoms___6,levels=c("0","1"))
data_hb$symptoms___7.factor = factor(data_hb$symptoms___7,levels=c("0","1"))
data_hb$symptoms___8.factor = factor(data_hb$symptoms___8,levels=c("0","1"))
data_hb$symptoms___9.factor = factor(data_hb$symptoms___9,levels=c("0","1"))
data_hb$symptoms___10.factor = factor(data_hb$symptoms___10,levels=c("0","1"))
data_hb$symptoms___11.factor = factor(data_hb$symptoms___11,levels=c("0","1"))
data_hb$symptoms___12.factor = factor(data_hb$symptoms___12,levels=c("0","1"))
data_hb$symptoms___13.factor = factor(data_hb$symptoms___13,levels=c("0","1"))
data_hb$symptoms___14.factor = factor(data_hb$symptoms___14,levels=c("0","1"))
data_hb$symptoms___15.factor = factor(data_hb$symptoms___15,levels=c("0","1"))
data_hb$symptoms___17.factor = factor(data_hb$symptoms___17,levels=c("0","1"))
data_hb$symptoms___99.factor = factor(data_hb$symptoms___99,levels=c("0","1"))
data_hb$symptoms___16.factor = factor(data_hb$symptoms___16,levels=c("0","1"))
data_hb$symptomatic.factor = factor(data_hb$symptomatic,levels=c("1","0"))
data_hb$symptoms_today___1.factor = factor(data_hb$symptoms_today___1,levels=c("0","1"))
data_hb$symptoms_today___2.factor = factor(data_hb$symptoms_today___2,levels=c("0","1"))
data_hb$symptoms_today___3.factor = factor(data_hb$symptoms_today___3,levels=c("0","1"))
data_hb$symptoms_today___4.factor = factor(data_hb$symptoms_today___4,levels=c("0","1"))
data_hb$symptoms_today___5.factor = factor(data_hb$symptoms_today___5,levels=c("0","1"))
data_hb$symptoms_today___6.factor = factor(data_hb$symptoms_today___6,levels=c("0","1"))
data_hb$symptoms_today___7.factor = factor(data_hb$symptoms_today___7,levels=c("0","1"))
data_hb$symptoms_today___8.factor = factor(data_hb$symptoms_today___8,levels=c("0","1"))
data_hb$symptoms_today___9.factor = factor(data_hb$symptoms_today___9,levels=c("0","1"))
data_hb$symptoms_today___10.factor = factor(data_hb$symptoms_today___10,levels=c("0","1"))
data_hb$symptoms_today___11.factor = factor(data_hb$symptoms_today___11,levels=c("0","1"))
data_hb$symptoms_today___12.factor = factor(data_hb$symptoms_today___12,levels=c("0","1"))
data_hb$symptoms_today___13.factor = factor(data_hb$symptoms_today___13,levels=c("0","1"))
data_hb$symptoms_today___14.factor = factor(data_hb$symptoms_today___14,levels=c("0","1"))
data_hb$symptoms_today___15.factor = factor(data_hb$symptoms_today___15,levels=c("0","1"))
data_hb$symptoms_today___17.factor = factor(data_hb$symptoms_today___17,levels=c("0","1"))
data_hb$symptoms_today___99.factor = factor(data_hb$symptoms_today___99,levels=c("0","1"))
data_hb$symptoms_today___16.factor = factor(data_hb$symptoms_today___16,levels=c("0","1"))
data_hb$med_conditions___1.factor = factor(data_hb$med_conditions___1,levels=c("0","1"))
data_hb$med_conditions___2.factor = factor(data_hb$med_conditions___2,levels=c("0","1"))
data_hb$med_conditions___3.factor = factor(data_hb$med_conditions___3,levels=c("0","1"))
data_hb$med_conditions___4.factor = factor(data_hb$med_conditions___4,levels=c("0","1"))
data_hb$med_conditions___5.factor = factor(data_hb$med_conditions___5,levels=c("0","1"))
data_hb$med_conditions___6.factor = factor(data_hb$med_conditions___6,levels=c("0","1"))
data_hb$med_conditions___7.factor = factor(data_hb$med_conditions___7,levels=c("0","1"))
data_hb$med_conditions___8.factor = factor(data_hb$med_conditions___8,levels=c("0","1"))
data_hb$med_conditions___9.factor = factor(data_hb$med_conditions___9,levels=c("0","1"))
data_hb$med_conditions___10.factor = factor(data_hb$med_conditions___10,levels=c("0","1"))
data_hb$med_conditions___13.factor = factor(data_hb$med_conditions___13,levels=c("0","1"))
data_hb$med_conditions___14.factor = factor(data_hb$med_conditions___14,levels=c("0","1"))
data_hb$med_conditions___15.factor = factor(data_hb$med_conditions___15,levels=c("0","1"))
data_hb$med_conditions___11.factor = factor(data_hb$med_conditions___11,levels=c("0","1"))
data_hb$med_conditions___12.factor = factor(data_hb$med_conditions___12,levels=c("0","1"))
data_hb$eat_drink.factor = factor(data_hb$eat_drink,levels=c("1","0"))
data_hb$smoker.factor = factor(data_hb$smoker,levels=c("1","0","2"))
data_hb$smoked_last_hour.factor = factor(data_hb$smoked_last_hour,levels=c("1","0"))
data_hb$drink_alcohol.factor = factor(data_hb$drink_alcohol,levels=c("1","0","2"))
data_hb$alcohol_product.factor = factor(data_hb$alcohol_product,levels=c("1","0","2"))
data_hb$test_reason___1.factor = factor(data_hb$test_reason___1,levels=c("0","1"))
data_hb$test_reason___2.factor = factor(data_hb$test_reason___2,levels=c("0","1"))
data_hb$test_reason___6.factor = factor(data_hb$test_reason___6,levels=c("0","1"))
data_hb$test_reason___3.factor = factor(data_hb$test_reason___3,levels=c("0","1"))
data_hb$test_reason___4.factor = factor(data_hb$test_reason___4,levels=c("0","1"))
data_hb$test_reason___5.factor = factor(data_hb$test_reason___5,levels=c("0","1"))
data_hb$known_covid_exposure.factor = factor(data_hb$known_covid_exposure,levels=c("1","0","99"))
data_hb$exposure_source_known___1.factor = factor(data_hb$exposure_source_known___1,levels=c("0","1"))
data_hb$exposure_source_known___2.factor = factor(data_hb$exposure_source_known___2,levels=c("0","1"))
data_hb$exposure_source_known___3.factor = factor(data_hb$exposure_source_known___3,levels=c("0","1"))
data_hb$exposure_source_known___5.factor = factor(data_hb$exposure_source_known___5,levels=c("0","1"))
data_hb$exposure_source_known___4.factor = factor(data_hb$exposure_source_known___4,levels=c("0","1"))
data_hb$suspected_exposure.factor = factor(data_hb$suspected_exposure,levels=c("1","0","99"))
data_hb$exposure_source___1.factor = factor(data_hb$exposure_source___1,levels=c("0","1"))
data_hb$exposure_source___2.factor = factor(data_hb$exposure_source___2,levels=c("0","1"))
data_hb$exposure_source___3.factor = factor(data_hb$exposure_source___3,levels=c("0","1"))
data_hb$exposure_source___5.factor = factor(data_hb$exposure_source___5,levels=c("0","1"))
data_hb$exposure_source___4.factor = factor(data_hb$exposure_source___4,levels=c("0","1"))
data_hb$study_home_members.factor = factor(data_hb$study_home_members,levels=c("1","0"))
data_hb$any_test_14days.factor = factor(data_hb$any_test_14days,levels=c("1","0"))
data_hb$home_test_before.factor = factor(data_hb$home_test_before,levels=c("1","0"))
data_hb$previous_covid.factor = factor(data_hb$previous_covid,levels=c("1","0","99"))
data_hb$number_infections.factor = factor(data_hb$number_infections,levels=c("1","2","3"))
data_hb$pos_date.factor = factor(data_hb$pos_date,levels=c("1","0"))
data_hb$type_of_test.factor = factor(data_hb$type_of_test,levels=c("1","2"))
data_hb$antiviral_rx.factor = factor(data_hb$antiviral_rx,levels=c("1","0"))
data_hb$antiviral_rx_spec.factor = factor(data_hb$antiviral_rx_spec,levels=c("1","2","3","4"))
data_hb$antiviral_rx_know_dt.factor = factor(data_hb$antiviral_rx_know_dt,levels=c("1","0"))
data_hb$pos_date_2.factor = factor(data_hb$pos_date_2,levels=c("1","0"))
data_hb$type_of_test_2.factor = factor(data_hb$type_of_test_2,levels=c("1","2"))
data_hb$antiviral_rx_2.factor = factor(data_hb$antiviral_rx_2,levels=c("1","0"))
data_hb$antiviral_rx_spec_2.factor = factor(data_hb$antiviral_rx_spec_2,levels=c("1","2","3","4"))
data_hb$antiviral_rx_know_dt_2.factor = factor(data_hb$antiviral_rx_know_dt_2,levels=c("1","0"))
data_hb$pos_date_3.factor = factor(data_hb$pos_date_3,levels=c("1","0"))
data_hb$type_of_test_3.factor = factor(data_hb$type_of_test_3,levels=c("1","2"))
data_hb$antiviral_rx_3.factor = factor(data_hb$antiviral_rx_3,levels=c("1","0"))
data_hb$antiviral_rx_spec_3.factor = factor(data_hb$antiviral_rx_spec_3,levels=c("1","2","3","4"))
data_hb$antiviral_rx_know_dt_3.factor = factor(data_hb$antiviral_rx_know_dt_3,levels=c("1","0"))
data_hb$covid_vaccine.factor = factor(data_hb$covid_vaccine,levels=c("1","0","99"))
data_hb$vaccine.factor = factor(data_hb$vaccine,levels=c("1","2","3","4","99"))
data_hb$doses.factor = factor(data_hb$doses,levels=c("1","2","3","4"))
data_hb$know_dose1_date.factor = factor(data_hb$know_dose1_date,levels=c("1","0"))
data_hb$dose1_vaccine.factor = factor(data_hb$dose1_vaccine,levels=c("1","2","3","4","99"))
data_hb$know_dose2_date.factor = factor(data_hb$know_dose2_date,levels=c("1","0"))
data_hb$dose2_vaccine.factor = factor(data_hb$dose2_vaccine,levels=c("1","2","3","4","99"))
data_hb$know_dose3_date.factor = factor(data_hb$know_dose3_date,levels=c("1","0"))
data_hb$dose3_vaccine.factor = factor(data_hb$dose3_vaccine,levels=c("1","2","3","4","99"))
data_hb$know_dose4_date.factor = factor(data_hb$know_dose4_date,levels=c("1","0"))
data_hb$dose4_vaccine.factor = factor(data_hb$dose4_vaccine,levels=c("1","2","3","4","99"))
data_hb$part_healthcare.factor = factor(data_hb$part_healthcare,levels=c("1","0"))
data_hb$healthcare_survey.factor = factor(data_hb$healthcare_survey,levels=c("1","0"))
data_hb$demographics_and_clinical_characteristics_complete.factor = factor(data_hb$demographics_and_clinical_characteristics_complete,levels=c("0","1","2"))
data_hb$sex_sp.factor = factor(data_hb$sex_sp,levels=c("1","2"))
data_hb$race_sp___1.factor = factor(data_hb$race_sp___1,levels=c("0","1"))
data_hb$race_sp___2.factor = factor(data_hb$race_sp___2,levels=c("0","1"))
data_hb$race_sp___3.factor = factor(data_hb$race_sp___3,levels=c("0","1"))
data_hb$race_sp___4.factor = factor(data_hb$race_sp___4,levels=c("0","1"))
data_hb$race_sp___99.factor = factor(data_hb$race_sp___99,levels=c("0","1"))
data_hb$ethnicity_sp.factor = factor(data_hb$ethnicity_sp,levels=c("1","0","99"))
data_hb$days_last_sx_sp.factor = factor(data_hb$days_last_sx_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$symptoms_sp___1.factor = factor(data_hb$symptoms_sp___1,levels=c("0","1"))
data_hb$symptoms_sp___2.factor = factor(data_hb$symptoms_sp___2,levels=c("0","1"))
data_hb$symptoms_sp___3.factor = factor(data_hb$symptoms_sp___3,levels=c("0","1"))
data_hb$symptoms_sp___4.factor = factor(data_hb$symptoms_sp___4,levels=c("0","1"))
data_hb$symptoms_sp___5.factor = factor(data_hb$symptoms_sp___5,levels=c("0","1"))
data_hb$symptoms_sp___6.factor = factor(data_hb$symptoms_sp___6,levels=c("0","1"))
data_hb$symptoms_sp___7.factor = factor(data_hb$symptoms_sp___7,levels=c("0","1"))
data_hb$symptoms_sp___8.factor = factor(data_hb$symptoms_sp___8,levels=c("0","1"))
data_hb$symptoms_sp___9.factor = factor(data_hb$symptoms_sp___9,levels=c("0","1"))
data_hb$symptoms_sp___10.factor = factor(data_hb$symptoms_sp___10,levels=c("0","1"))
data_hb$symptoms_sp___11.factor = factor(data_hb$symptoms_sp___11,levels=c("0","1"))
data_hb$symptoms_sp___12.factor = factor(data_hb$symptoms_sp___12,levels=c("0","1"))
data_hb$symptoms_sp___13.factor = factor(data_hb$symptoms_sp___13,levels=c("0","1"))
data_hb$symptoms_sp___14.factor = factor(data_hb$symptoms_sp___14,levels=c("0","1"))
data_hb$symptoms_sp___15.factor = factor(data_hb$symptoms_sp___15,levels=c("0","1"))
data_hb$symptoms_sp___17.factor = factor(data_hb$symptoms_sp___17,levels=c("0","1"))
data_hb$symptoms_sp___99.factor = factor(data_hb$symptoms_sp___99,levels=c("0","1"))
data_hb$symptoms_sp___16.factor = factor(data_hb$symptoms_sp___16,levels=c("0","1"))
data_hb$fever_sp.factor = factor(data_hb$fever_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$chills_sp.factor = factor(data_hb$chills_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$congestion_sp.factor = factor(data_hb$congestion_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$cough_sp.factor = factor(data_hb$cough_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$headache_sp.factor = factor(data_hb$headache_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$sorethroat_sp.factor = factor(data_hb$sorethroat_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$fatigue_sp.factor = factor(data_hb$fatigue_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$arthralgias_sp.factor = factor(data_hb$arthralgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$myalgias_sp.factor = factor(data_hb$myalgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$photophobia_sp.factor = factor(data_hb$photophobia_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$vomiting_sp.factor = factor(data_hb$vomiting_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$nausea_sp.factor = factor(data_hb$nausea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$diarrhea_sp.factor = factor(data_hb$diarrhea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$abdominalpain_sp.factor = factor(data_hb$abdominalpain_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$loss_taste_smell_sp.factor = factor(data_hb$loss_taste_smell_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$dyspnea_sp.factor = factor(data_hb$dyspnea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$other_symptom_sp.factor = factor(data_hb$other_symptom_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb$first_sx_start_sp.factor = factor(data_hb$first_sx_start_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data_hb$med_conditions_sp___1.factor = factor(data_hb$med_conditions_sp___1,levels=c("0","1"))
data_hb$med_conditions_sp___2.factor = factor(data_hb$med_conditions_sp___2,levels=c("0","1"))
data_hb$med_conditions_sp___3.factor = factor(data_hb$med_conditions_sp___3,levels=c("0","1"))
data_hb$med_conditions_sp___4.factor = factor(data_hb$med_conditions_sp___4,levels=c("0","1"))
data_hb$med_conditions_sp___5.factor = factor(data_hb$med_conditions_sp___5,levels=c("0","1"))
data_hb$med_conditions_sp___6.factor = factor(data_hb$med_conditions_sp___6,levels=c("0","1"))
data_hb$med_conditions_sp___7.factor = factor(data_hb$med_conditions_sp___7,levels=c("0","1"))
data_hb$med_conditions_sp___8.factor = factor(data_hb$med_conditions_sp___8,levels=c("0","1"))
data_hb$med_conditions_sp___9.factor = factor(data_hb$med_conditions_sp___9,levels=c("0","1"))
data_hb$med_conditions_sp___10.factor = factor(data_hb$med_conditions_sp___10,levels=c("0","1"))
data_hb$med_conditions_sp___11.factor = factor(data_hb$med_conditions_sp___11,levels=c("0","1"))
data_hb$med_conditions_sp___12.factor = factor(data_hb$med_conditions_sp___12,levels=c("0","1"))
data_hb$known_covid_exposure_sp.factor = factor(data_hb$known_covid_exposure_sp,levels=c("1","0","99"))
data_hb$suspected_exposure_sp.factor = factor(data_hb$suspected_exposure_sp,levels=c("1","0","99"))
data_hb$exposure_source_sp___1.factor = factor(data_hb$exposure_source_sp___1,levels=c("0","1"))
data_hb$exposure_source_sp___2.factor = factor(data_hb$exposure_source_sp___2,levels=c("0","1"))
data_hb$exposure_source_sp___3.factor = factor(data_hb$exposure_source_sp___3,levels=c("0","1"))
data_hb$exposure_source_sp___4.factor = factor(data_hb$exposure_source_sp___4,levels=c("0","1"))
data_hb$study_home_members_sp.factor = factor(data_hb$study_home_members_sp,levels=c("1","0"))
data_hb$ssb_sp.factor = factor(data_hb$ssb_sp,levels=c("1","2","3","4","5"))
data_hb$physical_activity_sp.factor = factor(data_hb$physical_activity_sp,levels=c("1","2","3","4","5"))
data_hb$child_weight_sp.factor = factor(data_hb$child_weight_sp,levels=c("1","2","3","4"))
data_hb$previous_covid_sp.factor = factor(data_hb$previous_covid_sp,levels=c("1","0","99"))
data_hb$location_test_sp.factor = factor(data_hb$location_test_sp,levels=c("1","2","3","4","5"))
data_hb$covid_vaccine_sp.factor = factor(data_hb$covid_vaccine_sp,levels=c("1","0","99"))
data_hb$vaccine_sp.factor = factor(data_hb$vaccine_sp,levels=c("1","2","3","4","99"))
data_hb$doses_sp.factor = factor(data_hb$doses_sp,levels=c("1","2"))
data_hb$covid_result.factor = factor(data_hb$covid_result,levels=c("1","0","99"))

levels(data_hb$redcap_event_name.factor)=c("Event 1","Fatigue Study: Baseline","Fatigue Study: F/U 1 (4 Week)","Fatigue Study: F/U 2 (6 Week)")
levels(data_hb$how_aware.factor)=c("From a friend or colleague","From the Emory Forward website","From a printed QR code","From social media","From a podcast advertisement","From a radio advertisement","From a news media report (newspaper, TV, etc.)","From an internet search","Other")
levels(data_hb$sex.factor)=c("Male","Female")
levels(data_hb$race___1.factor)=c("Unchecked","Checked")
levels(data_hb$race___2.factor)=c("Unchecked","Checked")
levels(data_hb$race___3.factor)=c("Unchecked","Checked")
levels(data_hb$race___4.factor)=c("Unchecked","Checked")
levels(data_hb$race___99.factor)=c("Unchecked","Checked")
levels(data_hb$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data_hb$state.factor)=c("Georgia","Other")
levels(data_hb$symptoms___1.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___2.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___3.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___4.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___5.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___6.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___7.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___8.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___9.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___10.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___11.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___12.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___13.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___14.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___15.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___17.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___99.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms___16.factor)=c("Unchecked","Checked")
levels(data_hb$symptomatic.factor)=c("Yes","No")
levels(data_hb$symptoms_today___1.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___2.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___3.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___4.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___5.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___6.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___7.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___8.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___9.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___10.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___11.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___12.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___13.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___14.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___15.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___17.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___99.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_today___16.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___13.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___14.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___15.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data_hb$eat_drink.factor)=c("Yes","No")
levels(data_hb$smoker.factor)=c("Yes","No","Refused/not applicable")
levels(data_hb$smoked_last_hour.factor)=c("Yes","No")
levels(data_hb$drink_alcohol.factor)=c("Yes","No","Refused/not applicable")
levels(data_hb$alcohol_product.factor)=c("Yes","No","Refused/not applicable")
levels(data_hb$test_reason___1.factor)=c("Unchecked","Checked")
levels(data_hb$test_reason___2.factor)=c("Unchecked","Checked")
levels(data_hb$test_reason___6.factor)=c("Unchecked","Checked")
levels(data_hb$test_reason___3.factor)=c("Unchecked","Checked")
levels(data_hb$test_reason___4.factor)=c("Unchecked","Checked")
levels(data_hb$test_reason___5.factor)=c("Unchecked","Checked")
levels(data_hb$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb$exposure_source_known___1.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_known___2.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_known___3.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_known___5.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_known___4.factor)=c("Unchecked","Checked")
levels(data_hb$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source___3.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source___5.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data_hb$study_home_members.factor)=c("Yes","No")
levels(data_hb$any_test_14days.factor)=c("Yes","No")
levels(data_hb$home_test_before.factor)=c("Yes","No")
levels(data_hb$previous_covid.factor)=c("Yes","No","Unknown")
levels(data_hb$number_infections.factor)=c("1","2","3")
levels(data_hb$pos_date.factor)=c("Yes","No")
levels(data_hb$type_of_test.factor)=c("PCR","Rapid Antigen")
levels(data_hb$antiviral_rx.factor)=c("Yes","No")
levels(data_hb$antiviral_rx_spec.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data_hb$antiviral_rx_know_dt.factor)=c("Yes","No")
levels(data_hb$pos_date_2.factor)=c("Yes","No")
levels(data_hb$type_of_test_2.factor)=c("PCR","Rapid Antigen")
levels(data_hb$antiviral_rx_2.factor)=c("Yes","No")
levels(data_hb$antiviral_rx_spec_2.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data_hb$antiviral_rx_know_dt_2.factor)=c("Yes","No")
levels(data_hb$pos_date_3.factor)=c("Yes","No")
levels(data_hb$type_of_test_3.factor)=c("PCR","Rapid Antigen")
levels(data_hb$antiviral_rx_3.factor)=c("Yes","No")
levels(data_hb$antiviral_rx_spec_3.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data_hb$antiviral_rx_know_dt_3.factor)=c("Yes","No")
levels(data_hb$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data_hb$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb$doses.factor)=c("1 dose","2 doses","3 doses","4 doses")
levels(data_hb$know_dose1_date.factor)=c("Yes","No")
levels(data_hb$dose1_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb$know_dose2_date.factor)=c("Yes","No")
levels(data_hb$dose2_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb$know_dose3_date.factor)=c("Yes","No")
levels(data_hb$dose3_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb$know_dose4_date.factor)=c("Yes","No")
levels(data_hb$dose4_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb$part_healthcare.factor)=c("Yes","No")
levels(data_hb$healthcare_survey.factor)=c("Yes","No")
levels(data_hb$demographics_and_clinical_characteristics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data_hb$sex_sp.factor)=c("Masculino","Femenino")
levels(data_hb$race_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb$race_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb$race_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb$race_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb$race_sp___99.factor)=c("Unchecked","Checked")
levels(data_hb$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data_hb$days_last_sx_sp.factor)=c("No presenta s&#237ntomas","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data_hb$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data_hb$fever_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$chills_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$congestion_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$cough_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$headache_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$sorethroat_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$fatigue_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$arthralgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$myalgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$photophobia_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$vomiting_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$nausea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$diarrhea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$abdominalpain_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$loss_taste_smell_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$dyspnea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$other_symptom_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb$first_sx_start_sp.factor)=c("Hoy","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)","No recuerdo/No s&#233")
levels(data_hb$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data_hb$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data_hb$known_covid_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data_hb$suspected_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data_hb$exposure_source_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb$exposure_source_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb$study_home_members_sp.factor)=c("Yes","No")
levels(data_hb$ssb_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data_hb$physical_activity_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data_hb$child_weight_sp.factor)=c("a. Sí, porque él/ella parece ha aumentado de peso más de lo que debería","b. Sí, parece que él/ella está perdiendo peso","c. No, no estoy preocupado","d. Sin respuesta")
levels(data_hb$previous_covid_sp.factor)=c("Si","No","No sé.")
levels(data_hb$location_test_sp.factor)=c("CHOA (Childrens Healthcare of Atlanta)","Public Health Testing site (Sitio/centro de pruebas de salud pública)","Pediatra","Farmacia","Otro sitio de pruebas")
levels(data_hb$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data_hb$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data_hb$doses_sp.factor)=c("1 dosis","2 dosis")
levels(data_hb$covid_result.factor)=c("POSITIVE","NEGATIVE","UNDETERMINED (inconclusive)")

#Read Data
data_hb2=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxT3AdultCovidTest-HemoglobinDemographi_DATA_2022-07-12_1625.csv')
#Setting Labels

label(data_hb2$record_id)="Record ID"
label(data_hb2$redcap_event_name)="Event Name"
label(data_hb2$redcap_repeat_instrument)="Repeat Instrument"
label(data_hb2$redcap_repeat_instance)="Repeat Instance"
label(data_hb2$date_consent)="Date of Consent"
label(data_hb2$enrollment_location)="Enrollment location"
label(data_hb2$hospital)="If in-patient, which hospital?"
label(data_hb2$hospital_spec)="If other hospital, specify"
label(data_hb2$other_location)="Other  enrollment location, specify"
label(data_hb2$dob)="Participant Date of Birth"
label(data_hb2$age_years)="Participant Age in years"
label(data_hb2$sex)="Participants Sex at birth"
label(data_hb2$race___1)="Participant Race (choice=White)"
label(data_hb2$race___2)="Participant Race (choice=Black/African-American)"
label(data_hb2$race___3)="Participant Race (choice=Asian)"
label(data_hb2$race___4)="Participant Race (choice=Other)"
label(data_hb2$race___88)="Participant Race (choice=Refused to answer)"
label(data_hb2$other_race)="Other race/ethnicity"
label(data_hb2$ethnicity)="Participant Ethnicity "
label(data_hb2$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fever)"
label(data_hb2$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=chills)"
label(data_hb2$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=congestion/rhinorrhea)"
label(data_hb2$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=cough)"
label(data_hb2$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=headache)"
label(data_hb2$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=sore throat)"
label(data_hb2$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fatigue)"
label(data_hb2$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=arthralgias)"
label(data_hb2$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=myalgias)"
label(data_hb2$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=photophobia)"
label(data_hb2$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=vomiting)"
label(data_hb2$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=nausea)"
label(data_hb2$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=diarrhea)"
label(data_hb2$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=abdominal pain)"
label(data_hb2$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=loss of sense of taste or smell)"
label(data_hb2$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=shortness of breath (dyspnea))"
label(data_hb2$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=other)"
label(data_hb2$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=none)"
label(data_hb2$other_symptom_describe)="Describe other symptom"
label(data_hb2$symptom_onset)="What is the date of the earliest symptom onset?"
label(data_hb2$symptom_length)="What is the length of symptoms in days?"
label(data_hb2$med_conditions___1)="Do you have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data_hb2$med_conditions___2)="Do you have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data_hb2$med_conditions___3)="Do you have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data_hb2$med_conditions___4)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data_hb2$med_conditions___5)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data_hb2$med_conditions___6)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data_hb2$med_conditions___7)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data_hb2$med_conditions___8)="Do you have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data_hb2$med_conditions___9)="Do you have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data_hb2$med_conditions___10)="Do you have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data_hb2$med_conditions___13)="Do you have any of the following conditions? Please check all that apply:  (choice=Asthma)"
label(data_hb2$med_conditions___14)="Do you have any of the following conditions? Please check all that apply:  (choice=Allergies)"
label(data_hb2$med_conditions___15)="Do you have any of the following conditions? Please check all that apply:  (choice=Chronic sinus disease)"
label(data_hb2$med_conditions___11)="Do you have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data_hb2$med_conditions___12)="Do you have any of the following conditions? Please check all that apply:  (choice=None)"
label(data_hb2$med_conditions_other)="Other medical condition not listed above:"
label(data_hb2$eat_drink)="Did you eat or drink anything in the last 15 minutes?"
label(data_hb2$smoker)="Are you a current smoker?"
label(data_hb2$smoked_last_hour)="If yes, have you smoked in the last hour?"
label(data_hb2$alcohol_last)="When was the last time you had an alcoholic beverage?"
label(data_hb2$alcohol_last_product)="When was the last time you used a product with alcohol in it such as mouthwash?"
label(data_hb2$known_covid_exposure)="Have you been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data_hb2$suspected_exposure)="Have you been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data_hb2$exposure_source___1)="If you suspect you were exposed, was the exposure from : (choice=Someone at home/family member)"
label(data_hb2$exposure_source___2)="If you suspect you were exposed, was the exposure from : (choice=Friend)"
label(data_hb2$exposure_source___5)="If you suspect you were exposed, was the exposure from : (choice=Work/school)"
label(data_hb2$exposure_source___4)="If you suspect you were exposed, was the exposure from : (choice=Other)"
label(data_hb2$other_exposure_source)="Other exposure source:"
label(data_hb2$covid_pos)="Have you tested positive for COVID-19 before?"
label(data_hb2$covid_pos_dt)="If you tested positive for COVID-19, indicate date of test:"
label(data_hb2$covid_pos_test)="If you tested positive for COVID-19, indicate type of test:"
label(data_hb2$recd_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data_hb2$vaccine1_dt)="What date did you receive the first dose?"
label(data_hb2$vaccine1_vaccine)="Which vaccine did you receive for your first dose?"
label(data_hb2$recd_vaccine2)="Have you received a second dose?"
label(data_hb2$vaccine2_dt)="What date did you receive the second dose?"
label(data_hb2$vaccine2_vaccine)="Which vaccine did you receive for your second dose?"
label(data_hb2$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data_hb2$covid_result)="Result of clinical COVID test:"
label(data_hb2$choa_mrn)="Patient MRN "
#Setting Units


#Setting Factors(will create new variable for factors)
data_hb2$redcap_event_name.factor = factor(data_hb2$redcap_event_name,levels=c("primary_studies_ba_arm_1","fatigue_study_base_arm_1","fatigue_study_fu_1_arm_1","fatigue_study_fu_2_arm_1"))
data_hb2$redcap_repeat_instrument.factor = factor(data_hb2$redcap_repeat_instrument,levels=c("lab_spreadsheet"))
data_hb2$enrollment_location.factor = factor(data_hb2$enrollment_location,levels=c("7","8","9","5","10","11","12","6"))
data_hb2$hospital.factor = factor(data_hb2$hospital,levels=c("1","2","3"))
data_hb2$sex.factor = factor(data_hb2$sex,levels=c("1","2"))
data_hb2$race___1.factor = factor(data_hb2$race___1,levels=c("0","1"))
data_hb2$race___2.factor = factor(data_hb2$race___2,levels=c("0","1"))
data_hb2$race___3.factor = factor(data_hb2$race___3,levels=c("0","1"))
data_hb2$race___4.factor = factor(data_hb2$race___4,levels=c("0","1"))
data_hb2$race___88.factor = factor(data_hb2$race___88,levels=c("0","1"))
data_hb2$ethnicity.factor = factor(data_hb2$ethnicity,levels=c("1","0","88"))
data_hb2$symptoms___1.factor = factor(data_hb2$symptoms___1,levels=c("0","1"))
data_hb2$symptoms___2.factor = factor(data_hb2$symptoms___2,levels=c("0","1"))
data_hb2$symptoms___3.factor = factor(data_hb2$symptoms___3,levels=c("0","1"))
data_hb2$symptoms___4.factor = factor(data_hb2$symptoms___4,levels=c("0","1"))
data_hb2$symptoms___5.factor = factor(data_hb2$symptoms___5,levels=c("0","1"))
data_hb2$symptoms___6.factor = factor(data_hb2$symptoms___6,levels=c("0","1"))
data_hb2$symptoms___7.factor = factor(data_hb2$symptoms___7,levels=c("0","1"))
data_hb2$symptoms___8.factor = factor(data_hb2$symptoms___8,levels=c("0","1"))
data_hb2$symptoms___9.factor = factor(data_hb2$symptoms___9,levels=c("0","1"))
data_hb2$symptoms___10.factor = factor(data_hb2$symptoms___10,levels=c("0","1"))
data_hb2$symptoms___11.factor = factor(data_hb2$symptoms___11,levels=c("0","1"))
data_hb2$symptoms___12.factor = factor(data_hb2$symptoms___12,levels=c("0","1"))
data_hb2$symptoms___13.factor = factor(data_hb2$symptoms___13,levels=c("0","1"))
data_hb2$symptoms___14.factor = factor(data_hb2$symptoms___14,levels=c("0","1"))
data_hb2$symptoms___15.factor = factor(data_hb2$symptoms___15,levels=c("0","1"))
data_hb2$symptoms___17.factor = factor(data_hb2$symptoms___17,levels=c("0","1"))
data_hb2$symptoms___99.factor = factor(data_hb2$symptoms___99,levels=c("0","1"))
data_hb2$symptoms___16.factor = factor(data_hb2$symptoms___16,levels=c("0","1"))
data_hb2$med_conditions___1.factor = factor(data_hb2$med_conditions___1,levels=c("0","1"))
data_hb2$med_conditions___2.factor = factor(data_hb2$med_conditions___2,levels=c("0","1"))
data_hb2$med_conditions___3.factor = factor(data_hb2$med_conditions___3,levels=c("0","1"))
data_hb2$med_conditions___4.factor = factor(data_hb2$med_conditions___4,levels=c("0","1"))
data_hb2$med_conditions___5.factor = factor(data_hb2$med_conditions___5,levels=c("0","1"))
data_hb2$med_conditions___6.factor = factor(data_hb2$med_conditions___6,levels=c("0","1"))
data_hb2$med_conditions___7.factor = factor(data_hb2$med_conditions___7,levels=c("0","1"))
data_hb2$med_conditions___8.factor = factor(data_hb2$med_conditions___8,levels=c("0","1"))
data_hb2$med_conditions___9.factor = factor(data_hb2$med_conditions___9,levels=c("0","1"))
data_hb2$med_conditions___10.factor = factor(data_hb2$med_conditions___10,levels=c("0","1"))
data_hb2$med_conditions___13.factor = factor(data_hb2$med_conditions___13,levels=c("0","1"))
data_hb2$med_conditions___14.factor = factor(data_hb2$med_conditions___14,levels=c("0","1"))
data_hb2$med_conditions___15.factor = factor(data_hb2$med_conditions___15,levels=c("0","1"))
data_hb2$med_conditions___11.factor = factor(data_hb2$med_conditions___11,levels=c("0","1"))
data_hb2$med_conditions___12.factor = factor(data_hb2$med_conditions___12,levels=c("0","1"))
data_hb2$eat_drink.factor = factor(data_hb2$eat_drink,levels=c("1","0"))
data_hb2$smoker.factor = factor(data_hb2$smoker,levels=c("1","0"))
data_hb2$smoked_last_hour.factor = factor(data_hb2$smoked_last_hour,levels=c("1","0"))
data_hb2$known_covid_exposure.factor = factor(data_hb2$known_covid_exposure,levels=c("1","0","99"))
data_hb2$suspected_exposure.factor = factor(data_hb2$suspected_exposure,levels=c("1","0","99"))
data_hb2$exposure_source___1.factor = factor(data_hb2$exposure_source___1,levels=c("0","1"))
data_hb2$exposure_source___2.factor = factor(data_hb2$exposure_source___2,levels=c("0","1"))
data_hb2$exposure_source___5.factor = factor(data_hb2$exposure_source___5,levels=c("0","1"))
data_hb2$exposure_source___4.factor = factor(data_hb2$exposure_source___4,levels=c("0","1"))
data_hb2$covid_pos.factor = factor(data_hb2$covid_pos,levels=c("1","0"))
data_hb2$covid_pos_test.factor = factor(data_hb2$covid_pos_test,levels=c("1","2","3"))
data_hb2$recd_vaccine.factor = factor(data_hb2$recd_vaccine,levels=c("1","0"))
data_hb2$vaccine1_vaccine.factor = factor(data_hb2$vaccine1_vaccine,levels=c("1","2","3","4","5","9"))
data_hb2$recd_vaccine2.factor = factor(data_hb2$recd_vaccine2,levels=c("1","0"))
data_hb2$vaccine2_vaccine.factor = factor(data_hb2$vaccine2_vaccine,levels=c("1","2","3","4","5","9"))
data_hb2$study_home_members.factor = factor(data_hb2$study_home_members,levels=c("1","0"))
data_hb2$covid_result.factor = factor(data_hb2$covid_result,levels=c("1","0","99"))

levels(data_hb2$redcap_event_name.factor)=c("Primary Studies: Baseline","Fatigue Study: Baseline","Fatigue Study: F/U 1 (4 Week)","Fatigue Study: F/U 2 (6 Week)")
levels(data_hb2$redcap_repeat_instrument.factor)=c("Lab Spreadsheet")
levels(data_hb2$enrollment_location.factor)=c("Hatchery","Northlake","Grady Zone 4","In-patient","Wesley Woods","Viral Solutions","APS","Other")
levels(data_hb2$hospital.factor)=c("EUH","Grady","Other")
levels(data_hb2$sex.factor)=c("Male","Female")
levels(data_hb2$race___1.factor)=c("Unchecked","Checked")
levels(data_hb2$race___2.factor)=c("Unchecked","Checked")
levels(data_hb2$race___3.factor)=c("Unchecked","Checked")
levels(data_hb2$race___4.factor)=c("Unchecked","Checked")
levels(data_hb2$race___88.factor)=c("Unchecked","Checked")
levels(data_hb2$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refused to answer")
levels(data_hb2$symptoms___1.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___2.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___3.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___4.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___5.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___6.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___7.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___8.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___9.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___10.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___11.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___12.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___13.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___14.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___15.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___17.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___99.factor)=c("Unchecked","Checked")
levels(data_hb2$symptoms___16.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___13.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___14.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___15.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data_hb2$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data_hb2$eat_drink.factor)=c("Yes","No")
levels(data_hb2$smoker.factor)=c("Yes","No")
levels(data_hb2$smoked_last_hour.factor)=c("Yes","No")
levels(data_hb2$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb2$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb2$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data_hb2$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data_hb2$exposure_source___5.factor)=c("Unchecked","Checked")
levels(data_hb2$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data_hb2$covid_pos.factor)=c("Yes","No")
levels(data_hb2$covid_pos_test.factor)=c("PCR","Rapid/Antigen","Not sure")
levels(data_hb2$recd_vaccine.factor)=c("Yes","No")
levels(data_hb2$vaccine1_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data_hb2$recd_vaccine2.factor)=c("Yes","No")
levels(data_hb2$vaccine2_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data_hb2$study_home_members.factor)=c("Yes","No")
levels(data_hb2$covid_result.factor)=c("Positive","Negative","Undetermined")

#Read Data
data_hb3=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-HemoglobinDemographi_DATA_2022-07-07_1551.csv')
#Setting Labels

label(data_hb3$record_id)="Record ID"
label(data_hb3$redcap_repeat_instrument)="Repeat Instrument"
label(data_hb3$redcap_repeat_instance)="Repeat Instance"
label(data_hb3$date_consent)="Date of Consent (or repeat visit date, if this is repeat instance)"
label(data_hb3$sex)="Childs Sex at birth"
label(data_hb3$race___1)="Child Race (choice=White)"
label(data_hb3$race___2)="Child Race (choice=Black/African-American)"
label(data_hb3$race___3)="Child Race (choice=Asian)"
label(data_hb3$race___4)="Child Race (choice=Other)"
label(data_hb3$race___99)="Child Race (choice=Refuse to Answer)"
label(data_hb3$other_race)="Other race/ethnicity"
label(data_hb3$ethnicity)="Child Ethnicity "
label(data_hb3$address)="Home Mailing Address:"
label(data_hb3$city)="City"
label(data_hb3$state)="State:"
label(data_hb3$zipcode)="Zipcode"
label(data_hb3$phone)="Telephone Number:"
label(data_hb3$days_last_sx)="If your child is currently symptomatic, how many days ago did the symptoms start?"
label(data_hb3$symptoms___1)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fever)"
label(data_hb3$symptoms___2)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Chills)"
label(data_hb3$symptoms___3)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Congestion/runny nose (rhinorrhea))"
label(data_hb3$symptoms___4)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Cough)"
label(data_hb3$symptoms___5)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Headache)"
label(data_hb3$symptoms___6)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Sore throat)"
label(data_hb3$symptoms___7)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fatigue)"
label(data_hb3$symptoms___8)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Joint pain (arthralgias))"
label(data_hb3$symptoms___9)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Muscle aches or pains (myalgias))"
label(data_hb3$symptoms___10)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Light sensitivity (photophobia))"
label(data_hb3$symptoms___11)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Vomiting)"
label(data_hb3$symptoms___12)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Nausea)"
label(data_hb3$symptoms___13)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Diarrhea)"
label(data_hb3$symptoms___14)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Abdominal pain)"
label(data_hb3$symptoms___15)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Loss of sense of taste or smell)"
label(data_hb3$symptoms___17)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Shortness of Breath (dyspnea))"
label(data_hb3$symptoms___99)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Other)"
label(data_hb3$symptoms___16)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=None)"
label(data_hb3$other_symptom_describe)="Describe other symptom"
label(data_hb3$fever)="Duration of fever, days"
label(data_hb3$chills)="Duration of chills, days"
label(data_hb3$congestion)="Duration of congestion/runny nose (rinorrhea), days"
label(data_hb3$cough)="Duration of cough, days"
label(data_hb3$headache)="Duration of headache, days"
label(data_hb3$sorethroat)="Duration of sore throat, days"
label(data_hb3$fatigue)="Duration of fatigue,days"
label(data_hb3$arthralgias)="Duration of Joint pain (arthralgias), days"
label(data_hb3$myalgias)="Duration of muscle aches or pains (myalgias), days"
label(data_hb3$photophobia)="Duration of light sensitivity (photobia), days"
label(data_hb3$vomiting)="Duration of vomiting, days"
label(data_hb3$nausea)="Duration of nausea, days"
label(data_hb3$diarrhea)="Duration of diarrhea, days"
label(data_hb3$abdominalpain)="Duration of abdominal pain, days"
label(data_hb3$loss_taste_smell)="Duration of loss of sense of taste or smell, days"
label(data_hb3$dyspnea)="Duration of shortness of breath, days"
label(data_hb3$other_symptom)="Duration of [other_symptom_describe], days"
label(data_hb3$symptom_onset)="What is the date of the earliest symptom onset?"
label(data_hb3$first_sx_start)="How many days ago did your 1st symptom start?"
label(data_hb3$med_conditions___1)="Does your child have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data_hb3$med_conditions___2)="Does your child have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data_hb3$med_conditions___3)="Does your child have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data_hb3$med_conditions___4)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data_hb3$med_conditions___5)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data_hb3$med_conditions___6)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data_hb3$med_conditions___7)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data_hb3$med_conditions___8)="Does your child have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data_hb3$med_conditions___9)="Does your child have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data_hb3$med_conditions___10)="Does your child have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data_hb3$med_conditions___11)="Does your child have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data_hb3$med_conditions___12)="Does your child have any of the following conditions? Please check all that apply:  (choice=None)"
label(data_hb3$med_conditions_other)="Other medical condition not listed above:"
label(data_hb3$known_covid_exposure)="Has your child been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data_hb3$suspected_exposure)="Has your child been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data_hb3$exposure_source___1)="If you suspect your child was exposed, was the exposure from : (choice=Someone at home/family member)"
label(data_hb3$exposure_source___2)="If you suspect your child was exposed, was the exposure from : (choice=Friend)"
label(data_hb3$exposure_source___3)="If you suspect your child was exposed, was the exposure from : (choice=Camp/school)"
label(data_hb3$exposure_source___4)="If you suspect your child was exposed, was the exposure from : (choice=Other)"
label(data_hb3$other_exposure_source)="Other exposure source:"
label(data_hb3$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data_hb3$ssb)="1. How has your childs consumption of sweet beverages changed (including sodas, juice and juice drinks, sports drinks, energy drinks, lemonade, sweet tea and coffee; Do not include diet drinks)?"
label(data_hb3$physical_activity)="2. How has your childs physical activity changed?"
label(data_hb3$child_weight)="3. Are you concerned about a change in your childs weight?"
label(data_hb3$previous_covid)="1. 	Has your child tested positive for COVID-19 previously?  "
label(data_hb3$date_positive)="When (date) did your child last test positive for COVID-19?"
label(data_hb3$location_test)="Where did your child previously test positive for COVID-19"
label(data_hb3$other_location_test)="Other testing location:"
label(data_hb3$covid_vaccine)="2. Has your child received any of the COVID-19 vaccines?"
label(data_hb3$vaccine)="Which vaccine?"
label(data_hb3$other_vaccine)="Other vaccine:"
label(data_hb3$doses)="How many vaccine doses has child received?"
label(data_hb3$dose1_date)="When did child receive vaccine dose #1?"
label(data_hb3$dose2_date)="When did child receive vaccine dose #2?:"
label(data_hb3$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data_hb3$sex_sp)="Sexo al Nacimiento: "
label(data_hb3$race_sp___1)="Raza: (choice=Blanca)"
label(data_hb3$race_sp___2)="Raza: (choice=Afroamericana)"
label(data_hb3$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data_hb3$race_sp___4)="Raza: (choice=Otro)"
label(data_hb3$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data_hb3$other_race_sp)="Otra raza"
label(data_hb3$ethnicity_sp)="Etnicidad:"
label(data_hb3$address_sp)="Domicilio Postal:"
label(data_hb3$city_sp)="Ciudad:"
label(data_hb3$state_sp)="Estado:"
label(data_hb3$zipcode_sp)="C&#243digo Postal:"
label(data_hb3$phone_sp)="N&#250mero Telef&#243nico:"
label(data_hb3$days_last_sx_sp)="Si actualmente tu hijo/a presenta síntomas, ¿desde hace cuántos días empezaron?"
label(data_hb3$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fiebre)"
label(data_hb3$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Escalofr&#237os)"
label(data_hb3$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data_hb3$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Tos)"
label(data_hb3$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de cabeza)"
label(data_hb3$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de garganta)"
label(data_hb3$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fatiga)"
label(data_hb3$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de articulaciones (artralgia))"
label(data_hb3$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor muscular o corporal (Mialgia))"
label(data_hb3$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Sensibilidad a la luz (Fotofobia))"
label(data_hb3$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=V&#243mito)"
label(data_hb3$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Nausea)"
label(data_hb3$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Diarrea)"
label(data_hb3$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor abdominal)"
label(data_hb3$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=P&#233rdida del olfato o sabor)"
label(data_hb3$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dificultad para respirar (disnea))"
label(data_hb3$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Otro)"
label(data_hb3$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Ninguno)"
label(data_hb3$other_symptom_describe_sp)="Describe el Otro s&#237ntoma:"
label(data_hb3$fever_sp)="Duraci&#243n de la fiebre, d&#237as:"
label(data_hb3$chills_sp)="Duraci&#243n de los escalofr&#237os, d&#237as"
label(data_hb3$congestion_sp)="Duraci&#243n de la congesti&#243n nasal/escurrimiento nasal (rinorrea), d&#237as"
label(data_hb3$cough_sp)="Duraci&#243n de la tos, d&#237as "
label(data_hb3$headache_sp)="Duraci&#243n del dolor de cabeza, d&#237as "
label(data_hb3$sorethroat_sp)="Duraci&#243n del dolor de garganta, d&#237as"
label(data_hb3$fatigue_sp)="Duraci&#243n de la fatiga,  d&#237as"
label(data_hb3$arthralgias_sp)="Duraci&#243n del dolor de articulaciones (artralgias), d&#237as"
label(data_hb3$myalgias_sp)="Duraci&#243n del dolor muscular o corporal (mialgias), d&#237as"
label(data_hb3$photophobia_sp)="Duraci&#243n de la sensibilidad a la luz (fotofobia), d&#237as"
label(data_hb3$vomiting_sp)="Duraci&#243n del v&#243mito, d&#237as"
label(data_hb3$nausea_sp)="Duraci&#243n de la n&#225usea, d&#237as"
label(data_hb3$diarrhea_sp)="Duraci&#243n de la diarrea, d&#237as"
label(data_hb3$abdominalpain_sp)="Duraci&#243n del dolor abdominal, d&#237as"
label(data_hb3$loss_taste_smell_sp)="Duraci&#243n de la p&#233rdida del olfato o sabor, d&#237as"
label(data_hb3$dyspnea_sp)="Duraci&#243n de dificultad de respirar, d&#237as"
label(data_hb3$other_symptom_sp)="Duraci&#243n [other_symptom_describe], d&#237as"
label(data_hb3$symptom_onset_sp)="¿Cuál es la fecha cuando empezaron los primeros síntomas? "
label(data_hb3$first_sx_start_sp)="¿Hace cu&#225ntos d&#237as tuviste tu primer s&#237ntoma?"
label(data_hb3$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data_hb3$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data_hb3$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data_hb3$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data_hb3$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data_hb3$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data_hb3$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data_hb3$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data_hb3$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data_hb3$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data_hb3$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data_hb3$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data_hb3$med_conditions_other_sp)="Alguna otra condici&#243n m&#233dica no mencionada anteriormente:"
label(data_hb3$known_covid_exposure_sp)="¿Ha tenido tu hijo/hija contacto o estado expuesto/a un caso CONFIRMADO (prueba positiva) de COVID-19?"
label(data_hb3$suspected_exposure_sp)="¿Ha estado tu hijo/a expuesto/a o tenido contacto con alguien quien haya tenido sí de COVID-19 (caso sospechoso)?"
label(data_hb3$exposure_source_sp___1)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Alguien en la casa/miembro de la familia)"
label(data_hb3$exposure_source_sp___2)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Amigo)"
label(data_hb3$exposure_source_sp___3)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Campamento/escuela)"
label(data_hb3$exposure_source_sp___4)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Otro)"
label(data_hb3$other_exposure_source_sp)="Otra fuente de exposici&#243n:"
label(data_hb3$study_home_members_sp)="¿Te gustaría que te contactáramos si contamos con un estudio de investigación donde busquemos hacer la prueba de COVID-19 en otros miembros de tu hogar?"
label(data_hb3$ssb_sp)="1. ¿Cómo ha cambiado la ingesta de bebidas azucaradas de tu hijo/a (incluyendo sodas, jugo, bebidas deportivas, bebidas energéticas, limonada, té azucarado, café; sin incluir bebidas dietéticas)?"
label(data_hb3$physical_activity_sp)="2. ¿Cómo ha cambiado la actividad física de tu hijo/a?"
label(data_hb3$child_weight_sp)="3. ¿Estás preocupado de cambios en el peso de tu hijo/a?"
label(data_hb3$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
label(data_hb3$date_positive_sp)="Cuando (fecha) recibio su hijo/hija un resultado positivo de COVID-19:"
label(data_hb3$location_test_sp)="¿Donde recibio un resultado positivo ? "
label(data_hb3$other_location_test_sp)="Otro sitio de pruebas:"
label(data_hb3$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data_hb3$vaccine_sp)="¿Cuál de ellas? :"
label(data_hb3$other_vaccine_sp)="Cual otra vacuna:"
label(data_hb3$doses_sp)="¿Cuántas dosis? "
label(data_hb3$dose1_date_sp)="¿Cuando recibio la primera dosis (dosis #1):    "
label(data_hb3$dose2_date_sp)="¿Cuando recibio la segunda dosis (dosis #2):   "
#Setting Units


#Setting Factors(will create new variable for factors)
data_hb3$sex.factor = factor(data_hb3$sex,levels=c("1","2"))
data_hb3$race___1.factor = factor(data_hb3$race___1,levels=c("0","1"))
data_hb3$race___2.factor = factor(data_hb3$race___2,levels=c("0","1"))
data_hb3$race___3.factor = factor(data_hb3$race___3,levels=c("0","1"))
data_hb3$race___4.factor = factor(data_hb3$race___4,levels=c("0","1"))
data_hb3$race___99.factor = factor(data_hb3$race___99,levels=c("0","1"))
data_hb3$ethnicity.factor = factor(data_hb3$ethnicity,levels=c("1","0","99"))
data_hb3$days_last_sx.factor = factor(data_hb3$days_last_sx,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$symptoms___1.factor = factor(data_hb3$symptoms___1,levels=c("0","1"))
data_hb3$symptoms___2.factor = factor(data_hb3$symptoms___2,levels=c("0","1"))
data_hb3$symptoms___3.factor = factor(data_hb3$symptoms___3,levels=c("0","1"))
data_hb3$symptoms___4.factor = factor(data_hb3$symptoms___4,levels=c("0","1"))
data_hb3$symptoms___5.factor = factor(data_hb3$symptoms___5,levels=c("0","1"))
data_hb3$symptoms___6.factor = factor(data_hb3$symptoms___6,levels=c("0","1"))
data_hb3$symptoms___7.factor = factor(data_hb3$symptoms___7,levels=c("0","1"))
data_hb3$symptoms___8.factor = factor(data_hb3$symptoms___8,levels=c("0","1"))
data_hb3$symptoms___9.factor = factor(data_hb3$symptoms___9,levels=c("0","1"))
data_hb3$symptoms___10.factor = factor(data_hb3$symptoms___10,levels=c("0","1"))
data_hb3$symptoms___11.factor = factor(data_hb3$symptoms___11,levels=c("0","1"))
data_hb3$symptoms___12.factor = factor(data_hb3$symptoms___12,levels=c("0","1"))
data_hb3$symptoms___13.factor = factor(data_hb3$symptoms___13,levels=c("0","1"))
data_hb3$symptoms___14.factor = factor(data_hb3$symptoms___14,levels=c("0","1"))
data_hb3$symptoms___15.factor = factor(data_hb3$symptoms___15,levels=c("0","1"))
data_hb3$symptoms___17.factor = factor(data_hb3$symptoms___17,levels=c("0","1"))
data_hb3$symptoms___99.factor = factor(data_hb3$symptoms___99,levels=c("0","1"))
data_hb3$symptoms___16.factor = factor(data_hb3$symptoms___16,levels=c("0","1"))
data_hb3$fever.factor = factor(data_hb3$fever,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$chills.factor = factor(data_hb3$chills,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$congestion.factor = factor(data_hb3$congestion,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$cough.factor = factor(data_hb3$cough,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$headache.factor = factor(data_hb3$headache,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$sorethroat.factor = factor(data_hb3$sorethroat,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$fatigue.factor = factor(data_hb3$fatigue,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$arthralgias.factor = factor(data_hb3$arthralgias,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$myalgias.factor = factor(data_hb3$myalgias,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$photophobia.factor = factor(data_hb3$photophobia,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$vomiting.factor = factor(data_hb3$vomiting,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$nausea.factor = factor(data_hb3$nausea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$diarrhea.factor = factor(data_hb3$diarrhea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$abdominalpain.factor = factor(data_hb3$abdominalpain,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$loss_taste_smell.factor = factor(data_hb3$loss_taste_smell,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$dyspnea.factor = factor(data_hb3$dyspnea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$other_symptom.factor = factor(data_hb3$other_symptom,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$first_sx_start.factor = factor(data_hb3$first_sx_start,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data_hb3$med_conditions___1.factor = factor(data_hb3$med_conditions___1,levels=c("0","1"))
data_hb3$med_conditions___2.factor = factor(data_hb3$med_conditions___2,levels=c("0","1"))
data_hb3$med_conditions___3.factor = factor(data_hb3$med_conditions___3,levels=c("0","1"))
data_hb3$med_conditions___4.factor = factor(data_hb3$med_conditions___4,levels=c("0","1"))
data_hb3$med_conditions___5.factor = factor(data_hb3$med_conditions___5,levels=c("0","1"))
data_hb3$med_conditions___6.factor = factor(data_hb3$med_conditions___6,levels=c("0","1"))
data_hb3$med_conditions___7.factor = factor(data_hb3$med_conditions___7,levels=c("0","1"))
data_hb3$med_conditions___8.factor = factor(data_hb3$med_conditions___8,levels=c("0","1"))
data_hb3$med_conditions___9.factor = factor(data_hb3$med_conditions___9,levels=c("0","1"))
data_hb3$med_conditions___10.factor = factor(data_hb3$med_conditions___10,levels=c("0","1"))
data_hb3$med_conditions___11.factor = factor(data_hb3$med_conditions___11,levels=c("0","1"))
data_hb3$med_conditions___12.factor = factor(data_hb3$med_conditions___12,levels=c("0","1"))
data_hb3$known_covid_exposure.factor = factor(data_hb3$known_covid_exposure,levels=c("1","0","99"))
data_hb3$suspected_exposure.factor = factor(data_hb3$suspected_exposure,levels=c("1","0","99"))
data_hb3$exposure_source___1.factor = factor(data_hb3$exposure_source___1,levels=c("0","1"))
data_hb3$exposure_source___2.factor = factor(data_hb3$exposure_source___2,levels=c("0","1"))
data_hb3$exposure_source___3.factor = factor(data_hb3$exposure_source___3,levels=c("0","1"))
data_hb3$exposure_source___4.factor = factor(data_hb3$exposure_source___4,levels=c("0","1"))
data_hb3$study_home_members.factor = factor(data_hb3$study_home_members,levels=c("1","0"))
data_hb3$ssb.factor = factor(data_hb3$ssb,levels=c("1","2","3","4","5"))
data_hb3$physical_activity.factor = factor(data_hb3$physical_activity,levels=c("1","2","3","4","5"))
data_hb3$child_weight.factor = factor(data_hb3$child_weight,levels=c("1","2","3","4"))
data_hb3$previous_covid.factor = factor(data_hb3$previous_covid,levels=c("1","0","99"))
data_hb3$location_test.factor = factor(data_hb3$location_test,levels=c("1","2","3","4","5"))
data_hb3$covid_vaccine.factor = factor(data_hb3$covid_vaccine,levels=c("1","0","99"))
data_hb3$vaccine.factor = factor(data_hb3$vaccine,levels=c("1","2","3","4","99"))
data_hb3$doses.factor = factor(data_hb3$doses,levels=c("1","2"))
data_hb3$sex_sp.factor = factor(data_hb3$sex_sp,levels=c("1","2"))
data_hb3$race_sp___1.factor = factor(data_hb3$race_sp___1,levels=c("0","1"))
data_hb3$race_sp___2.factor = factor(data_hb3$race_sp___2,levels=c("0","1"))
data_hb3$race_sp___3.factor = factor(data_hb3$race_sp___3,levels=c("0","1"))
data_hb3$race_sp___4.factor = factor(data_hb3$race_sp___4,levels=c("0","1"))
data_hb3$race_sp___99.factor = factor(data_hb3$race_sp___99,levels=c("0","1"))
data_hb3$ethnicity_sp.factor = factor(data_hb3$ethnicity_sp,levels=c("1","0","99"))
data_hb3$days_last_sx_sp.factor = factor(data_hb3$days_last_sx_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$symptoms_sp___1.factor = factor(data_hb3$symptoms_sp___1,levels=c("0","1"))
data_hb3$symptoms_sp___2.factor = factor(data_hb3$symptoms_sp___2,levels=c("0","1"))
data_hb3$symptoms_sp___3.factor = factor(data_hb3$symptoms_sp___3,levels=c("0","1"))
data_hb3$symptoms_sp___4.factor = factor(data_hb3$symptoms_sp___4,levels=c("0","1"))
data_hb3$symptoms_sp___5.factor = factor(data_hb3$symptoms_sp___5,levels=c("0","1"))
data_hb3$symptoms_sp___6.factor = factor(data_hb3$symptoms_sp___6,levels=c("0","1"))
data_hb3$symptoms_sp___7.factor = factor(data_hb3$symptoms_sp___7,levels=c("0","1"))
data_hb3$symptoms_sp___8.factor = factor(data_hb3$symptoms_sp___8,levels=c("0","1"))
data_hb3$symptoms_sp___9.factor = factor(data_hb3$symptoms_sp___9,levels=c("0","1"))
data_hb3$symptoms_sp___10.factor = factor(data_hb3$symptoms_sp___10,levels=c("0","1"))
data_hb3$symptoms_sp___11.factor = factor(data_hb3$symptoms_sp___11,levels=c("0","1"))
data_hb3$symptoms_sp___12.factor = factor(data_hb3$symptoms_sp___12,levels=c("0","1"))
data_hb3$symptoms_sp___13.factor = factor(data_hb3$symptoms_sp___13,levels=c("0","1"))
data_hb3$symptoms_sp___14.factor = factor(data_hb3$symptoms_sp___14,levels=c("0","1"))
data_hb3$symptoms_sp___15.factor = factor(data_hb3$symptoms_sp___15,levels=c("0","1"))
data_hb3$symptoms_sp___17.factor = factor(data_hb3$symptoms_sp___17,levels=c("0","1"))
data_hb3$symptoms_sp___99.factor = factor(data_hb3$symptoms_sp___99,levels=c("0","1"))
data_hb3$symptoms_sp___16.factor = factor(data_hb3$symptoms_sp___16,levels=c("0","1"))
data_hb3$fever_sp.factor = factor(data_hb3$fever_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$chills_sp.factor = factor(data_hb3$chills_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$congestion_sp.factor = factor(data_hb3$congestion_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$cough_sp.factor = factor(data_hb3$cough_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$headache_sp.factor = factor(data_hb3$headache_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$sorethroat_sp.factor = factor(data_hb3$sorethroat_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$fatigue_sp.factor = factor(data_hb3$fatigue_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$arthralgias_sp.factor = factor(data_hb3$arthralgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$myalgias_sp.factor = factor(data_hb3$myalgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$photophobia_sp.factor = factor(data_hb3$photophobia_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$vomiting_sp.factor = factor(data_hb3$vomiting_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$nausea_sp.factor = factor(data_hb3$nausea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$diarrhea_sp.factor = factor(data_hb3$diarrhea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$abdominalpain_sp.factor = factor(data_hb3$abdominalpain_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$loss_taste_smell_sp.factor = factor(data_hb3$loss_taste_smell_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$dyspnea_sp.factor = factor(data_hb3$dyspnea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$other_symptom_sp.factor = factor(data_hb3$other_symptom_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data_hb3$first_sx_start_sp.factor = factor(data_hb3$first_sx_start_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data_hb3$med_conditions_sp___1.factor = factor(data_hb3$med_conditions_sp___1,levels=c("0","1"))
data_hb3$med_conditions_sp___2.factor = factor(data_hb3$med_conditions_sp___2,levels=c("0","1"))
data_hb3$med_conditions_sp___3.factor = factor(data_hb3$med_conditions_sp___3,levels=c("0","1"))
data_hb3$med_conditions_sp___4.factor = factor(data_hb3$med_conditions_sp___4,levels=c("0","1"))
data_hb3$med_conditions_sp___5.factor = factor(data_hb3$med_conditions_sp___5,levels=c("0","1"))
data_hb3$med_conditions_sp___6.factor = factor(data_hb3$med_conditions_sp___6,levels=c("0","1"))
data_hb3$med_conditions_sp___7.factor = factor(data_hb3$med_conditions_sp___7,levels=c("0","1"))
data_hb3$med_conditions_sp___8.factor = factor(data_hb3$med_conditions_sp___8,levels=c("0","1"))
data_hb3$med_conditions_sp___9.factor = factor(data_hb3$med_conditions_sp___9,levels=c("0","1"))
data_hb3$med_conditions_sp___10.factor = factor(data_hb3$med_conditions_sp___10,levels=c("0","1"))
data_hb3$med_conditions_sp___11.factor = factor(data_hb3$med_conditions_sp___11,levels=c("0","1"))
data_hb3$med_conditions_sp___12.factor = factor(data_hb3$med_conditions_sp___12,levels=c("0","1"))
data_hb3$known_covid_exposure_sp.factor = factor(data_hb3$known_covid_exposure_sp,levels=c("1","0","99"))
data_hb3$suspected_exposure_sp.factor = factor(data_hb3$suspected_exposure_sp,levels=c("1","0","99"))
data_hb3$exposure_source_sp___1.factor = factor(data_hb3$exposure_source_sp___1,levels=c("0","1"))
data_hb3$exposure_source_sp___2.factor = factor(data_hb3$exposure_source_sp___2,levels=c("0","1"))
data_hb3$exposure_source_sp___3.factor = factor(data_hb3$exposure_source_sp___3,levels=c("0","1"))
data_hb3$exposure_source_sp___4.factor = factor(data_hb3$exposure_source_sp___4,levels=c("0","1"))
data_hb3$study_home_members_sp.factor = factor(data_hb3$study_home_members_sp,levels=c("1","0"))
data_hb3$ssb_sp.factor = factor(data_hb3$ssb_sp,levels=c("1","2","3","4","5"))
data_hb3$physical_activity_sp.factor = factor(data_hb3$physical_activity_sp,levels=c("1","2","3","4","5"))
data_hb3$child_weight_sp.factor = factor(data_hb3$child_weight_sp,levels=c("1","2","3","4"))
data_hb3$previous_covid_sp.factor = factor(data_hb3$previous_covid_sp,levels=c("1","0","99"))
data_hb3$location_test_sp.factor = factor(data_hb3$location_test_sp,levels=c("1","2","3","4","5"))
data_hb3$covid_vaccine_sp.factor = factor(data_hb3$covid_vaccine_sp,levels=c("1","0","99"))
data_hb3$vaccine_sp.factor = factor(data_hb3$vaccine_sp,levels=c("1","2","3","4","99"))
data_hb3$doses_sp.factor = factor(data_hb3$doses_sp,levels=c("1","2"))

levels(data_hb3$sex.factor)=c("Male","Female")
levels(data_hb3$race___1.factor)=c("Unchecked","Checked")
levels(data_hb3$race___2.factor)=c("Unchecked","Checked")
levels(data_hb3$race___3.factor)=c("Unchecked","Checked")
levels(data_hb3$race___4.factor)=c("Unchecked","Checked")
levels(data_hb3$race___99.factor)=c("Unchecked","Checked")
levels(data_hb3$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data_hb3$days_last_sx.factor)=c("No symptoms currently","1 day ago","2 days ago","3 days ago","4 days ago","5 days ago","6 days ago","7 days ago","8 days ago","9 days ago","10 days ago","11 days ago","12 days ago","13 days ago","14 days ago",">14 days ago (> 2 weeks)")
levels(data_hb3$symptoms___1.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___2.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___3.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___4.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___5.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___6.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___7.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___8.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___9.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___10.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___11.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___12.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___13.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___14.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___15.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___17.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___99.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms___16.factor)=c("Unchecked","Checked")
levels(data_hb3$fever.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$chills.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$congestion.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$cough.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$headache.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$sorethroat.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$fatigue.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$arthralgias.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$myalgias.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$photophobia.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$vomiting.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$nausea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$diarrhea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$abdominalpain.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$loss_taste_smell.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$dyspnea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$other_symptom.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data_hb3$first_sx_start.factor)=c("Today","1 day ago","2 days ago","3 days ago","4 days ago","5 days ago","6 days ago","7 days ago","8 days ago","9 days ago","10 days ago","11 days ago","12 days ago","13 days ago","14 days ago",">14 days ago","I dont know/dont remember")
levels(data_hb3$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data_hb3$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb3$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data_hb3$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source___3.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data_hb3$study_home_members.factor)=c("Yes","No")
levels(data_hb3$ssb.factor)=c("a. Increased","b. Decreased","c. Stayed the same","d. Dont know","e. No response")
levels(data_hb3$physical_activity.factor)=c("a. Increased","b. Decreased","c. Stayed the same","d. Dont know","e. No response")
levels(data_hb3$child_weight.factor)=c("a. Yes, because he/she appears to be gaining more weight than they should","b. Yes, because he/she appears to be losing weight","c. No, Im not concerned","d. No response")
levels(data_hb3$previous_covid.factor)=c("Yes","No","Unknown")
levels(data_hb3$location_test.factor)=c("CHOA","Public Health Testing Site","Pediatrician","Pharmacy","Other Testing Location")
levels(data_hb3$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data_hb3$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data_hb3$doses.factor)=c("1 dose","2 doses")
levels(data_hb3$sex_sp.factor)=c("Masculino","Femenino")
levels(data_hb3$race_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb3$race_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb3$race_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb3$race_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb3$race_sp___99.factor)=c("Unchecked","Checked")
levels(data_hb3$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data_hb3$days_last_sx_sp.factor)=c("No presenta s&#237ntomas","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data_hb3$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data_hb3$fever_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$chills_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$congestion_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$cough_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$headache_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$sorethroat_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$fatigue_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$arthralgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$myalgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$photophobia_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$vomiting_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$nausea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$diarrhea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$abdominalpain_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$loss_taste_smell_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$dyspnea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$other_symptom_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data_hb3$first_sx_start_sp.factor)=c("Hoy","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)","No recuerdo/No s&#233")
levels(data_hb3$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data_hb3$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data_hb3$known_covid_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data_hb3$suspected_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data_hb3$exposure_source_sp___1.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source_sp___2.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source_sp___3.factor)=c("Unchecked","Checked")
levels(data_hb3$exposure_source_sp___4.factor)=c("Unchecked","Checked")
levels(data_hb3$study_home_members_sp.factor)=c("Yes","No")
levels(data_hb3$ssb_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data_hb3$physical_activity_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data_hb3$child_weight_sp.factor)=c("a. Sí, porque él/ella parece ha aumentado de peso más de lo que debería","b. Sí, parece que él/ella está perdiendo peso","c. No, no estoy preocupado","d. Sin respuesta")
levels(data_hb3$previous_covid_sp.factor)=c("Si","No","No sé.")
levels(data_hb3$location_test_sp.factor)=c("CHOA (Childrens Healthcare of Atlanta)","Public Health Testing site (Sitio/centro de pruebas de salud pública)","Pediatra","Farmacia","Otro sitio de pruebas")
levels(data_hb3$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data_hb3$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data_hb3$doses_sp.factor)=c("1 dosis","2 dosis")

#Read Data
data_hb4=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-PositiveTestsTestRes_DATA_2022-07-07_1534.csv')
#Setting Labels

label(data_hb4$record_id)="Record ID"
label(data_hb4$redcap_repeat_instrument)="Repeat Instrument"
label(data_hb4$redcap_repeat_instance)="Repeat Instance"
label(data_hb4$covid_result)="Result of clinical COVID test:"
#Setting Units


#Setting Factors(will create new variable for factors)
data_hb4$covid_result.factor = factor(data_hb4$covid_result,levels=c("1","0","99","88"))

levels(data_hb4$covid_result.factor)=c("Positive","Negative","Undetermined (inconclusive)","Test Not Performed")

#Read Data
data_hb5=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-DemographicsPullAgeE_DATA_2022-07-12_1627.csv')
#Setting Labels

label(data_hb5$record_id)="Record ID"
label(data_hb5$redcap_repeat_instrument)="Repeat Instrument"
label(data_hb5$redcap_repeat_instance)="Repeat Instance"
label(data_hb5$dob)="Child Date of Birth"
label(data_hb5$age_years)="Child Age in years"
label(data_hb5$age_years2)="Child age in years"
label(data_hb5$choa_mrn)="Patient CHOA MRN (CID)"
#Setting Units

data_hb6=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//hemoglobin_diagnosis.csv')

remove_repeat = c()
for (i in 1:nrow(data_hb3)) {
   if (is.na(data_hb3$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data_hb3 = data_hb3[-remove_repeat,]
for (i in 1:nrow(data_hb3)) {
   if (data_hb3[i,4] == "" & data_hb3[i,91] != "") {
      data_hb3[i,4] = data_hb3[i,91]
   }
}
for (j in c(92:177)) {
   for (i in 1:nrow(data_hb3)) { 
      if (is.na(data_hb3[i,j-87])) {
         data_hb3[i,j-87] = data_hb3[i,j]
      }
   }
}
for (j in c(249:319)) {
   levels(data_hb3[,j-71]) = c(levels(data_hb3[,j-71]), levels(data_hb3[,j]))
   for (i in 1:nrow(data_hb3)) {
      if (data_hb3[i,j-71] == "" | is.na(data_hb3[i,j-71])) {
         data_hb3[i,j-71] = data_hb3[i,j] 
      }
   }
}

remove_repeat = c()
for (i in 1:nrow(data_hb4)) {
   if (is.na(data_hb4$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data_hb4 = data_hb4[-remove_repeat,]
data_hb_comb3 = merge(data_hb3, data_hb4, by=c("record_id", "redcap_repeat_instance")) 
data_hb_comb2 = merge(data_hb5, data_hb_comb3, by="record_id")

data_hb2$choa_mrn = sub("^0+","",data_hb2$choa_mrn)

for (i in 1:nrow(data_hb)) {
   if (!is.na(data_hb$med_conditions___8[i])) {
      if (data_hb$med_conditions___8[i] == 0) {
         data_hb$sickle_cell[i] = "No"
      } else {
         data_hb$sickle_cell[i] = "Unsure"
      }
   } else {
      data_hb$sickle_cell[i] = "Unsure"
   }
}
for (i in 1:nrow(data_hb2)) {
   if (!is.na(data_hb2$med_conditions___8[i])) {
      if (data_hb2$med_conditions___8[i] == 0) {
         data_hb2$sickle_cell[i] = "No"
      } else {
         data_hb2$sickle_cell[i] = "Unsure"
      }
   } else {
      data_hb2$sickle_cell[i] = "Unsure"
   }
}
for (i in 1:nrow(data_hb_comb2)) {
   if (!is.na(data_hb_comb2$med_conditions___8[i])) {
      if (data_hb_comb2$med_conditions___8[i] == 0) {
         data_hb_comb2$sickle_cell[i] = "No"
      } else {
         data_hb_comb2$sickle_cell[i] = "Unsure"
      }
   } else {
      data_hb_comb2$sickle_cell[i] = "Unsure"
   }
}


for (i in 1:nrow(data_hb6)) {
   if (data_hb6$Medical.Record.Number..MRN[i] != "") {
      radx = which(data_hb$patient_mrn == data_hb6$Medical.Record.Number..MRN[i] |
                   data_hb$adult_mrn == data_hb6$Medical.Record.Number..MRN[i])
      at3 = which(data_hb2$choa_mrn == data_hb6$Medical.Record.Number..MRN[i])
      pt3 = which(data_hb_comb2$choa_mrn == data_hb6$Medical.Record.Number..MRN[i])
      if (length(radx) > 0) {
         data_hb$sickle_cell[radx] = data_hb6$Sickle.Cell[i]
      } else if (length(at3) > 0) {
         data_hb2$sickle_cell[at3] = data_hb6$Sickle.Cell[i]
      } else if (length(pt3) > 0) {
         data_hb_comb2$sickle_cell[pt3] = data_hb6$Sickle.Cell[i]
      }
   }  else {
      record = which(data_hb$record_id == data_hb6$Record.ID[i])
      data_hb$sickle_cell[record] = data_hb6$Sickle.Cell[i]
   } 
}

data_hb$sickle_cell = as.factor(data_hb$sickle_cell)
data_hb2$sickle_cell = as.factor(data_hb2$sickle_cell)
data_hb_comb2$sickle_cell = as.factor(data_hb_comb2$sickle_cell)

for (i in 1:nrow(data_hb)) {
   if ((data_hb$med_conditions___13[i] == 1 & !is.na(data_hb$med_conditions___13[i])) |
       (data_hb$med_conditions___14[i] == 1 & !is.na(data_hb$med_conditions___14[i])) |
       (data_hb$med_conditions___15[i] == 1 & !is.na(data_hb$med_conditions___15[i]))) {
      data_hb$med_conditions___11[i] = 1
   }
}
for (i in 1:nrow(data_hb2)) {
   if ((data_hb2$med_conditions___13[i] == 1 & !is.na(data_hb2$med_conditions___13[i])) |
       (data_hb2$med_conditions___14[i] == 1 & !is.na(data_hb2$med_conditions___14[i])) |
       (data_hb2$med_conditions___15[i] == 1 & !is.na(data_hb2$med_conditions___15[i]))) {
      data_hb2$med_conditions___11[i] = 1
   }
}

levels(data_hb2$recd_vaccine2.factor)=c(levels(data_hb2$recd_vaccine2.factor),"1 dose","2 doses")
for (i in 1:length(data_hb2$recd_vaccine2.factor)) {
   if (data_hb2$recd_vaccine2.factor[i] == "Yes" & !is.na(data_hb2$recd_vaccine2.factor[i])) {
      data_hb2$recd_vaccine2.factor[i] = "2 doses"
   } else if ((data_hb2$recd_vaccine2.factor[i] == "No" & !is.na(data_hb2$recd_vaccine2.factor[i])) & (data_hb2$recd_vaccine.factor[i] == "Yes" & !is.na(data_hb2$recd_vaccine.factor[i]))) {
      data_hb2$recd_vaccine2.factor[i] = "1 dose"
   } else {
      data_hb2$recd_vaccine2.factor[i] = NA
   }
}
library(lubridate)
data_hb$dob = as.Date(data_hb$dob)
data_hb$date_consent = as.Date(data_hb$date_consent)
for (i in 1:nrow(data_hb)) {
   if (is.na(data_hb$age_years[i])) {
      if (!is.na(data_hb$dob[i]) & !is.na(data_hb$date_consent[i])) {
         data_hb$age_years[i] = time_length(difftime(data_hb$date_consent[i], data_hb$dob[i]), "years")
      }
   }
} 
data_hb2$dob = as.Date(data_hb2$dob)
data_hb2$date_consent = as.Date(data_hb2$date_consent)
for (i in 1:nrow(data_hb2)) {
   if (is.na(data_hb2$age_years[i])) {
      if (!is.na(data_hb2$dob[i]) & !is.na(data_hb2$date_consent[i])) {
         data_hb2$age_years[i] = time_length(difftime(data_hb2$date_consent[i], data_hb2$dob[i]), "years")
      }
   }
} 
data_hb_comb2$dob = as.Date(data_hb_comb2$dob)
data_hb_comb2$date_consent = as.Date(data_hb_comb2$date_consent)
data_hb_comb2$date_consent_sp = as.Date(data_hb_comb2$date_consent_sp)
for (i in 1:nrow(data_hb_comb2)) {
   if (is.na(data_hb_comb2$age_years[i])) {
      if (!is.na(data_hb_comb2$dob[i]) & !is.na(data_hb_comb2$date_consent[i])) {
         data_hb_comb2$age_years[i] = time_length(difftime(data_hb_comb2$date_consent[i], data_hb_comb2$dob[i]), "years")
      }
      if (!is.na(data_hb_comb2$dob[i]) & !is.na(data_hb_comb2$date_consent_sp[i])) {
         data_hb_comb2$age_years[i] = time_length(difftime(data_hb_comb2$date_consent_sp[i], data_hb_comb2$dob[i]), "years")
      }
   }
}

data_hb2$status.factor = as.factor(c(rep(NA, nrow(data_hb2))))
levels(data_hb2$status.factor) = c("Unvaccinated", "Partially Vaccinated", 
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data_hb2)) {
  if (data_hb2$recd_vaccine.factor[i] == "No" & !is.na(data_hb2$recd_vaccine.factor[i])) {
    data_hb2$status.factor[i] = "Unvaccinated"
  }
  else if (!is.na(data_hb2$recd_vaccine.factor[i])) {
    if (!is.na(data_hb2$vaccine1_vaccine.factor[i])) {
      if (data_hb2$vaccine1_vaccine.factor[i] == "Pfizer" | 
          data_hb2$vaccine1_vaccine.factor[i] == "Moderna") {
        if (data_hb2$recd_vaccine2.factor[i] == "1 dose" & 
            !is.na(data_hb2$recd_vaccine2.factor[i])) {
          data_hb2$status.factor[i] = "Partially Vaccinated"
        }
        else if (data_hb2$recd_vaccine2.factor[i] == "2 doses" & 
                 !is.na(data_hb2$recd_vaccine2.factor[i])) {
          data_hb2$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      } else if (data_hb2$recd_vaccine2.factor[i] == "2 doses" & 
                !is.na(data_hb2$recd_vaccine2.factor[i])) {
         data_hb2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data_hb2$vaccine1_vaccine.factor[i] == "Johnson and Hohnson") {
        data_hb2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
}

data_hb$status.factor = as.factor(c(rep(NA, nrow(data_hb))))
levels(data_hb$status.factor) = c("Unvaccinated", "Partially Vaccinated", 
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data_hb)) {
  if (data_hb$covid_vaccine.factor[i] == "No" &
      !is.na(data_hb$covid_vaccine.factor[i])) {
    data_hb$status.factor[i] = "Unvaccinated"
  }
  else {
    if (!is.na(data_hb$vaccine.factor[i])) {
      if (data_hb$vaccine.factor[i] == "Johnson and Johnson") {
        data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
      } else {
        if (data_hb$doses.factor[i] == "1 dose" & !is.na(data_hb$doses.factor[i]) & 
                 data_hb$vaccine.factor[i] != "I dont know") {
          data_hb$status.factor[i] = "Partially Vaccinated"
        }
        else if (data_hb$doses.factor[i] != "1 dose" & !is.na(data_hb$doses.factor[i])) {
          data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      }
    }
    else {
      if (data_hb$doses.factor[i] == "1 dose" & 
          !is.na(data_hb$doses.factor[i])) {
        if (data_hb$dose1_vaccine.factor[i] == "Johnson and Johnson") {
          data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
        } else if (!is.na(data_hb$dose1_vaccine.factor[i]) &
                   data_hb$dose1_vaccine.factor[i] != "I dont know") {
          data_hb$status.factor[i] = "Partially Vaccinated"
        }
      }
      else if (data_hb$doses.factor[i] == "2 doses" & 
               !is.na(data_hb$doses.factor[i])) {
        data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data_hb$doses.factor[i] == "3 doses" & 
               !is.na(data_hb$doses.factor[i])) {
        data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
      } 
      else if (data_hb$doses.factor[i] == "4 doses" & 
               !is.na(data_hb$doses.factor[i])) {
        data_hb$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
}
data_hb_comb2$status.factor = as.factor(c(rep(NA, nrow(data_hb_comb2))))
levels(data_hb_comb2$status.factor) = c("Unvaccinated", "Partially Vaccinated",
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data_hb_comb2)) {
  if (data_hb_comb2$covid_vaccine.factor[i] == "No" &
     !is.na(data_hb_comb2$covid_vaccine.factor[i])) {
    data_hb_comb2$status.factor[i] = "Unvaccinated"
  }
  else if (data_hb_comb2$covid_vaccine.factor[i] == "Yes" &
           !is.na(data_hb_comb2$covid_vaccine.factor[i])) {
    if (!is.na(data_hb_comb2$doses.factor[i])) {
      if (data_hb_comb2$vaccine.factor[i] == "Pfizer" | 
          data_hb_comb2$vaccine.factor[i] == "Moderna") {
        if (data_hb_comb2$doses.factor[i] == "1 dose") {
          data_hb_comb2$status.factor[i] = "Partially Vaccinated"
        }
        else if (data_hb_comb2$doses.factor[i] == "2 doses") {
          data_hb_comb2$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      }
      else if (data_hb_comb2$vaccine.factor[i] == "Johnson and Johnson") {
         data_hb_comb2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
  else {
    if (is.na(data_hb_comb2$doses.factor[i]) &
        data_hb_comb2$date_consent[i] < "2022-02-12" &
        !is.na(data_hb_comb2$date_consent[i])) {
      data_hb_comb2$status.factor[i] = "Unvaccinated"
    }
  }
}

data_hb2$race___99 = data_hb2$race___88
data_hb2$race___99.factor = data_hb2$race___88.factor
data_hb2$previous_covid = data_hb2$covid_pos
data_hb_comb2$smoker = rep(NA, nrow(data_hb_comb2))
data_hb_comb2$smoker.factor = rep(NA, nrow(data_hb_comb2))
data_hb_comb2$alcohol_last = rep("", nrow(data_hb_comb2))
names12 = intersect(names(data_hb), names(data_hb2))
names123 = intersect(names12, names(data_hb_comb2))

data_hb_sel = data_hb[,names123]
data_hb2_sel = data_hb2[,names123]
data_hb3_sel = data_hb_comb2[,names123]

data_hb_comb = rbind(data_hb2_sel, data_hb_sel, data_hb3_sel)
dataset2 = data_hb_comb[order(data_hb_comb$date_consent, data_hb_comb$age_years),]
write.csv(dataset2, "C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_compare.csv")

names_comb = intersect(names(dataset), names(dataset2))
hb_data1 = dataset[,names_comb[45:77]]
hb_data2 = dataset2[,names_comb[45:77]]

library(arsenal)
summary(comparedf(hb_data1, hb_data2))

hb_data = hb_data1
rownames(hb_data) = 1:nrow(hb_data)
colnames(hb_data) = c("High Blood Pressure", "Diabetes", "Obesity", "Chronic Heart Disease", "Chronic Lung Disease",
                      "Chronic Kidney Disease", "Chronic Liver Disease", "Hemoglobin Disease", "Cancer", 
                      "Immunosuppression", "Other Medical Condition", "No Medical Condition", "Fever", "Chills", 
                      "Congestion/Rhinorrhea", "Cough", "Headache", "Sore Throat", "Fatigue", "Arthralgias", "Myalgias", 
                      "Photophobia", "Vomiting", "Nausea", "Diarrhea", "Abdominal Pain", 
                      "Loss of Sense of Taste or Smell", "Shortness of Breath", "Other Symptom", "Asymptomatic", 
                      "COVID Test Result", "Vaccine Status", "Sickle Cell Presence")

write.csv(hb_data, "C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_data.csv")