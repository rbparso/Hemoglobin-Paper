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

for (i in 1:nrow(data_comb)) {
   if ((data_comb$med_conditions___8.factor[i] == "Checked" & !is.na(data_comb$med_conditions___8.factor[i])) & 
       (data_comb$unco[i] == "Unsure" & !is.na(data_comb$unco[i]))) {
      data_comb$unco[i] = "Yes"
   }
}
for (i in 1:nrow(data_comb)) {
   if (data_comb$ethnicity.factor[i] == "Hispano" & !is.na(data_comb$ethnicity.factor[i])) {
      data_comb$ethnicity.factor[i] = "Hispanic"
   } else if (data_comb$ethnicity.factor[i] == "No Hispano" & !is.na(data_comb$ethnicity.factor[i])) {
      data_comb$ethnicity.factor[i] = "Non-Hispanic"
   } else if (data_comb$ethnicity.factor[i] == "Prefiero no contestar" & !is.na(data_comb$ethnicity.factor[i])) {
      data_comb$ethnicity.factor[i] = "Refuse to Answer"
   } else if (data_comb$ethnicity.factor[i] == "Refused to answer" & !is.na(data_comb$ethnicity.factor[i])) {
      data_comb$ethnicity.factor[i] = "Refuse to Answer"
   }
}

for (i in 1:nrow(data_comb)) {
   data_comb$num_of_symptoms[i] = sum(data_comb[i,c(21:37)])
   if ((data_comb$num_of_symptoms[i] == 0 & !is.na(data_comb$num_of_symptoms[i])) | 
       (data_comb$symptoms___16[i] == "1" & !is.na(data_comb$symptoms___16[i]))) {
      data_comb$symptom_category[i] = "Asymptomatic"
   } else if (data_comb$num_of_symptoms[i] > 0 & !is.na(data_comb$num_of_symptoms[i])){
      data_comb$symptom_category[i] = "Symptomatic"
   } else {
      data_comb$symptom_category[i] = NA
   }
}
library(dplyr)
asym_prop = count(data_comb, data_comb$symptom_category == "Asymptomatic")[2,2]/
   count(data_comb, !is.na(data_comb$symptom_category) | data_comb$symptom_category != "")[1,2]
asym_prop
count(data_comb, data_comb$symptom_category == "Asymptomatic")[2,2]
asym_sc_prop = count(data_comb, data_comb$symptom_category == "Asymptomatic" & 
   data_comb$med_conditions___8.factor == "Checked")[2,2]/
   count(data_comb, (!is.na(data_comb$symptom_category) | data_comb$symptom_category != "") &
   data_comb$med_conditions___8.factor == "Checked")[2,2]
asym_sc_prop
count(data_comb, data_comb$symptom_category == "Asymptomatic" & 
   data_comb$med_conditions___8.factor == "Checked")[2,2]

remove_null_tests = c()
for (i in 1:nrow(data_comb)) {
   if (data_comb$covid_result.factor[i] == "POSITIVE" & !is.na(data_comb$covid_result.factor[i])) {
     data_comb$covid_result.factor[i] = "Positive"
   } else if (data_comb$covid_result.factor[i] == "NEGATIVE" & !is.na(data_comb$covid_result.factor[i])) {
     data_comb$covid_result.factor[i] = "Negative"
   } else if (data_comb$covid_result.factor[i] == "Undetermined" | 
     data_comb$covid_result.factor[i] == "UNDETERMINED (inconclusive)" | 
     data_comb$covid_result.factor[i] == "Undetermined (inconclusive)" | 
     data_comb$covid_result.factor[i] == "Test Not Performed" | is.na(data_comb$covid_result.factor[i])) {
     remove_null_tests = c(remove_null_tests, i)
   }
}
remove_null_tests = unique(remove_null_tests)
data_no_null = data_comb[-remove_null_tests,]
data_no_null$numeric_covid_result = c(rep(NA, nrow(data_no_null)))
for (i in 1:nrow(data_no_null)) {
   if (data_no_null$covid_result.factor[i] == "Positive") {
     data_no_null$numeric_covid_result[i] = 1
   } else if (data_no_null$covid_result.factor[i] == "Negative") {
     data_no_null$numeric_covid_result[i] = 0
   }
}

names(data_no_null)[1] = "Age_Years"
names(data_no_null)[40] = "White"
names(data_no_null)[41] = "Black"
names(data_no_null)[42] = "Asian"
names(data_no_null)[43] = "Other"
names(data_no_null)[44] = "Refused_to_Answer"
names(data_no_null)[45] = "Ethnicity"
names(data_no_null)[46] = "High_Blood_Pressure"
names(data_no_null)[47] = "Diabetes"
names(data_no_null)[48] = "Obesity"
names(data_no_null)[49] = "Chronic_Heart_Disease"
names(data_no_null)[50] = "Chronic_Lung_Disease"
names(data_no_null)[51] = "Chronic_Kidney_Disease"
names(data_no_null)[52] = "Chronic_Liver_Disease"
names(data_no_null)[53] = "Hemoglobin_Diseases"
names(data_no_null)[54] = "Cancer"
names(data_no_null)[55] = "Immunosuppression"
names(data_no_null)[56] = "Other"
names(data_no_null)[57] = "None"
#names(data_no_null)[21] = "First_Dose_Manufacturer"
#names(data_no_null)[22] = "Number_of_Doses"
#names(data_no_null)[23] = "Second_Dose_Manufacturer"
#names(data_no_null)[24] = "Previous_COVID_Positive"
names(data_no_null)[76] = "COVID_Test_Result"
names(data_no_null)[77] = "Vaccine_Status"
names(data_no_null)[78] = "Sickle_Cell"
names(data_no_null)[88] = "Numeric_COVID_Test_Result"
names(data_no_null)[87] = "Symptoms_Status"

library(logistf)
empty_no_vac = logistf(Numeric_COVID_Test_Result ~ 1, family=binomial, data=data_no_null)
full_no_vac = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Heart_Disease + Chronic_Lung_Disease +
    Chronic_Kidney_Disease + Chronic_Liver_Disease + Hemoglobin_Diseases +
    Cancer + Immunosuppression, family=binomial, data=data_no_null)
backward(full_no_vac)
result_no_vac = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + 
    Diabetes + Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + 
    Cancer + Hemoglobin_Diseases, 
    family = binomial, data = data_no_null)
summary(result_no_vac)

data_vac = data_no_null
remove_na = c()
for (i in 1:nrow(data_vac)) {
   if (data_vac[i,77] == "I dont know" | is.na(data_vac[i,77])) {
      remove_na = c(remove_na, i)
   }
}
data_vac = data_vac[-remove_na,]
#levels(data_vac$Number_of_Doses) = c(levels(data_vac$Number_of_Doses), "0 doses")
#for (i in 1:nrow(data_vac)) {
 #  if (is.na(data_vac[i,22])) {
 #     data_vac[i,22] = "0 doses"
 #  }
#}
#data_vac$Number_of_Doses = relevel(data_vac$Number_of_Doses, ref="0 doses")


empty = logistf(Numeric_COVID_Test_Result ~ 1, family=binomial, data=data_vac)
full = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Heart_Disease + Chronic_Lung_Disease +
    Chronic_Kidney_Disease + Chronic_Liver_Disease + Hemoglobin_Diseases +
    Cancer + Immunosuppression + Symptoms_Status +
    Vaccine_Status, family=binomial, data=data_vac)
full2 = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Heart_Disease + Chronic_Lung_Disease +
    Chronic_Kidney_Disease + Chronic_Liver_Disease + Hemoglobin_Diseases +
    Cancer + Immunosuppression + 
    Vaccine_Status, family=binomial, data=data_vac)
backward(full)
result = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases + Symptoms_Status, 
    family=binomial, data=data_vac)
summary(result)

asym_prop = length(which(data_vac$Symptoms_Status == "Asymptomatic"))/
   length(which(!is.na(data_vac$Symptoms_Status) | data_vac$Symptoms_Status != ""))
asym_prop
length(which(data_vac$Symptoms_Status == "Asymptomatic"))
length(which(data_vac$Symptoms_Status == "Symptomatic"))
asym_sc_prop = length(which(data_vac$Symptoms_Status == "Asymptomatic" & 
   data_vac$Sickle_Cell == "Yes"))/
   length(which((!is.na(data_vac$Symptoms_Status) | data_vac$Symptoms_Status != "") &
   data_vac$Sickle_Cell == "Yes"))
asym_sc_prop
length(which(data_vac$Symptoms_Status == "Asymptomatic" & 
   data_vac$Sickle_Cell == "Yes"))

remove_unsure = c()
for (i in 1:nrow(data_no_null)) {
   if (data_no_null$Sickle_Cell[i] == "Unsure") {
      remove_unsure = c(remove_unsure, i)
   }
}
data_no_unsure = data_no_null[-remove_unsure,]

remove_unsure = c()
for (i in 1:nrow(data_no_null)) {
   if (data_no_null$unco[i] == "Unsure") {
      remove_unsure = c(remove_unsure, i)
   }
}
if (length(remove_unsure) != 0) {
   data_no_unsure = data_no_null[-remove_unsure,]
}

names(data_no_unsure)[1] = "Age_Years"
names(data_no_unsure)[40] = "White"
names(data_no_unsure)[41] = "Black"
names(data_no_unsure)[42] = "Asian"
names(data_no_unsure)[43] = "Other"
names(data_no_unsure)[44] = "Refused_to_Answer"
names(data_no_unsure)[45] = "Ethnicity"
names(data_no_unsure)[46] = "High_Blood_Pressure"
names(data_no_unsure)[47] = "Diabetes"
names(data_no_unsure)[48] = "Obesity"
names(data_no_unsure)[49] = "Chronic_Heart_Disease"
names(data_no_unsure)[50] = "Chronic_Lung_Disease"
names(data_no_unsure)[51] = "Chronic_Kidney_Disease"
names(data_no_unsure)[52] = "Chronic_Liver_Disease"
names(data_no_unsure)[53] = "Hemoglobin_Diseases"
names(data_no_unsure)[54] = "Cancer"
names(data_no_unsure)[55] = "Immunosuppression"
names(data_no_unsure)[56] = "Other"
names(data_no_unsure)[57] = "None"
#names(data_no_unsure)[21] = "First_Dose_Manufacturer"
#names(data_no_unsure)[22] = "Number_of_Doses"
#names(data_no_unsure)[23] = "Second_Dose_Manufacturer"
#names(data_no_unsure)[24] = "Previous_COVID_Positive"
names(data_no_unsure)[76] = "COVID_Test_Result"
names(data_no_unsure)[77] = "Vaccine_Status"
names(data_no_unsure)[78] = "Sickle_Cell_Presence"
names(data_no_unsure)[88] = "Numeric_COVID_Test_Result"
names(data_no_unsure)[87] = "Symptoms_Status"

result_sc = logistf(Numeric_COVID_Test_Result ~ Sickle_Cell_Presence,
    family=binomial, data=data_no_unsure)
summary(result_sc)
result_sym = logistf(Numeric_COVID_Test_Result ~ Symptoms_Status,
    family=binomial, data=data_no_unsure)
summary(result_sym)

conf.int.nv = paste("(",round(exp(result_no_vac$ci.lower), 2),", ",
   round(exp(result_no_vac$ci.upper),2),")", sep="")
odds.nv = round(exp(coef(result_no_vac)),2)
pval.nv = round(result_no_vac$prob,3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Lung Disease",
    "Chronic Kidney Disease", "Cancer", "Hemoglobin Diseases")
to_table = matrix(c(names, odds.nv, conf.int.nv, pval.nv), ncol=4)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),1))
table = as.data.frame(to_table[c(-1),])
library(r2rtf)
library(dplyr)
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_comp_fir.rtf")

conf.int = paste("(",round(exp(full$ci.lower), 2),", ",
   round(exp(full$ci.upper),2),")", sep="")
odds = round(exp(coef(full)),2)
pval = round(full$prob,3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Heart Disease",
    "Chronic Lung Disease", "Chronic Kidney Disease", "Chronic Liver Disease", 
    "Hemoglobin Diseases", "Cancer", "Immunosuppression", "Symptom Status", "Vaccine Status", "")
to_table = matrix(c(names, odds, conf.int, pval), ncol=4)
colnames(to_table) = c("Variable", "Odds", "95% CI", "p-value")
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_fir.rtf")

conf.int = paste("(",round(exp(full2$ci.lower), 2),", ",
   round(exp(full2$ci.upper),2),")", sep="")
odds = round(exp(coef(full2)),2)
pval = round(full2$prob,3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Heart Disease",
    "Chronic Lung Disease", "Chronic Kidney Disease", "Chronic Liver Disease", 
    "Hemoglobin Diseases", "Cancer", "Immunosuppression", "Vaccine Status", "")
to_table = matrix(c(names, odds, conf.int, pval), ncol=4)
colnames(to_table) = c("Variable", "Odds", "95% CI", "p-value")
table = as.data.frame(to_table[c(-1),])

conf.int = paste("(",round(exp(result_sc$ci.lower), 2),", ",
   round(exp(result_sc$ci.upper),2),")", sep="")
odds = round(exp(coef(result_sc)),2)
pval = round(result_sc$prob,3)
names = c("Intercept","Sickle Cell Presence")
to_table = matrix(c(names, odds, conf.int, pval), ncol=4)
colnames(to_table) = c("Variable", "Odds", "95% CI", "p-value")
table = as.data.frame(to_table)
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_sc_fir.rtf")

conf.int = paste("(",round(exp(result_sym$ci.lower), 2),", ",
   round(exp(result_sym$ci.upper),2),")", sep="")
odds = round(exp(coef(result_sym)),2)
pval = round(result_sym$prob,3)
names = c("Intercept","Symptomatic")
to_table = matrix(c(names, odds, conf.int, pval), ncol=4)
colnames(to_table) = c("Variable", "Odds", "95% CI", "p-value")
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_sym_fir.rtf")


#####################

rows_p = c()
rows_a = c()
rows_w = c()
rows_b = c()
rows_s = c()
rows_o = c()
rows_h = c()
rows_n = c()
for (i in 1:nrow(data_vac)) {
    if (data_vac[i,1] < 16 & !is.na(data_vac[i,1])) {
       rows_p = c(rows_p, i)
    }
    if (data_vac[i,1] >= 16 & !is.na(data_vac[i,1])) {
       rows_a = c(rows_a, i)
    }
    if (data_vac[i,40] == "Checked" & !is.na(data_vac[i,40])) {
       rows_w = c(rows_w, i)
    }
    if (data_vac[i,41] == "Checked" & !is.na(data_vac[i,41])) {
       rows_b = c(rows_b, i)
    }
    if (data_vac[i,42] == "Checked" & !is.na(data_vac[i,42])) {
       rows_s = c(rows_s, i)
    }
    if (data_vac[i,43] == "Checked" & !is.na(data_vac[i,43])) {
       rows_o = c(rows_o, i)
    }
    if (data_vac[i,45] == "Hispanic" & !is.na(data_vac[i,45])) {
       rows_h = c(rows_h, i)
    }
    if (data_vac[i,45] == "Non-Hispanic" & !is.na(data_vac[i,45])) {
       rows_n = c(rows_n, i)
    }
}

peds = data_vac[rows_p,]
adults = data_vac[rows_a,]
white = data_vac[rows_w,]
blkaa = data_vac[rows_b,]
asian = data_vac[rows_s,]
other = data_vac[rows_o,]
hispanics = data_vac[rows_h,]
nonhispanics = data_vac[rows_n,]
result_p = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer, 
    family = binomial, data = peds)
summary(result_p)
result_a = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer, 
    family = binomial, data = adults)
summary(result_a)
result_w = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer,
    family = binomial, data = white)
summary(result_w)
result_b = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer,
    family = binomial, data = blkaa)
summary(result_b)
result_s = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer,
    family = binomial, data = asian)
summary(result_s)
result_o = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer, 
    family = binomial, data = other)
summary(result_o)
result_h = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer, 
    family = binomial, data = hispanics)
summary(result_h)
result_n = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Diabetes +
    Obesity + Chronic_Lung_Disease + Chronic_Kidney_Disease + Hemoglobin_Diseases +
    Cancer, 
    family = binomial, data = nonhispanics)
summary(result_n)

conf.int.p = paste("(",round(exp(result_p$ci.lower), 2),", ",
   round(exp(result_p$ci.upper),2),")", sep="")
odds.p = round(exp(coef(result_p)),2)
pval.p = round(result_p$prob, 3)
conf.int.a = paste("(",round(exp(result_a$ci.lower), 2),", ",
   round(exp(result_a$ci.upper),2),")", sep="")
odds.a = round(exp(coef(result_a)),2)
pval.a = round(result_a$prob, 3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Lung Disease",
    "Chronic Kidney Disease", "Hemoglobin Diseases", "Cancer")
to_table = matrix(c(names, odds.p, conf.int.p, pval.p, odds.a, conf.int.a, pval.a), ncol=7)
colnames(to_table) = c("Variable", "Odds", "95% CI", "p-value", "Odds", "95% CI", "p-value")
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//result_tab_age_fir.rtf")

conf.int.w = paste("(",round(exp(result_w$ci.lower), 2),", ",
   round(exp(result_w$ci.upper),2),")", sep="")
odds.w = round(exp(coef(result_w)),2)
pval.w = round(result_w$prob, 3)
conf.int.b = paste("(",round(exp(result_b$ci.lower), 2),", ",
   round(exp(result_b$ci.upper),2),")", sep="")
odds.b = round(exp(coef(result_b)),2)
pval.b = round(result_b$prob, 3)
conf.int.s = paste("(",round(exp(result_s$ci.lower), 2),", ",
   round(exp(result_s$ci.upper),2),")", sep="")
odds.s = round(exp(coef(result_s)),2)
pval.s = round(result_s$prob, 3)
conf.int.o = paste("(",round(exp(result_o$ci.lower), 2),", ",
   round(exp(result_o$ci.upper),2),")", sep="")
odds.o = round(exp(coef(result_o)),2)
pval.o = round(result_o$prob, 3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Lung Disease",
    "Chronic Kidney Disease", "Hemoglobin Diseases", "Cancer")
to_table = matrix(c(names, odds.w, conf.int.w, pval.w, odds.b, conf.int.b, pval.b,
                    odds.o, conf.int.o, pval.o), ncol=10)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),3))
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//result_tab_race_fir.rtf")

names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Kidney Disease",
    "Hemoglobin Diseases", "Cancer")
to_table = matrix(c(names, odds.s, conf.int.s, pval.s), ncol=4)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),1))
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//result_tab_asian_fir.rtf")

conf.int.h = paste("(",round(exp(result_h$ci.lower), 2),", ",
   round(exp(result_h$ci.upper),2),")", sep="")
odds.h = round(exp(coef(result_h)),2)
pval.h = round(result_h$prob, 3)
conf.int.n = paste("(",round(exp(result_n$ci.lower), 2),", ",
   round(exp(result_n$ci.upper),2),")", sep="")
odds.n = round(exp(coef(result_n)),2)
pval.n = round(result_n$prob, 3)
names = c("Intercept","High Blood Pressure", "Diabetes", "Obesity", "Chronic Lung Disease",
    "Chronic Kidney Disease", "Hemoglobin Diseases", "Cancer")
to_table = matrix(c(names, odds.h, conf.int.h, pval.h, odds.n, conf.int.n, pval.n), ncol=7)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),2))
table = as.data.frame(to_table[c(-1),])
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//result_tab_eth_fir.rtf")

###########################

result_hbp = logistf(Numeric_COVID_Test_Result ~ High_Blood_Pressure + Vaccine_Status, 
    data = data_vac)
summary(result_hbp)
result_dbt = logistf(Numeric_COVID_Test_Result ~ Diabetes + Vaccine_Status, 
    data = data_vac)
summary(result_dbt)
result_obs = logistf(Numeric_COVID_Test_Result ~ Obesity + Vaccine_Status, 
    data = data_vac)
summary(result_obs)
result_chd = logistf(Numeric_COVID_Test_Result ~ Chronic_Heart_Disease + Vaccine_Status, 
    data = data_vac)
summary(result_chd)
result_cld = logistf(Numeric_COVID_Test_Result ~ Chronic_Lung_Disease + Vaccine_Status, 
    data = data_vac)
summary(result_cld)
result_ckd = logistf(Numeric_COVID_Test_Result ~ Chronic_Kidney_Disease + Vaccine_Status, 
    data = data_vac)
summary(result_ckd)
result_cvd = logistf(Numeric_COVID_Test_Result ~ Chronic_Liver_Disease + Vaccine_Status, 
    data = data_vac)
summary(result_cvd)
result_hmg = logistf(Numeric_COVID_Test_Result ~ Hemoglobin_Diseases + Vaccine_Status, 
    data = data_vac)
summary(result_hmg)
result_can = logistf(Numeric_COVID_Test_Result ~ Cancer + Vaccine_Status, 
    data = data_vac)
summary(result_can)
result_imm = logistf(Numeric_COVID_Test_Result ~ Immunosuppression + Vaccine_Status, 
    data = data_vac)
summary(result_imm)

results = c("High Blood Pressure")
for (i in 3:3) {
   conf.int_hbp = paste("(",round(exp(result_hbp$ci.lower[i]), 2),", ",
                  round(exp(result_hbp$ci.upper[i]),2),")", sep="")
   odds_hbp = round(exp(coef(result_hbp)[i]),2)
   results = c(results, conf.int_hbp, odds_hbp)
}
results = c(results, "Diabetes")
for (i in 3:3) {
   conf.int_dbt = paste("(",round(exp(result_dbt$ci.lower[i]), 2),", ",
                  round(exp(result_dbt$ci.upper[i]),2),")", sep="")
   odds_dbt = round(exp(coef(result_dbt)[i]),2)
   results = c(results, conf.int_dbt, odds_dbt)
}
results = c(results, "Obesity")
for (i in 3:3) {
   conf.int_obs = paste("(",round(exp(result_obs$ci.lower[i]), 2),", ",
                  round(exp(result_obs$ci.upper[i]),2),")", sep="")
   odds_obs = round(exp(coef(result_obs)[i]),2)
   results = c(results, conf.int_obs, odds_obs) 
}
results = c(results, "Chronic Heart Disease")
for (i in 3:3) {
   conf.int_chd = paste("(",round(exp(result_chd$ci.lower[i]), 2),", ",
                  round(exp(result_chd$ci.upper[i]),2),")", sep="")
   odds_chd = round(exp(coef(result_chd)[i]),2)
   results = c(results, conf.int_chd, odds_chd)
}
results = c(results, "Chronic Lung Disease")
for (i in 3:3) {
   conf.int_cld = paste("(",round(exp(result_cld$ci.lower[i]), 2),", ",
                  round(exp(result_cld$ci.upper[i]),2),")", sep="")
   odds_cld = round(exp(coef(result_cld)[i]),2)
   results = c(results, conf.int_cld, odds_cld)
}
results = c(results, "Chronic Kidney Disease")
for (i in 3:3) {
   conf.int_ckd = paste("(",round(exp(result_ckd$ci.lower[i]), 2),", ",
                  round(exp(result_ckd$ci.upper[i]),2),")", sep="")
   odds_ckd = round(exp(coef(result_ckd)[i]),2)
   results = c(results, conf.int_ckd, odds_ckd)
}
results = c(results, "Chronic Liver Disease")
for (i in 3:3) {
   conf.int_cvd = paste("(",round(exp(result_cvd$ci.lower[i]), 2),", ",
                  round(exp(result_cvd$ci.upper[i]),2),")", sep="")
   odds_cvd = round(exp(coef(result_cvd)[i]),2)
   results = c(results, conf.int_cvd, odds_cvd)
}
results = c(results, "Hemoglobin Diseases")
for (i in 3:3) {
   conf.int_hmg = paste("(",round(exp(result_hmg$ci.lower[i]), 2),", ",
                  round(exp(result_hmg$ci.upper[i]),2),")", sep="")
   odds_hmg = round(exp(coef(result_hmg)[i]),2)
   results = c(results, conf.int_hmg, odds_hmg)
}
results = c(results, "Cancer")
for (i in 3:3) {
   conf.int_can = paste("(",round(exp(result_can$ci.lower[i]), 2),", ",
                  round(exp(result_can$ci.upper[i]),2),")", sep="")
   odds_can = round(exp(coef(result_can)[i]),2)
   results = c(results, conf.int_can, odds_can)
}
results = c(results, "Immunosuppression")
for (i in 3:3) {
   conf.int_imm = paste("(",round(exp(result_imm$ci.lower[i]), 2),", ",
                  round(exp(result_imm$ci.upper[i]),2),")", sep="")
   odds_imm = round(exp(coef(result_imm)[i]),2)
   results = c(results, conf.int_imm, odds_imm)
}

colnames = c("Disease", rep(c("95% CI", "Odds"), 1))
results_mat = t(matrix(c(colnames, results), ncol=11))

colnames = c("", "Vaccination Status", "")
result_frame = as.data.frame(results_mat)
colnames(result_frame) = colnames
result_frame[2:11,3] = as.numeric(result_frame[2:11,3])
#result_frame[2:11,5] = as.numeric(result_frame[2:11,5])
#result_frame[2:11,7] = as.numeric(result_frame[2:11,7])
#result_frame[2:11,9] = as.numeric(result_frame[2:11,9])

result_frame %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//bydis_odds_tab_fir.rtf")

n = c()
pos_rate = c()
for (j in 46:57) {
   data_var = data_vac[which(data_vac[,j] == "Checked"),]
   data_var_pos = data_var[which(data_var[,22] == 1),]
   pos_rate = c(pos_rate, names(data_var)[j], 
      round(nrow(data_var_pos)/nrow(data_var), 2))
   n = c(n, names(data_vac)[j], nrow(data_var))
}
n

unvaccinated = 0
partial = 0
vaccinated = 0
for (i in 1:nrow(data_vac)) {
   if (data_vac$Vaccine_Status[i] == "Unvaccinated" &
       !is.na(data_vac$Vaccine_Status[i])) {
      unvaccinated = unvaccinated + 1
   } else if (data_vac$Vaccine_Status[i] == "Partially Vaccinated" &
       !is.na(data_vac$Vaccine_Status[i])) {
      partial = partial + 1
   } else if (data_vac$Vaccine_Status[i] == "Fully Vaccinated/Boosted" &
       !is.na(data_vac$Vaccine_Status[i])) {
      vaccinated = vaccinated + 1
   }
}
unvaccinated
partial
vaccinated

#############################
# Firth's Regression Part 2 #
#############################

for (i in 1:nrow(data_no_null)) {
   if (!is.na(data_no_null$Age_Years[i]) & data_no_null$Age_Years[i] >= 16) {
      data_no_null$age_grp[i] = "At Least 16 Years of Age"
   } else if (!is.na(data_no_null$Age_Years[i]) & data_no_null$Age_Years[i] < 16) {
      data_no_null$age_grp[i] = "Less Than 16 Years of Age"
   } else {
      data_no_null$age_grp[i] = NA
   }
}

for (i in 1:nrow(data_no_null)) {
   data_no_null$med_conditions_sum[i] = sum(data_no_null[i,9:19], na.rm=TRUE)
   if (!is.na(sum(data_no_null[i,9:19])) & sum(data_no_null[i,9:19]) > 1) {
      data_no_null$Comorbid[i] = "Yes"
   } else if (!is.na(sum(data_no_null[i,9:19])) & sum(data_no_null[i,9:19]) <= 1 | 
              (data_no_null[i,20] == 1 & !is.na(data_no_null[i,20]))) {
      data_no_null$Comorbid[i] = "No"
   } else {
      data_no_null$Comorbid[i] = NA
   }
}
data_no_null$age_grp = as.factor(data_no_null$age_grp)
data_no_null$age_grp = relevel(data_no_null$age_grp, "Less Than 16 Years of Age")

model2 = logistf(Numeric_COVID_Test_Result ~ Hemoglobin_Diseases +
                 Black + Comorbid + age_grp, family=binomial, data=data_no_null)

conf.int.m2 = paste("(",round(exp(model2$ci.lower), 2),", ",
   round(exp(model2$ci.upper),2),")", sep="")
odds.m2 = round(exp(coef(model2)),2)
pval.m2 = round(model2$prob,3)
names = c("Intercept","Hemoglobin Diseases","Black/African-American", "Comorbidity Presence",
          "Age Group")
to_table = matrix(c(names, odds.m2, conf.int.m2, pval.m2), ncol=4)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),1))
table = as.data.frame(to_table[c(-1),])
library(r2rtf)
library(dplyr)
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_m2_fir.rtf")

#############################
# Firth's Regression Part 2 #
#############################

data_abs_no_unsure = data_no_unsure[which(data_no_unsure$unco == "No"),]
result_hgbss = logistf(Numeric_COVID_Test_Result ~ hgbss,
    family=binomial, data=data_abs_no_unsure)
summary(result_hgbss)
result_hgbsc = logistf(Numeric_COVID_Test_Result ~ hgbsc,
    family=binomial, data=data_abs_no_unsure)
summary(result_hgbsc)
result_sct = logistf(Numeric_COVID_Test_Result ~ sct,
    family=binomial, data=data_abs_no_unsure)
summary(result_sct)
result_beta = logistf(Numeric_COVID_Test_Result ~ bthal,
    family=binomial, data=data_abs_no_unsure)
summary(result_beta)
result_hgbso = logistf(Numeric_COVID_Test_Result ~ hgbso,
    family=binomial, data=data_abs_no_unsure)
summary(result_hgbso)
result_nosc = logistf(Numeric_COVID_Test_Result ~ nosc,
    family=binomial, data=data_abs_no_unsure)
summary(result_nosc)
result_unco = logistf(Numeric_COVID_Test_Result ~ unco,
    family=binomial, data=data_no_null)
summary(result_unco)

conf.int.hgbss = paste("(",round(exp(result_hgbss$ci.lower[2]), 2),", ",
   round(exp(result_hgbss$ci.upper[2]),2),")", sep="")
odds.hgbss = round(exp(coef(result_hgbss)[2]),2)
pval.hgbss = round(result_hgbss$prob[2],3)
conf.int.hgbsc = paste("(",round(exp(result_hgbsc$ci.lower[2]), 2),", ",
   round(exp(result_hgbsc$ci.upper[2]),2),")", sep="")
odds.hgbsc = round(exp(coef(result_hgbsc)[2]),2)
pval.hgbsc = round(result_hgbsc$prob[2],3)
conf.int.sct = paste("(",round(exp(result_sct$ci.lower[2]), 2),", ",
   round(exp(result_sct$ci.upper[2]),2),")", sep="")
odds.sct = round(exp(coef(result_sct)[2]),2)
pval.sct = round(result_sct$prob[2],3)
conf.int.beta = paste("(",round(exp(result_beta$ci.lower[2]), 2),", ",
   round(exp(result_beta$ci.upper[2]),2),")", sep="")
odds.beta = round(exp(coef(result_beta)[2]),2)
pval.beta = round(result_beta$prob[2],3)
conf.int.hgbso = paste("(",round(exp(result_hgbso$ci.lower[2]), 2),", ",
   round(exp(result_hgbso$ci.upper[2]),2),")", sep="")
odds.hgbso = round(exp(coef(result_hgbso)[2]),2)
pval.hgbso = round(result_hgbso$prob[2],3)
conf.int.nosc = paste("(",round(exp(result_nosc$ci.lower[2]), 2),", ",
   round(exp(result_nosc$ci.upper[2]),2),")", sep="")
odds.nosc = round(exp(coef(result_nosc)[2]),2)
pval.nosc = round(result_nosc$prob[2],3)
conf.int.unco = paste("(",round(exp(result_unco$ci.lower[2]), 2),", ",
   round(exp(result_unco$ci.upper[2]),2),")", sep="")
odds.unco = round(exp(coef(result_unco)[2]),2)
pval.unco = round(result_unco$prob[2],3)
names = c("HgbSS", "HgbSC", "Sickle Cell Trait (SCT)", "HgbS Beta-thalassemia", "HgbS/O(Arab)", 
                   "Non-Sickle Cell", "Unconfirmed Diagnosis")
to_table = matrix(c(names, odds.hgbss, odds.hgbsc, odds.sct, odds.beta, odds.hgbso, odds.nosc, odds.unco,
                    conf.int.hgbss, conf.int.hgbsc, conf.int.sct, conf.int.beta, conf.int.hgbso, conf.int.nosc, conf.int.unco,
                    pval.hgbss, pval.hgbsc, pval.sct, pval.beta, pval.hgbso, pval.nosc, pval.unco), ncol=4)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),1))
table = as.data.frame(to_table)
library(r2rtf)
library(dplyr)
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_hb_fir.rtf")

#############################
# Firth's Regression Part 4 #
#############################

data_abs_no_unsure = data_no_unsure[which(data_no_unsure$unco == "No"),]
data_abs_no_unsure_blk = data_abs_no_unsure[which(data_no_unsure$Black == "Checked"),]
data_abs_no_unsure_hb = data_abs_no_unsure[which(data_no_unsure$Hemoglobin_Diseases == "Checked"),]

result_sc_blk = logistf(Numeric_COVID_Test_Result ~ Sickle_Cell_Presence,
    family=binomial, data=data_abs_no_unsure_blk)
summary(result_sc_blk)
result_sc_hb = logistf(Numeric_COVID_Test_Result ~ Sickle_Cell_Presence,
    family=binomial, data=data_abs_no_unsure_hb)
summary(result_sc_hb)

conf.int.sc_blk = paste("(",round(exp(result_sc_blk$ci.lower[2]), 2),", ",
   round(exp(result_sc_blk$ci.upper[2]),2),")", sep="")
odds.sc_blk = round(exp(coef(result_sc_blk)[2]),2)
pval.sc_blk = round(result_sc_blk$prob[2],3)
conf.int.sc_hb = paste("(",round(exp(result_sc_hb$ci.lower[2]), 2),", ",
   round(exp(result_sc_hb$ci.upper[2]),2),")", sep="")
odds.sc_hb = round(exp(coef(result_sc_hb)[2]),2)
pval.sc_hb = round(result_sc_hb$prob[2],3)

names = c("Sickle Cell - Black/African American", "Sickle Cell - Hb Presence")
to_table = matrix(c(names, odds.sc_blk, odds.sc_hb,
                    conf.int.sc_blk, conf.int.sc_hb, 
                    pval.sc_blk, pval.sc_hb), ncol=4)
colnames(to_table) = c("Variable", rep(c("Odds", "95% CI", "p-value"),1))
table = as.data.frame(to_table)
library(r2rtf)
library(dplyr)
table %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//results_tab_sc2_fir.rtf")

count(data_comb, !(data_comb$covid_result.factor == "Undetermined" | 
     data_comb$covid_result.factor == "UNDETERMINED (inconclusive)" | 
     data_comb$covid_result.factor == "Undetermined (inconclusive)" | 
     data_comb$covid_result.factor == "Test Not Performed" | is.na(data_comb$covid_result.factor)) &
     (data_comb$status.factor == "I dont know" | is.na(data_comb$status.factor)))
count(data_comb, (data_comb$covid_result.factor == "Undetermined" | 
     data_comb$covid_result.factor == "UNDETERMINED (inconclusive)" | 
     data_comb$covid_result.factor == "Undetermined (inconclusive)" | 
     data_comb$covid_result.factor == "Test Not Performed" | is.na(data_comb$covid_result.factor)) &
     !(data_comb$status.factor == "I dont know" | is.na(data_comb$status.factor)))
count(data_comb, (data_comb$covid_result.factor == "Undetermined" | 
     data_comb$covid_result.factor == "UNDETERMINED (inconclusive)" | 
     data_comb$covid_result.factor == "Undetermined (inconclusive)" | 
     data_comb$covid_result.factor == "Test Not Performed" | is.na(data_comb$covid_result.factor)) &
     (data_comb$status.factor == "I dont know" | is.na(data_comb$status.factor)))
