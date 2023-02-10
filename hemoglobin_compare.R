#Clear existing data and graphics
rm(list=ls())
graphics.off()
#Load Hmisc library
library(Hmisc)
#Read Data
data=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxtraCOVID19TestVe-HemoglobinDemographi_DATA_2022-07-21_1432.csv')
#Setting Labels

label(data$record_id)="Record ID"
label(data$redcap_event_name)="Event Name"
label(data$age_years)="Age in years"
label(data$dob)="Date of Birth"
label(data$date_consent)="Date of Consent"
label(data$how_aware)="How did you become aware of the RADx rapid test research project at Emory?"
label(data$aware_other)="If the how did you became aware question is marked Other, please specify how you became aware of the Emory RADx program."
label(data$sex)="Participants Sex at birth"
label(data$race___1)="Participants Race (choice=White)"
label(data$race___2)="Participants Race (choice=Black/African-American)"
label(data$race___3)="Participants Race (choice=Asian)"
label(data$race___4)="Participants Race (choice=Other)"
label(data$race___99)="Participants Race (choice=Refuse to Answer)"
label(data$other_race)="Other race/ethnicity"
label(data$ethnicity)="Participants Ethnicity "
label(data$city)="City:"
label(data$state)="State (defaults to Georgia; click Other to override):"
label(data$state_other)="If State is Other, specify state:"
label(data$zipcode)="Zipcode:"
label(data$phone)="Telephone Number:"
label(data$num_household)="How many people are living in the household?"
label(data$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fever (>100.4))"
label(data$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Chills)"
label(data$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Congestion/runny nose (rhinorrhea))"
label(data$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Cough)"
label(data$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Headache)"
label(data$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Sore throat)"
label(data$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Fatigue)"
label(data$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Joint pain (arthralgias))"
label(data$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Muscle aches or pains (myalgias))"
label(data$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Light sensitivity (photophobia))"
label(data$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Vomiting)"
label(data$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Nausea)"
label(data$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Diarrhea)"
label(data$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Abdominal pain)"
label(data$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Loss of sense of taste or smell)"
label(data$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Shortness of Breath (dyspnea))"
label(data$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=Other)"
label(data$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply. (choice=None)"
label(data$symptom_onset)="What is the date of the earliest symptom onset?"
label(data$symptomatic)="Are you currently symptomatic?"
label(data$symptoms_today___1)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Fever (>100.4))"
label(data$symptoms_today___2)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Chills)"
label(data$symptoms_today___3)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Congestion/runny nose (rhinorrhea))"
label(data$symptoms_today___4)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Cough)"
label(data$symptoms_today___5)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Headache)"
label(data$symptoms_today___6)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Sore throat)"
label(data$symptoms_today___7)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Fatigue)"
label(data$symptoms_today___8)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Joint pain (arthralgias))"
label(data$symptoms_today___9)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Muscle aches or pains (myalgias))"
label(data$symptoms_today___10)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Light sensitivity (photophobia))"
label(data$symptoms_today___11)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Vomiting)"
label(data$symptoms_today___12)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Nausea)"
label(data$symptoms_today___13)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Diarrhea)"
label(data$symptoms_today___14)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Abdominal pain)"
label(data$symptoms_today___15)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Loss of sense of taste or smell)"
label(data$symptoms_today___17)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Shortness of Breath (dyspnea))"
label(data$symptoms_today___99)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=Other)"
label(data$symptoms_today___16)="Are you experiencing any of the following symptoms today? Please check all that apply. (choice=None)"
label(data$other_symptom_describe)="Describe other symptom"
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
label(data$med_conditions_other)="Other medical condition not listed above:"
label(data$eat_drink)="(NOW HIDDEN) Did you eat or drink anything in the last 15 minutes?"
label(data$smoker)="Are you a current smoker?"
label(data$smoked_last_hour)="If yes, have you smoked in the last hour?"
label(data$drink_alcohol)="Do you drink alcoholic beverages?"
label(data$alcohol_last)="When was the last time you had an alcoholic beverage?"
label(data$alcohol_product)="Do you use products with alcohol in them like mouthwash?"
label(data$alcohol_last_product)="When was the last time you used a product with alcohol in it such as mouthwash?"
label(data$test_reason___1)="Reason for testing (mark all that apply): (choice=Exposure to known COVID-19 (tested positive) individual)"
label(data$test_reason___2)="Reason for testing (mark all that apply): (choice=Exposure to COVID-19 symptomatic individual)"
label(data$test_reason___6)="Reason for testing (mark all that apply): (choice=Symptomatic without known exposure)"
label(data$test_reason___3)="Reason for testing (mark all that apply): (choice=Travel)"
label(data$test_reason___4)="Reason for testing (mark all that apply): (choice=Event)"
label(data$test_reason___5)="Reason for testing (mark all that apply): (choice=Other)"
label(data$reason_oth_spec)="If reason for testing is Other, describe:"
label(data$known_covid_exposure)="Have you been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data$exposure_source_known___1)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Someone at home/family member)"
label(data$exposure_source_known___2)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Friend)"
label(data$exposure_source_known___3)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Camp/school)"
label(data$exposure_source_known___5)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Work)"
label(data$exposure_source_known___4)="If you suspect you were exposed to a KNOWN (tested positive) COVID-19 case, was the exposure from: (choice=Other)"
label(data$other_exp_source_known)="Other exposure source (known positive):"
label(data$suspected_exposure)="Have you been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data$exposure_source___1)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Someone at home/family member)"
label(data$exposure_source___2)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Friend)"
label(data$exposure_source___3)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Camp/school)"
label(data$exposure_source___5)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Work)"
label(data$exposure_source___4)="If you suspect you were exposed to someone who had symptoms of COVID-19 (suspected), was the exposure from : (choice=Other)"
label(data$other_exposure_source)="Other exposure source (suspected/symptoms):"
label(data$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data$any_test_14days)="Have you had a COVID-19 test of any type in the last 14 days?"
label(data$home_test_before)="Have you ever conducted an over the counter COVID-19 home test before?"
label(data$home_test_number)="If yes, how many times have you conducted a home test? (approximate is acceptable; enter as integer):"
label(data$previous_covid)="Have you tested positive previously (prior to the current illness) for COVID-19 using a PCR lab test?"
label(data$number_infections)="If you have tested positive for COVID previously, how many separate COVID infections have you experienced?"
label(data$pos_date)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your most recent infection?"
label(data$date_positive)="When did you test positive for COVID-19 during your most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$type_of_test)="Type of positive COVID-19 test during your most recent infection:"
label(data$antiviral_rx)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your most recent infection?"
label(data$antiviral_rx_spec)="If you were prescribed an antiviral for your most recent infection, which medication was prescribed?"
label(data$antiviral_rx_spec_oth)="If other antiviral for most recent infection, specify:"
label(data$antiviral_rx_know_dt)="If you were prescribed an antiviral for your most recent infection, do you know the exact start and end dates that you took the medication?"
label(data$antiviral_rx_start_dt)="Please indicate the date you started taking the antiviral medication for your most recent infection (estimate the date if you dont know it exactly)."
label(data$antiviral_rx_end_dt)="Please indicate the date you stopped taking the antiviral medication for your most recent infection (estimate the date if you dont know it exactly)."
label(data$pos_date_2)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your second most recent infection?"
label(data$date_positive_2)="When did you test positive for COVID-19 during your second most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$type_of_test_2)="Type of positive COVID-19 test during your second most recent infection:"
label(data$antiviral_rx_2)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your second most recent infection?"
label(data$antiviral_rx_spec_2)="If you were prescribed an antiviral for your second most recent infection, which medication was prescribed?"
label(data$antiviral_rx_spec_oth_2)="If other antiviral for second most recent infection, specify:"
label(data$antiviral_rx_know_dt_2)="If you were prescribed an antiviral for your second most recent infection, do you know the exact start and end dates that you took the medication?"
label(data$antiviral_rx_start_dt_2)="Please indicate the date you started taking the antiviral medication for your second most recent infection (estimate the date if you dont know it exactly)."
label(data$antiviral_rx_end_dt_2)="Please indicate the date you stopped taking the antiviral medication for your second most recent infection (estimate the date if you dont know it exactly)."
label(data$pos_date_3)="If you have tested positive for COVID-19 previously, do you know the exact date you tested positive during your third most recent infection?"
label(data$date_positive_3)="When did you test positive for COVID-19 during your third most recent infection? (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$type_of_test_3)="Type of positive COVID-19 test during your third most recent infection:"
label(data$antiviral_rx_3)="Were you prescribed an antiviral medication (such as Paxlovid, Molnupiravir or some other antiviral medication) for your third most recent infection?"
label(data$antiviral_rx_spec_3)="If you were prescribed an antiviral for your third most recent infection, which medication was prescribed?"
label(data$antiviral_rx_spec_oth_3)="If other antiviral for third most recent infection, specify:"
label(data$antiviral_rx_know_dt_3)="If you were prescribed an antiviral for your third most recent infection, do you know the exact start and end dates that you took the medication?"
label(data$antiviral_rx_start_dt_3)="Please indicate the date you started taking the antiviral medication for your third most recent infection (estimate the date if you dont know it exactly)."
label(data$antiviral_rx_end_dt_3)="Please indicate the date you stopped taking the antiviral medication for your third most recent infection (estimate the date if you dont know it exactly)."
label(data$covid_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data$vaccine)="Which vaccine? (NOW HIDDEN)"
label(data$other_vaccine)="Other vaccine (specify): (NOW HIDDEN)"
label(data$doses)="How many vaccine doses have you received?"
label(data$know_dose1_date)="Do you know the exact date you received vaccine dose #1?"
label(data$dose1_date)="When did you receive vaccine dose #1?  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$dose1_vaccine)="Which vaccine did you receive for dose #1?"
label(data$dose1_other_vaccine)="Dose #1 other vaccine (specify):"
label(data$know_dose2_date)="Do you know the exact date you received vaccine dose #2?"
label(data$dose2_date)="When did you receive vaccine dose #2?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$dose2_vaccine)="Which vaccine did you receive for dose #2?"
label(data$dose2_other_vaccine)="Dose #2 other vaccine (specify):"
label(data$know_dose3_date)="Do you know the exact date you received vaccine dose #3?"
label(data$dose3_date)="When did you receive vaccine dose #3?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$dose3_vaccine)="Which vaccine did you receive for dose #3?"
label(data$dose3_other_vaccine)="Dose #3 other vaccine (specify):"
label(data$know_dose4_date)="Do you know the exact date you received vaccine dose #4?"
label(data$dose4_date)="When did you receive vaccine dose #4?:  (Note: If you dont know the exact date and answered No to the previous question, provide your best estimate.)"
label(data$dose4_vaccine)="Which vaccine did you receive for dose #4?"
label(data$dose4_other_vaccine)="Dose #4 other vaccine (specify):"
label(data$part_healthcare)="Is the study participant considered healthcare personnel? (See definition below.)  Healthcare personnel refers to all paid and unpaid persons serving in healthcare settings who have the potential for direct or indirect exposure to patients or infectious materials. This includes any employee or contractor of a healthcare facility such as physicians, nurses, students, respiratory therapists, phlebotomists, and laboratory staff, as well as transport, food service, housekeeping, volunteers and maintenance personnel."
label(data$healthcare_survey)="Would the study participant be willing to participate in a separate vaccine effectiveness project for healthcare personnel by completing a 20 minute confidential survey online? Those eligible will receive an additional $20 gift card (separate from the one you will receive for participating in our testing study)."
label(data$demographics_and_clinical_characteristics_complete)="Complete?"
label(data$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data$sex_sp)="Sexo al Nacimiento: "
label(data$race_sp___1)="Raza: (choice=Blanca)"
label(data$race_sp___2)="Raza: (choice=Afroamericana)"
label(data$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data$race_sp___4)="Raza: (choice=Otro)"
label(data$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data$other_race_sp)="Otra raza"
label(data$ethnicity_sp)="Etnicidad:"
label(data$address_sp)="Domicilio Postal:"
label(data$city_sp)="Ciudad:"
label(data$state_sp)="Estado:"
label(data$zipcode_sp)="C&#243digo Postal:"
label(data$phone_sp)="N&#250mero Telef&#243nico:"
label(data$days_last_sx_sp)="Si actualmente tu hijo/a presenta síntomas, ¿desde hace cuántos días empezaron?"
label(data$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fiebre)"
label(data$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Escalofr&#237os)"
label(data$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Tos)"
label(data$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de cabeza)"
label(data$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de garganta)"
label(data$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Fatiga)"
label(data$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor de articulaciones (artralgia))"
label(data$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor muscular o corporal (Mialgia))"
label(data$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Sensibilidad a la luz (Fotofobia))"
label(data$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=V&#243mito)"
label(data$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Nausea)"
label(data$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Diarrea)"
label(data$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dolor abdominal)"
label(data$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=P&#233rdida del olfato o sabor)"
label(data$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Dificultad para respirar (disnea))"
label(data$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Otro)"
label(data$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan.  (choice=Ninguno)"
label(data$other_symptom_describe_sp)="Describe el Otro s&#237ntoma:"
label(data$fever_sp)="Duraci&#243n de la fiebre, d&#237as:"
label(data$chills_sp)="Duraci&#243n de los escalofr&#237os, d&#237as"
label(data$congestion_sp)="Duraci&#243n de la congesti&#243n nasal/escurrimiento nasal (rinorrea), d&#237as"
label(data$cough_sp)="Duraci&#243n de la tos, d&#237as "
label(data$headache_sp)="Duraci&#243n del dolor de cabeza, d&#237as "
label(data$sorethroat_sp)="Duraci&#243n del dolor de garganta, d&#237as"
label(data$fatigue_sp)="Duraci&#243n de la fatiga,  d&#237as"
label(data$arthralgias_sp)="Duraci&#243n del dolor de articulaciones (artralgias), d&#237as"
label(data$myalgias_sp)="Duraci&#243n del dolor muscular o corporal (mialgias), d&#237as"
label(data$photophobia_sp)="Duraci&#243n de la sensibilidad a la luz (fotofobia), d&#237as"
label(data$vomiting_sp)="Duraci&#243n del v&#243mito, d&#237as"
label(data$nausea_sp)="Duraci&#243n de la n&#225usea, d&#237as"
label(data$diarrhea_sp)="Duraci&#243n de la diarrea, d&#237as"
label(data$abdominalpain_sp)="Duraci&#243n del dolor abdominal, d&#237as"
label(data$loss_taste_smell_sp)="Duraci&#243n de la p&#233rdida del olfato o sabor, d&#237as"
label(data$dyspnea_sp)="Duraci&#243n de dificultad de respirar, d&#237as"
label(data$other_symptom_sp)="Duraci&#243n [other_symptom_describe], d&#237as"
label(data$symptom_onset_sp)="¿Cuál es la fecha cuando empezaron los primeros síntomas? "
label(data$first_sx_start_sp)="¿Hace cu&#225ntos d&#237as tuviste tu primer s&#237ntoma?"
label(data$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data$med_conditions_other_sp)="Alguna otra condici&#243n m&#233dica no mencionada anteriormente:"
label(data$known_covid_exposure_sp)="¿Ha tenido tu hijo/hija contacto o estado expuesto/a un caso CONFIRMADO (prueba positiva) de COVID-19?"
label(data$suspected_exposure_sp)="¿Ha estado tu hijo/a expuesto/a o tenido contacto con alguien quien haya tenido sí de COVID-19 (caso sospechoso)?"
label(data$exposure_source_sp___1)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Alguien en la casa/miembro de la familia)"
label(data$exposure_source_sp___2)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Amigo)"
label(data$exposure_source_sp___3)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Campamento/escuela)"
label(data$exposure_source_sp___4)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Otro)"
label(data$other_exposure_source_sp)="Otra fuente de exposici&#243n:"
label(data$study_home_members_sp)="¿Te gustaría que te contactáramos si contamos con un estudio de investigación donde busquemos hacer la prueba de COVID-19 en otros miembros de tu hogar?"
label(data$ssb_sp)="1. ¿Cómo ha cambiado la ingesta de bebidas azucaradas de tu hijo/a (incluyendo sodas, jugo, bebidas deportivas, bebidas energéticas, limonada, té azucarado, café; sin incluir bebidas dietéticas)?"
label(data$physical_activity_sp)="2. ¿Cómo ha cambiado la actividad física de tu hijo/a?"
label(data$child_weight_sp)="3. ¿Estás preocupado de cambios en el peso de tu hijo/a?"
label(data$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
label(data$date_positive_sp)="Cuando (fecha) recibio su hijo/hija un resultado positivo de COVID-19:"
label(data$location_test_sp)="¿Donde recibio un resultado positivo ? "
label(data$other_location_test_sp)="Otro sitio de pruebas:"
label(data$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data$vaccine_sp)="¿Cuál de ellas? :"
label(data$other_vaccine_sp)="Cual otra vacuna:"
label(data$doses_sp)="¿Cuántas dosis? "
label(data$dose1_date_sp)="¿Cuando recibio la primera dosis (dosis #1):    "
label(data$dose2_date_sp)="¿Cuando recibio la segunda dosis (dosis #2):   "
label(data$covid_result)="Result of clinical COVID test:"
label(data$patient_mrn)="Medical Record Number (MRN)"
label(data$adult_mrn)="Adult Medical Number (MRN)  (NOW HIDDEN)"
#Setting Units


#Setting Factors(will create new variable for factors)
data$redcap_event_name.factor = factor(data$redcap_event_name,levels=c("event_1_arm_1","fatigue_study_base_arm_1","fatigue_study_fu_1_arm_1","fatigue_study_fu_2_arm_1"))
data$how_aware.factor = factor(data$how_aware,levels=c("1","2","3","4","5","6","7","8","99"))
data$sex.factor = factor(data$sex,levels=c("1","2"))
data$race___1.factor = factor(data$race___1,levels=c("0","1"))
data$race___2.factor = factor(data$race___2,levels=c("0","1"))
data$race___3.factor = factor(data$race___3,levels=c("0","1"))
data$race___4.factor = factor(data$race___4,levels=c("0","1"))
data$race___99.factor = factor(data$race___99,levels=c("0","1"))
data$ethnicity.factor = factor(data$ethnicity,levels=c("1","0","99"))
data$state.factor = factor(data$state,levels=c("1","99"))
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
data$symptomatic.factor = factor(data$symptomatic,levels=c("1","0"))
data$symptoms_today___1.factor = factor(data$symptoms_today___1,levels=c("0","1"))
data$symptoms_today___2.factor = factor(data$symptoms_today___2,levels=c("0","1"))
data$symptoms_today___3.factor = factor(data$symptoms_today___3,levels=c("0","1"))
data$symptoms_today___4.factor = factor(data$symptoms_today___4,levels=c("0","1"))
data$symptoms_today___5.factor = factor(data$symptoms_today___5,levels=c("0","1"))
data$symptoms_today___6.factor = factor(data$symptoms_today___6,levels=c("0","1"))
data$symptoms_today___7.factor = factor(data$symptoms_today___7,levels=c("0","1"))
data$symptoms_today___8.factor = factor(data$symptoms_today___8,levels=c("0","1"))
data$symptoms_today___9.factor = factor(data$symptoms_today___9,levels=c("0","1"))
data$symptoms_today___10.factor = factor(data$symptoms_today___10,levels=c("0","1"))
data$symptoms_today___11.factor = factor(data$symptoms_today___11,levels=c("0","1"))
data$symptoms_today___12.factor = factor(data$symptoms_today___12,levels=c("0","1"))
data$symptoms_today___13.factor = factor(data$symptoms_today___13,levels=c("0","1"))
data$symptoms_today___14.factor = factor(data$symptoms_today___14,levels=c("0","1"))
data$symptoms_today___15.factor = factor(data$symptoms_today___15,levels=c("0","1"))
data$symptoms_today___17.factor = factor(data$symptoms_today___17,levels=c("0","1"))
data$symptoms_today___99.factor = factor(data$symptoms_today___99,levels=c("0","1"))
data$symptoms_today___16.factor = factor(data$symptoms_today___16,levels=c("0","1"))
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
data$eat_drink.factor = factor(data$eat_drink,levels=c("1","0"))
data$smoker.factor = factor(data$smoker,levels=c("1","0","2"))
data$smoked_last_hour.factor = factor(data$smoked_last_hour,levels=c("1","0"))
data$drink_alcohol.factor = factor(data$drink_alcohol,levels=c("1","0","2"))
data$alcohol_product.factor = factor(data$alcohol_product,levels=c("1","0","2"))
data$test_reason___1.factor = factor(data$test_reason___1,levels=c("0","1"))
data$test_reason___2.factor = factor(data$test_reason___2,levels=c("0","1"))
data$test_reason___6.factor = factor(data$test_reason___6,levels=c("0","1"))
data$test_reason___3.factor = factor(data$test_reason___3,levels=c("0","1"))
data$test_reason___4.factor = factor(data$test_reason___4,levels=c("0","1"))
data$test_reason___5.factor = factor(data$test_reason___5,levels=c("0","1"))
data$known_covid_exposure.factor = factor(data$known_covid_exposure,levels=c("1","0","99"))
data$exposure_source_known___1.factor = factor(data$exposure_source_known___1,levels=c("0","1"))
data$exposure_source_known___2.factor = factor(data$exposure_source_known___2,levels=c("0","1"))
data$exposure_source_known___3.factor = factor(data$exposure_source_known___3,levels=c("0","1"))
data$exposure_source_known___5.factor = factor(data$exposure_source_known___5,levels=c("0","1"))
data$exposure_source_known___4.factor = factor(data$exposure_source_known___4,levels=c("0","1"))
data$suspected_exposure.factor = factor(data$suspected_exposure,levels=c("1","0","99"))
data$exposure_source___1.factor = factor(data$exposure_source___1,levels=c("0","1"))
data$exposure_source___2.factor = factor(data$exposure_source___2,levels=c("0","1"))
data$exposure_source___3.factor = factor(data$exposure_source___3,levels=c("0","1"))
data$exposure_source___5.factor = factor(data$exposure_source___5,levels=c("0","1"))
data$exposure_source___4.factor = factor(data$exposure_source___4,levels=c("0","1"))
data$study_home_members.factor = factor(data$study_home_members,levels=c("1","0"))
data$any_test_14days.factor = factor(data$any_test_14days,levels=c("1","0"))
data$home_test_before.factor = factor(data$home_test_before,levels=c("1","0"))
data$previous_covid.factor = factor(data$previous_covid,levels=c("1","0","99"))
data$number_infections.factor = factor(data$number_infections,levels=c("1","2","3"))
data$pos_date.factor = factor(data$pos_date,levels=c("1","0"))
data$type_of_test.factor = factor(data$type_of_test,levels=c("1","2"))
data$antiviral_rx.factor = factor(data$antiviral_rx,levels=c("1","0"))
data$antiviral_rx_spec.factor = factor(data$antiviral_rx_spec,levels=c("1","2","3","4"))
data$antiviral_rx_know_dt.factor = factor(data$antiviral_rx_know_dt,levels=c("1","0"))
data$pos_date_2.factor = factor(data$pos_date_2,levels=c("1","0"))
data$type_of_test_2.factor = factor(data$type_of_test_2,levels=c("1","2"))
data$antiviral_rx_2.factor = factor(data$antiviral_rx_2,levels=c("1","0"))
data$antiviral_rx_spec_2.factor = factor(data$antiviral_rx_spec_2,levels=c("1","2","3","4"))
data$antiviral_rx_know_dt_2.factor = factor(data$antiviral_rx_know_dt_2,levels=c("1","0"))
data$pos_date_3.factor = factor(data$pos_date_3,levels=c("1","0"))
data$type_of_test_3.factor = factor(data$type_of_test_3,levels=c("1","2"))
data$antiviral_rx_3.factor = factor(data$antiviral_rx_3,levels=c("1","0"))
data$antiviral_rx_spec_3.factor = factor(data$antiviral_rx_spec_3,levels=c("1","2","3","4"))
data$antiviral_rx_know_dt_3.factor = factor(data$antiviral_rx_know_dt_3,levels=c("1","0"))
data$covid_vaccine.factor = factor(data$covid_vaccine,levels=c("1","0","99"))
data$vaccine.factor = factor(data$vaccine,levels=c("1","2","3","4","99"))
data$doses.factor = factor(data$doses,levels=c("1","2","3","4"))
data$know_dose1_date.factor = factor(data$know_dose1_date,levels=c("1","0"))
data$dose1_vaccine.factor = factor(data$dose1_vaccine,levels=c("1","2","3","4","99"))
data$know_dose2_date.factor = factor(data$know_dose2_date,levels=c("1","0"))
data$dose2_vaccine.factor = factor(data$dose2_vaccine,levels=c("1","2","3","4","99"))
data$know_dose3_date.factor = factor(data$know_dose3_date,levels=c("1","0"))
data$dose3_vaccine.factor = factor(data$dose3_vaccine,levels=c("1","2","3","4","99"))
data$know_dose4_date.factor = factor(data$know_dose4_date,levels=c("1","0"))
data$dose4_vaccine.factor = factor(data$dose4_vaccine,levels=c("1","2","3","4","99"))
data$part_healthcare.factor = factor(data$part_healthcare,levels=c("1","0"))
data$healthcare_survey.factor = factor(data$healthcare_survey,levels=c("1","0"))
data$demographics_and_clinical_characteristics_complete.factor = factor(data$demographics_and_clinical_characteristics_complete,levels=c("0","1","2"))
data$sex_sp.factor = factor(data$sex_sp,levels=c("1","2"))
data$race_sp___1.factor = factor(data$race_sp___1,levels=c("0","1"))
data$race_sp___2.factor = factor(data$race_sp___2,levels=c("0","1"))
data$race_sp___3.factor = factor(data$race_sp___3,levels=c("0","1"))
data$race_sp___4.factor = factor(data$race_sp___4,levels=c("0","1"))
data$race_sp___99.factor = factor(data$race_sp___99,levels=c("0","1"))
data$ethnicity_sp.factor = factor(data$ethnicity_sp,levels=c("1","0","99"))
data$days_last_sx_sp.factor = factor(data$days_last_sx_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$symptoms_sp___1.factor = factor(data$symptoms_sp___1,levels=c("0","1"))
data$symptoms_sp___2.factor = factor(data$symptoms_sp___2,levels=c("0","1"))
data$symptoms_sp___3.factor = factor(data$symptoms_sp___3,levels=c("0","1"))
data$symptoms_sp___4.factor = factor(data$symptoms_sp___4,levels=c("0","1"))
data$symptoms_sp___5.factor = factor(data$symptoms_sp___5,levels=c("0","1"))
data$symptoms_sp___6.factor = factor(data$symptoms_sp___6,levels=c("0","1"))
data$symptoms_sp___7.factor = factor(data$symptoms_sp___7,levels=c("0","1"))
data$symptoms_sp___8.factor = factor(data$symptoms_sp___8,levels=c("0","1"))
data$symptoms_sp___9.factor = factor(data$symptoms_sp___9,levels=c("0","1"))
data$symptoms_sp___10.factor = factor(data$symptoms_sp___10,levels=c("0","1"))
data$symptoms_sp___11.factor = factor(data$symptoms_sp___11,levels=c("0","1"))
data$symptoms_sp___12.factor = factor(data$symptoms_sp___12,levels=c("0","1"))
data$symptoms_sp___13.factor = factor(data$symptoms_sp___13,levels=c("0","1"))
data$symptoms_sp___14.factor = factor(data$symptoms_sp___14,levels=c("0","1"))
data$symptoms_sp___15.factor = factor(data$symptoms_sp___15,levels=c("0","1"))
data$symptoms_sp___17.factor = factor(data$symptoms_sp___17,levels=c("0","1"))
data$symptoms_sp___99.factor = factor(data$symptoms_sp___99,levels=c("0","1"))
data$symptoms_sp___16.factor = factor(data$symptoms_sp___16,levels=c("0","1"))
data$fever_sp.factor = factor(data$fever_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$chills_sp.factor = factor(data$chills_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$congestion_sp.factor = factor(data$congestion_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$cough_sp.factor = factor(data$cough_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$headache_sp.factor = factor(data$headache_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$sorethroat_sp.factor = factor(data$sorethroat_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$fatigue_sp.factor = factor(data$fatigue_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$arthralgias_sp.factor = factor(data$arthralgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$myalgias_sp.factor = factor(data$myalgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$photophobia_sp.factor = factor(data$photophobia_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$vomiting_sp.factor = factor(data$vomiting_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$nausea_sp.factor = factor(data$nausea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$diarrhea_sp.factor = factor(data$diarrhea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$abdominalpain_sp.factor = factor(data$abdominalpain_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$loss_taste_smell_sp.factor = factor(data$loss_taste_smell_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$dyspnea_sp.factor = factor(data$dyspnea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$other_symptom_sp.factor = factor(data$other_symptom_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data$first_sx_start_sp.factor = factor(data$first_sx_start_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data$med_conditions_sp___1.factor = factor(data$med_conditions_sp___1,levels=c("0","1"))
data$med_conditions_sp___2.factor = factor(data$med_conditions_sp___2,levels=c("0","1"))
data$med_conditions_sp___3.factor = factor(data$med_conditions_sp___3,levels=c("0","1"))
data$med_conditions_sp___4.factor = factor(data$med_conditions_sp___4,levels=c("0","1"))
data$med_conditions_sp___5.factor = factor(data$med_conditions_sp___5,levels=c("0","1"))
data$med_conditions_sp___6.factor = factor(data$med_conditions_sp___6,levels=c("0","1"))
data$med_conditions_sp___7.factor = factor(data$med_conditions_sp___7,levels=c("0","1"))
data$med_conditions_sp___8.factor = factor(data$med_conditions_sp___8,levels=c("0","1"))
data$med_conditions_sp___9.factor = factor(data$med_conditions_sp___9,levels=c("0","1"))
data$med_conditions_sp___10.factor = factor(data$med_conditions_sp___10,levels=c("0","1"))
data$med_conditions_sp___11.factor = factor(data$med_conditions_sp___11,levels=c("0","1"))
data$med_conditions_sp___12.factor = factor(data$med_conditions_sp___12,levels=c("0","1"))
data$known_covid_exposure_sp.factor = factor(data$known_covid_exposure_sp,levels=c("1","0","99"))
data$suspected_exposure_sp.factor = factor(data$suspected_exposure_sp,levels=c("1","0","99"))
data$exposure_source_sp___1.factor = factor(data$exposure_source_sp___1,levels=c("0","1"))
data$exposure_source_sp___2.factor = factor(data$exposure_source_sp___2,levels=c("0","1"))
data$exposure_source_sp___3.factor = factor(data$exposure_source_sp___3,levels=c("0","1"))
data$exposure_source_sp___4.factor = factor(data$exposure_source_sp___4,levels=c("0","1"))
data$study_home_members_sp.factor = factor(data$study_home_members_sp,levels=c("1","0"))
data$ssb_sp.factor = factor(data$ssb_sp,levels=c("1","2","3","4","5"))
data$physical_activity_sp.factor = factor(data$physical_activity_sp,levels=c("1","2","3","4","5"))
data$child_weight_sp.factor = factor(data$child_weight_sp,levels=c("1","2","3","4"))
data$previous_covid_sp.factor = factor(data$previous_covid_sp,levels=c("1","0","99"))
data$location_test_sp.factor = factor(data$location_test_sp,levels=c("1","2","3","4","5"))
data$covid_vaccine_sp.factor = factor(data$covid_vaccine_sp,levels=c("1","0","99"))
data$vaccine_sp.factor = factor(data$vaccine_sp,levels=c("1","2","3","4","99"))
data$doses_sp.factor = factor(data$doses_sp,levels=c("1","2"))
data$covid_result.factor = factor(data$covid_result,levels=c("1","0","99"))

levels(data$redcap_event_name.factor)=c("Event 1","Fatigue Study: Baseline","Fatigue Study: F/U 1 (4 Week)","Fatigue Study: F/U 2 (6 Week)")
levels(data$how_aware.factor)=c("From a friend or colleague","From the Emory Forward website","From a printed QR code","From social media","From a podcast advertisement","From a radio advertisement","From a news media report (newspaper, TV, etc.)","From an internet search","Other")
levels(data$sex.factor)=c("Male","Female")
levels(data$race___1.factor)=c("Unchecked","Checked")
levels(data$race___2.factor)=c("Unchecked","Checked")
levels(data$race___3.factor)=c("Unchecked","Checked")
levels(data$race___4.factor)=c("Unchecked","Checked")
levels(data$race___99.factor)=c("Unchecked","Checked")
levels(data$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data$state.factor)=c("Georgia","Other")
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
levels(data$symptomatic.factor)=c("Yes","No")
levels(data$symptoms_today___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___11.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___12.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___13.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___14.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___15.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___17.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___99.factor)=c("Unchecked","Checked")
levels(data$symptoms_today___16.factor)=c("Unchecked","Checked")
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
levels(data$eat_drink.factor)=c("Yes","No")
levels(data$smoker.factor)=c("Yes","No","Refused/not applicable")
levels(data$smoked_last_hour.factor)=c("Yes","No")
levels(data$drink_alcohol.factor)=c("Yes","No","Refused/not applicable")
levels(data$alcohol_product.factor)=c("Yes","No","Refused/not applicable")
levels(data$test_reason___1.factor)=c("Unchecked","Checked")
levels(data$test_reason___2.factor)=c("Unchecked","Checked")
levels(data$test_reason___6.factor)=c("Unchecked","Checked")
levels(data$test_reason___3.factor)=c("Unchecked","Checked")
levels(data$test_reason___4.factor)=c("Unchecked","Checked")
levels(data$test_reason___5.factor)=c("Unchecked","Checked")
levels(data$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data$exposure_source_known___1.factor)=c("Unchecked","Checked")
levels(data$exposure_source_known___2.factor)=c("Unchecked","Checked")
levels(data$exposure_source_known___3.factor)=c("Unchecked","Checked")
levels(data$exposure_source_known___5.factor)=c("Unchecked","Checked")
levels(data$exposure_source_known___4.factor)=c("Unchecked","Checked")
levels(data$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data$exposure_source___3.factor)=c("Unchecked","Checked")
levels(data$exposure_source___5.factor)=c("Unchecked","Checked")
levels(data$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data$study_home_members.factor)=c("Yes","No")
levels(data$any_test_14days.factor)=c("Yes","No")
levels(data$home_test_before.factor)=c("Yes","No")
levels(data$previous_covid.factor)=c("Yes","No","Unknown")
levels(data$number_infections.factor)=c("1","2","3")
levels(data$pos_date.factor)=c("Yes","No")
levels(data$type_of_test.factor)=c("PCR","Rapid Antigen")
levels(data$antiviral_rx.factor)=c("Yes","No")
levels(data$antiviral_rx_spec.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data$antiviral_rx_know_dt.factor)=c("Yes","No")
levels(data$pos_date_2.factor)=c("Yes","No")
levels(data$type_of_test_2.factor)=c("PCR","Rapid Antigen")
levels(data$antiviral_rx_2.factor)=c("Yes","No")
levels(data$antiviral_rx_spec_2.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data$antiviral_rx_know_dt_2.factor)=c("Yes","No")
levels(data$pos_date_3.factor)=c("Yes","No")
levels(data$type_of_test_3.factor)=c("PCR","Rapid Antigen")
levels(data$antiviral_rx_3.factor)=c("Yes","No")
levels(data$antiviral_rx_spec_3.factor)=c("Paxlovid","Molnupirvir","Other","Unsure")
levels(data$antiviral_rx_know_dt_3.factor)=c("Yes","No")
levels(data$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data$doses.factor)=c("1 dose","2 doses","3 doses","4 doses")
levels(data$know_dose1_date.factor)=c("Yes","No")
levels(data$dose1_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data$know_dose2_date.factor)=c("Yes","No")
levels(data$dose2_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data$know_dose3_date.factor)=c("Yes","No")
levels(data$dose3_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data$know_dose4_date.factor)=c("Yes","No")
levels(data$dose4_vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data$part_healthcare.factor)=c("Yes","No")
levels(data$healthcare_survey.factor)=c("Yes","No")
levels(data$demographics_and_clinical_characteristics_complete.factor)=c("Incomplete","Unverified","Complete")
levels(data$sex_sp.factor)=c("Masculino","Femenino")
levels(data$race_sp___1.factor)=c("Unchecked","Checked")
levels(data$race_sp___2.factor)=c("Unchecked","Checked")
levels(data$race_sp___3.factor)=c("Unchecked","Checked")
levels(data$race_sp___4.factor)=c("Unchecked","Checked")
levels(data$race_sp___99.factor)=c("Unchecked","Checked")
levels(data$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data$days_last_sx_sp.factor)=c("No presenta s&#237ntomas","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data$fever_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$chills_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$congestion_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$cough_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$headache_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$sorethroat_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$fatigue_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$arthralgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$myalgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$photophobia_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$vomiting_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$nausea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$diarrhea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$abdominalpain_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$loss_taste_smell_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$dyspnea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$other_symptom_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data$first_sx_start_sp.factor)=c("Hoy","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)","No recuerdo/No s&#233")
levels(data$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data$known_covid_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data$suspected_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data$exposure_source_sp___1.factor)=c("Unchecked","Checked")
levels(data$exposure_source_sp___2.factor)=c("Unchecked","Checked")
levels(data$exposure_source_sp___3.factor)=c("Unchecked","Checked")
levels(data$exposure_source_sp___4.factor)=c("Unchecked","Checked")
levels(data$study_home_members_sp.factor)=c("Yes","No")
levels(data$ssb_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data$physical_activity_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data$child_weight_sp.factor)=c("a. Sí, porque él/ella parece ha aumentado de peso más de lo que debería","b. Sí, parece que él/ella está perdiendo peso","c. No, no estoy preocupado","d. Sin respuesta")
levels(data$previous_covid_sp.factor)=c("Si","No","No sé.")
levels(data$location_test_sp.factor)=c("CHOA (Childrens Healthcare of Atlanta)","Public Health Testing site (Sitio/centro de pruebas de salud pública)","Pediatra","Farmacia","Otro sitio de pruebas")
levels(data$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data$doses_sp.factor)=c("1 dosis","2 dosis")
levels(data$covid_result.factor)=c("POSITIVE","NEGATIVE","UNDETERMINED (inconclusive)")

#Read Data
data2=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxT3AdultCovidTest-HemoglobinDemographi_DATA_2022-07-12_1625.csv')
#Setting Labels

label(data2$record_id)="Record ID"
label(data2$redcap_event_name)="Event Name"
label(data2$redcap_repeat_instrument)="Repeat Instrument"
label(data2$redcap_repeat_instance)="Repeat Instance"
label(data2$date_consent)="Date of Consent"
label(data2$enrollment_location)="Enrollment location"
label(data2$hospital)="If in-patient, which hospital?"
label(data2$hospital_spec)="If other hospital, specify"
label(data2$other_location)="Other  enrollment location, specify"
label(data2$dob)="Participant Date of Birth"
label(data2$age_years)="Participant Age in years"
label(data2$sex)="Participants Sex at birth"
label(data2$race___1)="Participant Race (choice=White)"
label(data2$race___2)="Participant Race (choice=Black/African-American)"
label(data2$race___3)="Participant Race (choice=Asian)"
label(data2$race___4)="Participant Race (choice=Other)"
label(data2$race___88)="Participant Race (choice=Refused to answer)"
label(data2$other_race)="Other race/ethnicity"
label(data2$ethnicity)="Participant Ethnicity "
label(data2$symptoms___1)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fever)"
label(data2$symptoms___2)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=chills)"
label(data2$symptoms___3)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=congestion/rhinorrhea)"
label(data2$symptoms___4)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=cough)"
label(data2$symptoms___5)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=headache)"
label(data2$symptoms___6)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=sore throat)"
label(data2$symptoms___7)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=fatigue)"
label(data2$symptoms___8)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=arthralgias)"
label(data2$symptoms___9)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=myalgias)"
label(data2$symptoms___10)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=photophobia)"
label(data2$symptoms___11)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=vomiting)"
label(data2$symptoms___12)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=nausea)"
label(data2$symptoms___13)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=diarrhea)"
label(data2$symptoms___14)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=abdominal pain)"
label(data2$symptoms___15)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=loss of sense of taste or smell)"
label(data2$symptoms___17)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=shortness of breath (dyspnea))"
label(data2$symptoms___99)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=other)"
label(data2$symptoms___16)="Have you had any of the following symptoms in the past 14 days? Please check all that apply (choice=none)"
label(data2$other_symptom_describe)="Describe other symptom"
label(data2$symptom_onset)="What is the date of the earliest symptom onset?"
label(data2$symptom_length)="What is the length of symptoms in days?"
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
label(data2$med_conditions_other)="Other medical condition not listed above:"
label(data2$eat_drink)="Did you eat or drink anything in the last 15 minutes?"
label(data2$smoker)="Are you a current smoker?"
label(data2$smoked_last_hour)="If yes, have you smoked in the last hour?"
label(data2$alcohol_last)="When was the last time you had an alcoholic beverage?"
label(data2$alcohol_last_product)="When was the last time you used a product with alcohol in it such as mouthwash?"
label(data2$known_covid_exposure)="Have you been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data2$suspected_exposure)="Have you been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data2$exposure_source___1)="If you suspect you were exposed, was the exposure from : (choice=Someone at home/family member)"
label(data2$exposure_source___2)="If you suspect you were exposed, was the exposure from : (choice=Friend)"
label(data2$exposure_source___5)="If you suspect you were exposed, was the exposure from : (choice=Work/school)"
label(data2$exposure_source___4)="If you suspect you were exposed, was the exposure from : (choice=Other)"
label(data2$other_exposure_source)="Other exposure source:"
label(data2$covid_pos)="Have you tested positive for COVID-19 before?"
label(data2$covid_pos_dt)="If you tested positive for COVID-19, indicate date of test:"
label(data2$covid_pos_test)="If you tested positive for COVID-19, indicate type of test:"
label(data2$recd_vaccine)="Have you received any of the COVID-19 vaccines?"
label(data2$vaccine1_dt)="What date did you receive the first dose?"
label(data2$vaccine1_vaccine)="Which vaccine did you receive for your first dose?"
label(data2$recd_vaccine2)="Have you received a second dose?"
label(data2$vaccine2_dt)="What date did you receive the second dose?"
label(data2$vaccine2_vaccine)="Which vaccine did you receive for your second dose?"
label(data2$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data2$covid_result)="Result of clinical COVID test:"
label(data2$choa_mrn)="Patient MRN "
#Setting Units


#Setting Factors(will create new variable for factors)
data2$redcap_event_name.factor = factor(data2$redcap_event_name,levels=c("primary_studies_ba_arm_1","fatigue_study_base_arm_1","fatigue_study_fu_1_arm_1","fatigue_study_fu_2_arm_1"))
data2$redcap_repeat_instrument.factor = factor(data2$redcap_repeat_instrument,levels=c("lab_spreadsheet"))
data2$enrollment_location.factor = factor(data2$enrollment_location,levels=c("7","8","9","5","10","11","12","6"))
data2$hospital.factor = factor(data2$hospital,levels=c("1","2","3"))
data2$sex.factor = factor(data2$sex,levels=c("1","2"))
data2$race___1.factor = factor(data2$race___1,levels=c("0","1"))
data2$race___2.factor = factor(data2$race___2,levels=c("0","1"))
data2$race___3.factor = factor(data2$race___3,levels=c("0","1"))
data2$race___4.factor = factor(data2$race___4,levels=c("0","1"))
data2$race___88.factor = factor(data2$race___88,levels=c("0","1"))
data2$ethnicity.factor = factor(data2$ethnicity,levels=c("1","0","88"))
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
data2$eat_drink.factor = factor(data2$eat_drink,levels=c("1","0"))
data2$smoker.factor = factor(data2$smoker,levels=c("1","0"))
data2$smoked_last_hour.factor = factor(data2$smoked_last_hour,levels=c("1","0"))
data2$known_covid_exposure.factor = factor(data2$known_covid_exposure,levels=c("1","0","99"))
data2$suspected_exposure.factor = factor(data2$suspected_exposure,levels=c("1","0","99"))
data2$exposure_source___1.factor = factor(data2$exposure_source___1,levels=c("0","1"))
data2$exposure_source___2.factor = factor(data2$exposure_source___2,levels=c("0","1"))
data2$exposure_source___5.factor = factor(data2$exposure_source___5,levels=c("0","1"))
data2$exposure_source___4.factor = factor(data2$exposure_source___4,levels=c("0","1"))
data2$covid_pos.factor = factor(data2$covid_pos,levels=c("1","0"))
data2$covid_pos_test.factor = factor(data2$covid_pos_test,levels=c("1","2","3"))
data2$recd_vaccine.factor = factor(data2$recd_vaccine,levels=c("1","0"))
data2$vaccine1_vaccine.factor = factor(data2$vaccine1_vaccine,levels=c("1","2","3","4","5","9"))
data2$recd_vaccine2.factor = factor(data2$recd_vaccine2,levels=c("1","0"))
data2$vaccine2_vaccine.factor = factor(data2$vaccine2_vaccine,levels=c("1","2","3","4","5","9"))
data2$study_home_members.factor = factor(data2$study_home_members,levels=c("1","0"))
data2$covid_result.factor = factor(data2$covid_result,levels=c("1","0","99"))

levels(data2$redcap_event_name.factor)=c("Primary Studies: Baseline","Fatigue Study: Baseline","Fatigue Study: F/U 1 (4 Week)","Fatigue Study: F/U 2 (6 Week)")
levels(data2$redcap_repeat_instrument.factor)=c("Lab Spreadsheet")
levels(data2$enrollment_location.factor)=c("Hatchery","Northlake","Grady Zone 4","In-patient","Wesley Woods","Viral Solutions","APS","Other")
levels(data2$hospital.factor)=c("EUH","Grady","Other")
levels(data2$sex.factor)=c("Male","Female")
levels(data2$race___1.factor)=c("Unchecked","Checked")
levels(data2$race___2.factor)=c("Unchecked","Checked")
levels(data2$race___3.factor)=c("Unchecked","Checked")
levels(data2$race___4.factor)=c("Unchecked","Checked")
levels(data2$race___88.factor)=c("Unchecked","Checked")
levels(data2$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refused to answer")
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
levels(data2$eat_drink.factor)=c("Yes","No")
levels(data2$smoker.factor)=c("Yes","No")
levels(data2$smoked_last_hour.factor)=c("Yes","No")
levels(data2$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data2$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data2$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data2$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data2$exposure_source___5.factor)=c("Unchecked","Checked")
levels(data2$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data2$covid_pos.factor)=c("Yes","No")
levels(data2$covid_pos_test.factor)=c("PCR","Rapid/Antigen","Not sure")
levels(data2$recd_vaccine.factor)=c("Yes","No")
levels(data2$vaccine1_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data2$recd_vaccine2.factor)=c("Yes","No")
levels(data2$vaccine2_vaccine.factor)=c("Pfizer","Moderna","Johnson & Hohnson","AstraZenaca","Novavax","Not sure")
levels(data2$study_home_members.factor)=c("Yes","No")
levels(data2$covid_result.factor)=c("Positive","Negative","Undetermined")

#Read Data
data3=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-HemoglobinDemographi_DATA_2022-07-07_1551.csv')
#Setting Labels

label(data3$record_id)="Record ID"
label(data3$redcap_repeat_instrument)="Repeat Instrument"
label(data3$redcap_repeat_instance)="Repeat Instance"
label(data3$date_consent)="Date of Consent (or repeat visit date, if this is repeat instance)"
label(data3$sex)="Childs Sex at birth"
label(data3$race___1)="Child Race (choice=White)"
label(data3$race___2)="Child Race (choice=Black/African-American)"
label(data3$race___3)="Child Race (choice=Asian)"
label(data3$race___4)="Child Race (choice=Other)"
label(data3$race___99)="Child Race (choice=Refuse to Answer)"
label(data3$other_race)="Other race/ethnicity"
label(data3$ethnicity)="Child Ethnicity "
label(data3$address)="Home Mailing Address:"
label(data3$city)="City"
label(data3$state)="State:"
label(data3$zipcode)="Zipcode"
label(data3$phone)="Telephone Number:"
label(data3$days_last_sx)="If your child is currently symptomatic, how many days ago did the symptoms start?"
label(data3$symptoms___1)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fever)"
label(data3$symptoms___2)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Chills)"
label(data3$symptoms___3)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Congestion/runny nose (rhinorrhea))"
label(data3$symptoms___4)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Cough)"
label(data3$symptoms___5)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Headache)"
label(data3$symptoms___6)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Sore throat)"
label(data3$symptoms___7)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Fatigue)"
label(data3$symptoms___8)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Joint pain (arthralgias))"
label(data3$symptoms___9)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Muscle aches or pains (myalgias))"
label(data3$symptoms___10)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Light sensitivity (photophobia))"
label(data3$symptoms___11)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Vomiting)"
label(data3$symptoms___12)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Nausea)"
label(data3$symptoms___13)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Diarrhea)"
label(data3$symptoms___14)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Abdominal pain)"
label(data3$symptoms___15)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Loss of sense of taste or smell)"
label(data3$symptoms___17)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Shortness of Breath (dyspnea))"
label(data3$symptoms___99)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=Other)"
label(data3$symptoms___16)="Has your child had any of the following symptoms in the past 14 days? Please check all that apply (choice=None)"
label(data3$other_symptom_describe)="Describe other symptom"
label(data3$fever)="Duration of fever, days"
label(data3$chills)="Duration of chills, days"
label(data3$congestion)="Duration of congestion/runny nose (rinorrhea), days"
label(data3$cough)="Duration of cough, days"
label(data3$headache)="Duration of headache, days"
label(data3$sorethroat)="Duration of sore throat, days"
label(data3$fatigue)="Duration of fatigue,days"
label(data3$arthralgias)="Duration of Joint pain (arthralgias), days"
label(data3$myalgias)="Duration of muscle aches or pains (myalgias), days"
label(data3$photophobia)="Duration of light sensitivity (photobia), days"
label(data3$vomiting)="Duration of vomiting, days"
label(data3$nausea)="Duration of nausea, days"
label(data3$diarrhea)="Duration of diarrhea, days"
label(data3$abdominalpain)="Duration of abdominal pain, days"
label(data3$loss_taste_smell)="Duration of loss of sense of taste or smell, days"
label(data3$dyspnea)="Duration of shortness of breath, days"
label(data3$other_symptom)="Duration of [other_symptom_describe], days"
label(data3$symptom_onset)="What is the date of the earliest symptom onset?"
label(data3$first_sx_start)="How many days ago did your 1st symptom start?"
label(data3$med_conditions___1)="Does your child have any of the following conditions? Please check all that apply:  (choice=High blood pressure)"
label(data3$med_conditions___2)="Does your child have any of the following conditions? Please check all that apply:  (choice=Diabetes)"
label(data3$med_conditions___3)="Does your child have any of the following conditions? Please check all that apply:  (choice=Obesity (excess weight gain))"
label(data3$med_conditions___4)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Heart Disease)"
label(data3$med_conditions___5)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Lung Disease)"
label(data3$med_conditions___6)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Kidney Disease)"
label(data3$med_conditions___7)="Does your child have any of the following conditions? Please check all that apply:  (choice=Chronic Liver Disease)"
label(data3$med_conditions___8)="Does your child have any of the following conditions? Please check all that apply:  (choice=Hemoglobin diseases (e.g. sickle cell))"
label(data3$med_conditions___9)="Does your child have any of the following conditions? Please check all that apply:  (choice=Cancer)"
label(data3$med_conditions___10)="Does your child have any of the following conditions? Please check all that apply:  (choice=Immunosuppression (from transplant, chemotherapy, medications, or HIV))"
label(data3$med_conditions___11)="Does your child have any of the following conditions? Please check all that apply:  (choice=Other)"
label(data3$med_conditions___12)="Does your child have any of the following conditions? Please check all that apply:  (choice=None)"
label(data3$med_conditions_other)="Other medical condition not listed above:"
label(data3$known_covid_exposure)="Has your child been exposed to a KNOWN (tested positive) COVID-19 case?"
label(data3$suspected_exposure)="Has your child been exposed to someone who had symptoms of COVID-19 (suspected)?"
label(data3$exposure_source___1)="If you suspect your child was exposed, was the exposure from : (choice=Someone at home/family member)"
label(data3$exposure_source___2)="If you suspect your child was exposed, was the exposure from : (choice=Friend)"
label(data3$exposure_source___3)="If you suspect your child was exposed, was the exposure from : (choice=Camp/school)"
label(data3$exposure_source___4)="If you suspect your child was exposed, was the exposure from : (choice=Other)"
label(data3$other_exposure_source)="Other exposure source:"
label(data3$study_home_members)="Would you like to be contacted if there is a research study to test other members of your home?"
label(data3$ssb)="1. How has your childs consumption of sweet beverages changed (including sodas, juice and juice drinks, sports drinks, energy drinks, lemonade, sweet tea and coffee; Do not include diet drinks)?"
label(data3$physical_activity)="2. How has your childs physical activity changed?"
label(data3$child_weight)="3. Are you concerned about a change in your childs weight?"
label(data3$previous_covid)="1. 	Has your child tested positive for COVID-19 previously?  "
label(data3$date_positive)="When (date) did your child last test positive for COVID-19?"
label(data3$location_test)="Where did your child previously test positive for COVID-19"
label(data3$other_location_test)="Other testing location:"
label(data3$covid_vaccine)="2. Has your child received any of the COVID-19 vaccines?"
label(data3$vaccine)="Which vaccine?"
label(data3$other_vaccine)="Other vaccine:"
label(data3$doses)="How many vaccine doses has child received?"
label(data3$dose1_date)="When did child receive vaccine dose #1?"
label(data3$dose2_date)="When did child receive vaccine dose #2?:"
label(data3$date_consent_sp)="Fecha de Consentimiento (o fecha de visita)"
label(data3$sex_sp)="Sexo al Nacimiento: "
label(data3$race_sp___1)="Raza: (choice=Blanca)"
label(data3$race_sp___2)="Raza: (choice=Afroamericana)"
label(data3$race_sp___3)="Raza: (choice=Asi&#225tica)"
label(data3$race_sp___4)="Raza: (choice=Otro)"
label(data3$race_sp___99)="Raza: (choice=Prefiero no contestar)"
label(data3$other_race_sp)="Otra raza"
label(data3$ethnicity_sp)="Etnicidad:"
label(data3$address_sp)="Domicilio Postal:"
label(data3$city_sp)="Ciudad:"
label(data3$state_sp)="Estado:"
label(data3$zipcode_sp)="C&#243digo Postal:"
label(data3$phone_sp)="N&#250mero Telef&#243nico:"
label(data3$days_last_sx_sp)="Si actualmente tu hijo/a presenta síntomas, ¿desde hace cuántos días empezaron?"
label(data3$symptoms_sp___1)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fiebre)"
label(data3$symptoms_sp___2)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Escalofr&#237os)"
label(data3$symptoms_sp___3)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Congesti&#243n nasal/Escurrimiento nasal (Rinorrea))"
label(data3$symptoms_sp___4)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Tos)"
label(data3$symptoms_sp___5)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de cabeza)"
label(data3$symptoms_sp___6)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de garganta)"
label(data3$symptoms_sp___7)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Fatiga)"
label(data3$symptoms_sp___8)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor de articulaciones (artralgia))"
label(data3$symptoms_sp___9)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor muscular o corporal (Mialgia))"
label(data3$symptoms_sp___10)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Sensibilidad a la luz (Fotofobia))"
label(data3$symptoms_sp___11)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=V&#243mito)"
label(data3$symptoms_sp___12)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Nausea)"
label(data3$symptoms_sp___13)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Diarrea)"
label(data3$symptoms_sp___14)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dolor abdominal)"
label(data3$symptoms_sp___15)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=P&#233rdida del olfato o sabor)"
label(data3$symptoms_sp___17)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Dificultad para respirar (disnea))"
label(data3$symptoms_sp___99)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Otro)"
label(data3$symptoms_sp___16)="¿Ha presentado tu hijo/a alguno de los siguientes síntomas en los últimos 14 días? Marque todos los que correspondan. (choice=Ninguno)"
label(data3$other_symptom_describe_sp)="Describe el Otro s&#237ntoma:"
label(data3$fever_sp)="Duraci&#243n de la fiebre, d&#237as:"
label(data3$chills_sp)="Duraci&#243n de los escalofr&#237os, d&#237as"
label(data3$congestion_sp)="Duraci&#243n de la congesti&#243n nasal/escurrimiento nasal (rinorrea), d&#237as"
label(data3$cough_sp)="Duraci&#243n de la tos, d&#237as "
label(data3$headache_sp)="Duraci&#243n del dolor de cabeza, d&#237as "
label(data3$sorethroat_sp)="Duraci&#243n del dolor de garganta, d&#237as"
label(data3$fatigue_sp)="Duraci&#243n de la fatiga,  d&#237as"
label(data3$arthralgias_sp)="Duraci&#243n del dolor de articulaciones (artralgias), d&#237as"
label(data3$myalgias_sp)="Duraci&#243n del dolor muscular o corporal (mialgias), d&#237as"
label(data3$photophobia_sp)="Duraci&#243n de la sensibilidad a la luz (fotofobia), d&#237as"
label(data3$vomiting_sp)="Duraci&#243n del v&#243mito, d&#237as"
label(data3$nausea_sp)="Duraci&#243n de la n&#225usea, d&#237as"
label(data3$diarrhea_sp)="Duraci&#243n de la diarrea, d&#237as"
label(data3$abdominalpain_sp)="Duraci&#243n del dolor abdominal, d&#237as"
label(data3$loss_taste_smell_sp)="Duraci&#243n de la p&#233rdida del olfato o sabor, d&#237as"
label(data3$dyspnea_sp)="Duraci&#243n de dificultad de respirar, d&#237as"
label(data3$other_symptom_sp)="Duraci&#243n [other_symptom_describe], d&#237as"
label(data3$symptom_onset_sp)="¿Cuál es la fecha cuando empezaron los primeros síntomas? "
label(data3$first_sx_start_sp)="¿Hace cu&#225ntos d&#237as tuviste tu primer s&#237ntoma?"
label(data3$med_conditions_sp___1)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Presi&#243n elevada (Hipertensi&#243n))"
label(data3$med_conditions_sp___2)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Diabetes)"
label(data3$med_conditions_sp___3)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Obesidad (exceso de aumento de peso))"
label(data3$med_conditions_sp___4)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Card&#237aca Cr&#243nica)"
label(data3$med_conditions_sp___5)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Pulmonar Cr&#243nica)"
label(data3$med_conditions_sp___6)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Renal Cr&#243nica)"
label(data3$med_conditions_sp___7)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedad Hep&#225tica Cr&#243nica)"
label(data3$med_conditions_sp___8)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Enfermedades de la Hemoglobina (ej. enfermedad de c&#233lulas falciformes))"
label(data3$med_conditions_sp___9)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=C&#225ncer)"
label(data3$med_conditions_sp___10)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Inmunosupresi&#243n (por transplantes, quimioterapia, medicamentos, o VIH))"
label(data3$med_conditions_sp___11)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Otro)"
label(data3$med_conditions_sp___12)="¿Padece tu hijo/a algunas de estas enfermedades cr&#243nicas? Marca todas las que apliquen: (choice=Ninguna)"
label(data3$med_conditions_other_sp)="Alguna otra condici&#243n m&#233dica no mencionada anteriormente:"
label(data3$known_covid_exposure_sp)="¿Ha tenido tu hijo/hija contacto o estado expuesto/a un caso CONFIRMADO (prueba positiva) de COVID-19?"
label(data3$suspected_exposure_sp)="¿Ha estado tu hijo/a expuesto/a o tenido contacto con alguien quien haya tenido sí de COVID-19 (caso sospechoso)?"
label(data3$exposure_source_sp___1)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Alguien en la casa/miembro de la familia)"
label(data3$exposure_source_sp___2)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Amigo)"
label(data3$exposure_source_sp___3)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Campamento/escuela)"
label(data3$exposure_source_sp___4)="Si sospechas que tu hijo/a estuvo expuesto/a, la exposici&#243n vino de: (choice=Otro)"
label(data3$other_exposure_source_sp)="Otra fuente de exposici&#243n:"
label(data3$study_home_members_sp)="¿Te gustaría que te contactáramos si contamos con un estudio de investigación donde busquemos hacer la prueba de COVID-19 en otros miembros de tu hogar?"
label(data3$ssb_sp)="1. ¿Cómo ha cambiado la ingesta de bebidas azucaradas de tu hijo/a (incluyendo sodas, jugo, bebidas deportivas, bebidas energéticas, limonada, té azucarado, café; sin incluir bebidas dietéticas)?"
label(data3$physical_activity_sp)="2. ¿Cómo ha cambiado la actividad física de tu hijo/a?"
label(data3$child_weight_sp)="3. ¿Estás preocupado de cambios en el peso de tu hijo/a?"
label(data3$previous_covid_sp)="1. ¿Su hijo/a ha tenido un resultado positivo al COVID-19 anteriormente? "
label(data3$date_positive_sp)="Cuando (fecha) recibio su hijo/hija un resultado positivo de COVID-19:"
label(data3$location_test_sp)="¿Donde recibio un resultado positivo ? "
label(data3$other_location_test_sp)="Otro sitio de pruebas:"
label(data3$covid_vaccine_sp)="2. ¿Su hijo/a ya recibió alguna de las vacunas de COVID-19? "
label(data3$vaccine_sp)="¿Cuál de ellas? :"
label(data3$other_vaccine_sp)="Cual otra vacuna:"
label(data3$doses_sp)="¿Cuántas dosis? "
label(data3$dose1_date_sp)="¿Cuando recibio la primera dosis (dosis #1):    "
label(data3$dose2_date_sp)="¿Cuando recibio la segunda dosis (dosis #2):   "
#Setting Units


#Setting Factors(will create new variable for factors)
data3$sex.factor = factor(data3$sex,levels=c("1","2"))
data3$race___1.factor = factor(data3$race___1,levels=c("0","1"))
data3$race___2.factor = factor(data3$race___2,levels=c("0","1"))
data3$race___3.factor = factor(data3$race___3,levels=c("0","1"))
data3$race___4.factor = factor(data3$race___4,levels=c("0","1"))
data3$race___99.factor = factor(data3$race___99,levels=c("0","1"))
data3$ethnicity.factor = factor(data3$ethnicity,levels=c("1","0","99"))
data3$days_last_sx.factor = factor(data3$days_last_sx,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$symptoms___1.factor = factor(data3$symptoms___1,levels=c("0","1"))
data3$symptoms___2.factor = factor(data3$symptoms___2,levels=c("0","1"))
data3$symptoms___3.factor = factor(data3$symptoms___3,levels=c("0","1"))
data3$symptoms___4.factor = factor(data3$symptoms___4,levels=c("0","1"))
data3$symptoms___5.factor = factor(data3$symptoms___5,levels=c("0","1"))
data3$symptoms___6.factor = factor(data3$symptoms___6,levels=c("0","1"))
data3$symptoms___7.factor = factor(data3$symptoms___7,levels=c("0","1"))
data3$symptoms___8.factor = factor(data3$symptoms___8,levels=c("0","1"))
data3$symptoms___9.factor = factor(data3$symptoms___9,levels=c("0","1"))
data3$symptoms___10.factor = factor(data3$symptoms___10,levels=c("0","1"))
data3$symptoms___11.factor = factor(data3$symptoms___11,levels=c("0","1"))
data3$symptoms___12.factor = factor(data3$symptoms___12,levels=c("0","1"))
data3$symptoms___13.factor = factor(data3$symptoms___13,levels=c("0","1"))
data3$symptoms___14.factor = factor(data3$symptoms___14,levels=c("0","1"))
data3$symptoms___15.factor = factor(data3$symptoms___15,levels=c("0","1"))
data3$symptoms___17.factor = factor(data3$symptoms___17,levels=c("0","1"))
data3$symptoms___99.factor = factor(data3$symptoms___99,levels=c("0","1"))
data3$symptoms___16.factor = factor(data3$symptoms___16,levels=c("0","1"))
data3$fever.factor = factor(data3$fever,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$chills.factor = factor(data3$chills,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$congestion.factor = factor(data3$congestion,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$cough.factor = factor(data3$cough,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$headache.factor = factor(data3$headache,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$sorethroat.factor = factor(data3$sorethroat,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$fatigue.factor = factor(data3$fatigue,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$arthralgias.factor = factor(data3$arthralgias,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$myalgias.factor = factor(data3$myalgias,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$photophobia.factor = factor(data3$photophobia,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$vomiting.factor = factor(data3$vomiting,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$nausea.factor = factor(data3$nausea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$diarrhea.factor = factor(data3$diarrhea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$abdominalpain.factor = factor(data3$abdominalpain,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$loss_taste_smell.factor = factor(data3$loss_taste_smell,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$dyspnea.factor = factor(data3$dyspnea,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$other_symptom.factor = factor(data3$other_symptom,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$first_sx_start.factor = factor(data3$first_sx_start,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data3$med_conditions___1.factor = factor(data3$med_conditions___1,levels=c("0","1"))
data3$med_conditions___2.factor = factor(data3$med_conditions___2,levels=c("0","1"))
data3$med_conditions___3.factor = factor(data3$med_conditions___3,levels=c("0","1"))
data3$med_conditions___4.factor = factor(data3$med_conditions___4,levels=c("0","1"))
data3$med_conditions___5.factor = factor(data3$med_conditions___5,levels=c("0","1"))
data3$med_conditions___6.factor = factor(data3$med_conditions___6,levels=c("0","1"))
data3$med_conditions___7.factor = factor(data3$med_conditions___7,levels=c("0","1"))
data3$med_conditions___8.factor = factor(data3$med_conditions___8,levels=c("0","1"))
data3$med_conditions___9.factor = factor(data3$med_conditions___9,levels=c("0","1"))
data3$med_conditions___10.factor = factor(data3$med_conditions___10,levels=c("0","1"))
data3$med_conditions___11.factor = factor(data3$med_conditions___11,levels=c("0","1"))
data3$med_conditions___12.factor = factor(data3$med_conditions___12,levels=c("0","1"))
data3$known_covid_exposure.factor = factor(data3$known_covid_exposure,levels=c("1","0","99"))
data3$suspected_exposure.factor = factor(data3$suspected_exposure,levels=c("1","0","99"))
data3$exposure_source___1.factor = factor(data3$exposure_source___1,levels=c("0","1"))
data3$exposure_source___2.factor = factor(data3$exposure_source___2,levels=c("0","1"))
data3$exposure_source___3.factor = factor(data3$exposure_source___3,levels=c("0","1"))
data3$exposure_source___4.factor = factor(data3$exposure_source___4,levels=c("0","1"))
data3$study_home_members.factor = factor(data3$study_home_members,levels=c("1","0"))
data3$ssb.factor = factor(data3$ssb,levels=c("1","2","3","4","5"))
data3$physical_activity.factor = factor(data3$physical_activity,levels=c("1","2","3","4","5"))
data3$child_weight.factor = factor(data3$child_weight,levels=c("1","2","3","4"))
data3$previous_covid.factor = factor(data3$previous_covid,levels=c("1","0","99"))
data3$location_test.factor = factor(data3$location_test,levels=c("1","2","3","4","5"))
data3$covid_vaccine.factor = factor(data3$covid_vaccine,levels=c("1","0","99"))
data3$vaccine.factor = factor(data3$vaccine,levels=c("1","2","3","4","99"))
data3$doses.factor = factor(data3$doses,levels=c("1","2"))
data3$sex_sp.factor = factor(data3$sex_sp,levels=c("1","2"))
data3$race_sp___1.factor = factor(data3$race_sp___1,levels=c("0","1"))
data3$race_sp___2.factor = factor(data3$race_sp___2,levels=c("0","1"))
data3$race_sp___3.factor = factor(data3$race_sp___3,levels=c("0","1"))
data3$race_sp___4.factor = factor(data3$race_sp___4,levels=c("0","1"))
data3$race_sp___99.factor = factor(data3$race_sp___99,levels=c("0","1"))
data3$ethnicity_sp.factor = factor(data3$ethnicity_sp,levels=c("1","0","99"))
data3$days_last_sx_sp.factor = factor(data3$days_last_sx_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$symptoms_sp___1.factor = factor(data3$symptoms_sp___1,levels=c("0","1"))
data3$symptoms_sp___2.factor = factor(data3$symptoms_sp___2,levels=c("0","1"))
data3$symptoms_sp___3.factor = factor(data3$symptoms_sp___3,levels=c("0","1"))
data3$symptoms_sp___4.factor = factor(data3$symptoms_sp___4,levels=c("0","1"))
data3$symptoms_sp___5.factor = factor(data3$symptoms_sp___5,levels=c("0","1"))
data3$symptoms_sp___6.factor = factor(data3$symptoms_sp___6,levels=c("0","1"))
data3$symptoms_sp___7.factor = factor(data3$symptoms_sp___7,levels=c("0","1"))
data3$symptoms_sp___8.factor = factor(data3$symptoms_sp___8,levels=c("0","1"))
data3$symptoms_sp___9.factor = factor(data3$symptoms_sp___9,levels=c("0","1"))
data3$symptoms_sp___10.factor = factor(data3$symptoms_sp___10,levels=c("0","1"))
data3$symptoms_sp___11.factor = factor(data3$symptoms_sp___11,levels=c("0","1"))
data3$symptoms_sp___12.factor = factor(data3$symptoms_sp___12,levels=c("0","1"))
data3$symptoms_sp___13.factor = factor(data3$symptoms_sp___13,levels=c("0","1"))
data3$symptoms_sp___14.factor = factor(data3$symptoms_sp___14,levels=c("0","1"))
data3$symptoms_sp___15.factor = factor(data3$symptoms_sp___15,levels=c("0","1"))
data3$symptoms_sp___17.factor = factor(data3$symptoms_sp___17,levels=c("0","1"))
data3$symptoms_sp___99.factor = factor(data3$symptoms_sp___99,levels=c("0","1"))
data3$symptoms_sp___16.factor = factor(data3$symptoms_sp___16,levels=c("0","1"))
data3$fever_sp.factor = factor(data3$fever_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$chills_sp.factor = factor(data3$chills_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$congestion_sp.factor = factor(data3$congestion_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$cough_sp.factor = factor(data3$cough_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$headache_sp.factor = factor(data3$headache_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$sorethroat_sp.factor = factor(data3$sorethroat_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$fatigue_sp.factor = factor(data3$fatigue_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$arthralgias_sp.factor = factor(data3$arthralgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$myalgias_sp.factor = factor(data3$myalgias_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$photophobia_sp.factor = factor(data3$photophobia_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$vomiting_sp.factor = factor(data3$vomiting_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$nausea_sp.factor = factor(data3$nausea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$diarrhea_sp.factor = factor(data3$diarrhea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$abdominalpain_sp.factor = factor(data3$abdominalpain_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$loss_taste_smell_sp.factor = factor(data3$loss_taste_smell_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$dyspnea_sp.factor = factor(data3$dyspnea_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$other_symptom_sp.factor = factor(data3$other_symptom_sp,levels=c("1","2","3","4","5","6","7","8","9","10","11","12","13","14","15"))
data3$first_sx_start_sp.factor = factor(data3$first_sx_start_sp,levels=c("0","1","2","3","4","5","6","7","8","9","10","11","12","13","14","15","16"))
data3$med_conditions_sp___1.factor = factor(data3$med_conditions_sp___1,levels=c("0","1"))
data3$med_conditions_sp___2.factor = factor(data3$med_conditions_sp___2,levels=c("0","1"))
data3$med_conditions_sp___3.factor = factor(data3$med_conditions_sp___3,levels=c("0","1"))
data3$med_conditions_sp___4.factor = factor(data3$med_conditions_sp___4,levels=c("0","1"))
data3$med_conditions_sp___5.factor = factor(data3$med_conditions_sp___5,levels=c("0","1"))
data3$med_conditions_sp___6.factor = factor(data3$med_conditions_sp___6,levels=c("0","1"))
data3$med_conditions_sp___7.factor = factor(data3$med_conditions_sp___7,levels=c("0","1"))
data3$med_conditions_sp___8.factor = factor(data3$med_conditions_sp___8,levels=c("0","1"))
data3$med_conditions_sp___9.factor = factor(data3$med_conditions_sp___9,levels=c("0","1"))
data3$med_conditions_sp___10.factor = factor(data3$med_conditions_sp___10,levels=c("0","1"))
data3$med_conditions_sp___11.factor = factor(data3$med_conditions_sp___11,levels=c("0","1"))
data3$med_conditions_sp___12.factor = factor(data3$med_conditions_sp___12,levels=c("0","1"))
data3$known_covid_exposure_sp.factor = factor(data3$known_covid_exposure_sp,levels=c("1","0","99"))
data3$suspected_exposure_sp.factor = factor(data3$suspected_exposure_sp,levels=c("1","0","99"))
data3$exposure_source_sp___1.factor = factor(data3$exposure_source_sp___1,levels=c("0","1"))
data3$exposure_source_sp___2.factor = factor(data3$exposure_source_sp___2,levels=c("0","1"))
data3$exposure_source_sp___3.factor = factor(data3$exposure_source_sp___3,levels=c("0","1"))
data3$exposure_source_sp___4.factor = factor(data3$exposure_source_sp___4,levels=c("0","1"))
data3$study_home_members_sp.factor = factor(data3$study_home_members_sp,levels=c("1","0"))
data3$ssb_sp.factor = factor(data3$ssb_sp,levels=c("1","2","3","4","5"))
data3$physical_activity_sp.factor = factor(data3$physical_activity_sp,levels=c("1","2","3","4","5"))
data3$child_weight_sp.factor = factor(data3$child_weight_sp,levels=c("1","2","3","4"))
data3$previous_covid_sp.factor = factor(data3$previous_covid_sp,levels=c("1","0","99"))
data3$location_test_sp.factor = factor(data3$location_test_sp,levels=c("1","2","3","4","5"))
data3$covid_vaccine_sp.factor = factor(data3$covid_vaccine_sp,levels=c("1","0","99"))
data3$vaccine_sp.factor = factor(data3$vaccine_sp,levels=c("1","2","3","4","99"))
data3$doses_sp.factor = factor(data3$doses_sp,levels=c("1","2"))

levels(data3$sex.factor)=c("Male","Female")
levels(data3$race___1.factor)=c("Unchecked","Checked")
levels(data3$race___2.factor)=c("Unchecked","Checked")
levels(data3$race___3.factor)=c("Unchecked","Checked")
levels(data3$race___4.factor)=c("Unchecked","Checked")
levels(data3$race___99.factor)=c("Unchecked","Checked")
levels(data3$ethnicity.factor)=c("Hispanic","Non-Hispanic","Refuse to Answer")
levels(data3$days_last_sx.factor)=c("No symptoms currently","1 day ago","2 days ago","3 days ago","4 days ago","5 days ago","6 days ago","7 days ago","8 days ago","9 days ago","10 days ago","11 days ago","12 days ago","13 days ago","14 days ago",">14 days ago (> 2 weeks)")
levels(data3$symptoms___1.factor)=c("Unchecked","Checked")
levels(data3$symptoms___2.factor)=c("Unchecked","Checked")
levels(data3$symptoms___3.factor)=c("Unchecked","Checked")
levels(data3$symptoms___4.factor)=c("Unchecked","Checked")
levels(data3$symptoms___5.factor)=c("Unchecked","Checked")
levels(data3$symptoms___6.factor)=c("Unchecked","Checked")
levels(data3$symptoms___7.factor)=c("Unchecked","Checked")
levels(data3$symptoms___8.factor)=c("Unchecked","Checked")
levels(data3$symptoms___9.factor)=c("Unchecked","Checked")
levels(data3$symptoms___10.factor)=c("Unchecked","Checked")
levels(data3$symptoms___11.factor)=c("Unchecked","Checked")
levels(data3$symptoms___12.factor)=c("Unchecked","Checked")
levels(data3$symptoms___13.factor)=c("Unchecked","Checked")
levels(data3$symptoms___14.factor)=c("Unchecked","Checked")
levels(data3$symptoms___15.factor)=c("Unchecked","Checked")
levels(data3$symptoms___17.factor)=c("Unchecked","Checked")
levels(data3$symptoms___99.factor)=c("Unchecked","Checked")
levels(data3$symptoms___16.factor)=c("Unchecked","Checked")
levels(data3$fever.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$chills.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$congestion.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$cough.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$headache.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$sorethroat.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$fatigue.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$arthralgias.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$myalgias.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$photophobia.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$vomiting.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$nausea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$diarrhea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$abdominalpain.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$loss_taste_smell.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$dyspnea.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$other_symptom.factor)=c("1 day","2 days","3 days","4 days","5 days","6 days","7 days","8 days","9 days","10 days","11 days","12 days","13 days","14 days",">14 days (>2 weeks)")
levels(data3$first_sx_start.factor)=c("Today","1 day ago","2 days ago","3 days ago","4 days ago","5 days ago","6 days ago","7 days ago","8 days ago","9 days ago","10 days ago","11 days ago","12 days ago","13 days ago","14 days ago",">14 days ago","I dont know/dont remember")
levels(data3$med_conditions___1.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___2.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___3.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___4.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___5.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___6.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___7.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___8.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___9.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___10.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___11.factor)=c("Unchecked","Checked")
levels(data3$med_conditions___12.factor)=c("Unchecked","Checked")
levels(data3$known_covid_exposure.factor)=c("Yes","No","I dont know")
levels(data3$suspected_exposure.factor)=c("Yes","No","I dont know")
levels(data3$exposure_source___1.factor)=c("Unchecked","Checked")
levels(data3$exposure_source___2.factor)=c("Unchecked","Checked")
levels(data3$exposure_source___3.factor)=c("Unchecked","Checked")
levels(data3$exposure_source___4.factor)=c("Unchecked","Checked")
levels(data3$study_home_members.factor)=c("Yes","No")
levels(data3$ssb.factor)=c("a. Increased","b. Decreased","c. Stayed the same","d. Dont know","e. No response")
levels(data3$physical_activity.factor)=c("a. Increased","b. Decreased","c. Stayed the same","d. Dont know","e. No response")
levels(data3$child_weight.factor)=c("a. Yes, because he/she appears to be gaining more weight than they should","b. Yes, because he/she appears to be losing weight","c. No, Im not concerned","d. No response")
levels(data3$previous_covid.factor)=c("Yes","No","Unknown")
levels(data3$location_test.factor)=c("CHOA","Public Health Testing Site","Pediatrician","Pharmacy","Other Testing Location")
levels(data3$covid_vaccine.factor)=c("Yes","No","I dont know")
levels(data3$vaccine.factor)=c("Pfizer","Moderna","Johnson and Johnson","Other","I dont know")
levels(data3$doses.factor)=c("1 dose","2 doses")
levels(data3$sex_sp.factor)=c("Masculino","Femenino")
levels(data3$race_sp___1.factor)=c("Unchecked","Checked")
levels(data3$race_sp___2.factor)=c("Unchecked","Checked")
levels(data3$race_sp___3.factor)=c("Unchecked","Checked")
levels(data3$race_sp___4.factor)=c("Unchecked","Checked")
levels(data3$race_sp___99.factor)=c("Unchecked","Checked")
levels(data3$ethnicity_sp.factor)=c("Hispano","No Hispano","Prefiero no contestar")
levels(data3$days_last_sx_sp.factor)=c("No presenta s&#237ntomas","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$symptoms_sp___1.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___2.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___3.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___4.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___5.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___6.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___7.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___8.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___9.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___10.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___11.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___12.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___13.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___14.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___15.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___17.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___99.factor)=c("Unchecked","Checked")
levels(data3$symptoms_sp___16.factor)=c("Unchecked","Checked")
levels(data3$fever_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$chills_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$congestion_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$cough_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$headache_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$sorethroat_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$fatigue_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$arthralgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$myalgias_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$photophobia_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$vomiting_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$nausea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$diarrhea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$abdominalpain_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$loss_taste_smell_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$dyspnea_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$other_symptom_sp.factor)=c("1 d&#237a","2 d&#237as","3 d&#237as","4 d&#237as","5 d&#237as","6 d&#237as","7 d&#237as","8 d&#237as","9 d&#237as","10 d&#237as","11 d&#237as","12 d&#237as","13 d&#237as","14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)")
levels(data3$first_sx_start_sp.factor)=c("Hoy","Hace 1 d&#237a","Hace 2 d&#237as","Hace 3 d&#237as","Hace 4 d&#237as","Hace 5 d&#237as","Hace 6 d&#237as","Hace 7 d&#237as","Hace 8 d&#237as","Hace 9 d&#237as","Hace 10 d&#237as","Hace 11 d&#237as","Hace 12 d&#237as","Hace 13 d&#237as","Hace 14 d&#237as","M&#225s de 14 d&#237as (>2 semanas)","No recuerdo/No s&#233")
levels(data3$med_conditions_sp___1.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___2.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___3.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___4.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___5.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___6.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___7.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___8.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___9.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___10.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___11.factor)=c("Unchecked","Checked")
levels(data3$med_conditions_sp___12.factor)=c("Unchecked","Checked")
levels(data3$known_covid_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data3$suspected_exposure_sp.factor)=c("S&#237","No","No s&#233")
levels(data3$exposure_source_sp___1.factor)=c("Unchecked","Checked")
levels(data3$exposure_source_sp___2.factor)=c("Unchecked","Checked")
levels(data3$exposure_source_sp___3.factor)=c("Unchecked","Checked")
levels(data3$exposure_source_sp___4.factor)=c("Unchecked","Checked")
levels(data3$study_home_members_sp.factor)=c("Yes","No")
levels(data3$ssb_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data3$physical_activity_sp.factor)=c("a. Aumentado","b. Disminuido","c. Se ha mantenido igual","d. No sé","e. Sin respuesta")
levels(data3$child_weight_sp.factor)=c("a. Sí, porque él/ella parece ha aumentado de peso más de lo que debería","b. Sí, parece que él/ella está perdiendo peso","c. No, no estoy preocupado","d. Sin respuesta")
levels(data3$previous_covid_sp.factor)=c("Si","No","No sé.")
levels(data3$location_test_sp.factor)=c("CHOA (Childrens Healthcare of Atlanta)","Public Health Testing site (Sitio/centro de pruebas de salud pública)","Pediatra","Farmacia","Otro sitio de pruebas")
levels(data3$covid_vaccine_sp.factor)=c("Si","No","No sé.")
levels(data3$vaccine_sp.factor)=c("Pfizer","Moderna","Johnson and Johnson","Otra","No sé")
levels(data3$doses_sp.factor)=c("1 dosis","2 dosis")

#Read Data
data4=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-PositiveTestsTestRes_DATA_2022-07-07_1534.csv')
#Setting Labels

label(data4$record_id)="Record ID"
label(data4$redcap_repeat_instrument)="Repeat Instrument"
label(data4$redcap_repeat_instance)="Repeat Instance"
label(data4$covid_result)="Result of clinical COVID test:"
#Setting Units


#Setting Factors(will create new variable for factors)
data4$covid_result.factor = factor(data4$covid_result,levels=c("1","0","99","88"))

levels(data4$covid_result.factor)=c("Positive","Negative","Undetermined (inconclusive)","Test Not Performed")

#Read Data
data5=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//RADxTestingTheTestsT-DemographicsPullAgeE_DATA_2022-07-12_1627.csv')
#Setting Labels

label(data5$record_id)="Record ID"
label(data5$redcap_repeat_instrument)="Repeat Instrument"
label(data5$redcap_repeat_instance)="Repeat Instance"
label(data5$dob)="Child Date of Birth"
label(data5$age_years)="Child Age in years"
label(data5$age_years2)="Child age in years"
label(data5$choa_mrn)="Patient CHOA MRN (CID)"
#Setting Units

data6=read.csv('C://Users//rbparso//OneDrive - Emory University//Emory//Datasets//hemoglobin_diagnosis.csv')

remove_repeat = c()
for (i in 1:nrow(data3)) {
   if (is.na(data3$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data3 = data3[-remove_repeat,]
for (i in 1:nrow(data3)) {
   if (data3[i,4] == "" & data3[i,91] != "") {
      data3[i,4] = data3[i,91]
   }
}
for (j in c(92:177)) {
   for (i in 1:nrow(data3)) { 
      if (is.na(data3[i,j-87])) {
         data3[i,j-87] = data3[i,j]
      }
   }
}
for (j in c(249:319)) {
   levels(data3[,j-71]) = c(levels(data3[,j-71]), levels(data3[,j]))
   for (i in 1:nrow(data3)) {
      if (data3[i,j-71] == "" | is.na(data3[i,j-71])) {
         data3[i,j-71] = data3[i,j] 
      }
   }
}

remove_repeat = c()
for (i in 1:nrow(data4)) {
   if (is.na(data4$redcap_repeat_instance[i])) {
      remove_repeat = c(remove_repeat, i)
   }
}
data4 = data4[-remove_repeat,]
data_comb3 = merge(data3, data4, by=c("record_id", "redcap_repeat_instance")) 
data_comb2 = merge(data5, data_comb3, by="record_id")

data2$choa_mrn = sub("^0+","",data2$choa_mrn)

for (i in 1:nrow(data)) {
   if (!is.na(data$med_conditions___8[i])) {
      if (data$med_conditions___8[i] == 0) {
         data$sickle_cell[i] = "No"
      } else {
         data$sickle_cell[i] = "Unsure"
      }
   } else {
      data$sickle_cell[i] = "Unsure"
   }
}
for (i in 1:nrow(data2)) {
   if (!is.na(data2$med_conditions___8[i])) {
      if (data2$med_conditions___8[i] == 0) {
         data2$sickle_cell[i] = "No"
      } else {
         data2$sickle_cell[i] = "Unsure"
      }
   } else {
      data2$sickle_cell[i] = "Unsure"
   }
}
for (i in 1:nrow(data_comb2)) {
   if (!is.na(data_comb2$med_conditions___8[i])) {
      if (data_comb2$med_conditions___8[i] == 0) {
         data_comb2$sickle_cell[i] = "No"
      } else {
         data_comb2$sickle_cell[i] = "Unsure"
      }
   } else {
      data_comb2$sickle_cell[i] = "Unsure"
   }
}


for (i in 1:nrow(data6)) {
   if (data6$Medical.Record.Number..MRN[i] != "") {
      radx = which(data$patient_mrn == data6$Medical.Record.Number..MRN[i] |
                   data$adult_mrn == data6$Medical.Record.Number..MRN[i])
      at3 = which(data2$choa_mrn == data6$Medical.Record.Number..MRN[i])
      pt3 = which(data_comb2$choa_mrn == data6$Medical.Record.Number..MRN[i])
      if (length(radx) > 0) {
         data$sickle_cell[radx] = data6$Sickle.Cell[i]
      } else if (length(at3) > 0) {
         data2$sickle_cell[at3] = data6$Sickle.Cell[i]
      } else if (length(pt3) > 0) {
         data_comb2$sickle_cell[pt3] = data6$Sickle.Cell[i]
      }
   }  else {
      record = which(data$record_id == data6$Record.ID[i])
      data$sickle_cell[record] = data6$Sickle.Cell[i]
   } 
}

data$sickle_cell = as.factor(data$sickle_cell)
data2$sickle_cell = as.factor(data2$sickle_cell)
data_comb2$sickle_cell = as.factor(data_comb2$sickle_cell)

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

levels(data2$recd_vaccine2.factor)=c(levels(data2$recd_vaccine2.factor),"1 dose","2 doses")
for (i in 1:length(data2$recd_vaccine2.factor)) {
   if (data2$recd_vaccine2.factor[i] == "Yes" & !is.na(data2$recd_vaccine2.factor[i])) {
      data2$recd_vaccine2.factor[i] = "2 doses"
   } else if ((data2$recd_vaccine2.factor[i] == "No" & !is.na(data2$recd_vaccine2.factor[i])) & (data2$recd_vaccine.factor[i] == "Yes" & !is.na(data2$recd_vaccine.factor[i]))) {
      data2$recd_vaccine2.factor[i] = "1 dose"
   } else {
      data2$recd_vaccine2.factor[i] = NA
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

data2$status.factor = as.factor(c(rep(NA, nrow(data2))))
levels(data2$status.factor) = c("Unvaccinated", "Partially Vaccinated", 
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data2)) {
  if (data2$recd_vaccine.factor[i] == "No" & !is.na(data2$recd_vaccine.factor[i])) {
    data2$status.factor[i] = "Unvaccinated"
  }
  else if (!is.na(data2$recd_vaccine.factor[i])) {
    if (!is.na(data2$vaccine1_vaccine.factor[i])) {
      if (data2$vaccine1_vaccine.factor[i] == "Pfizer" | 
          data2$vaccine1_vaccine.factor[i] == "Moderna") {
        if (data2$recd_vaccine2.factor[i] == "1 dose" & 
            !is.na(data2$recd_vaccine2.factor[i])) {
          data2$status.factor[i] = "Partially Vaccinated"
        }
        else if (data2$recd_vaccine2.factor[i] == "2 doses" & 
                 !is.na(data2$recd_vaccine2.factor[i])) {
          data2$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      } else if (data2$recd_vaccine2.factor[i] == "2 doses" & 
                !is.na(data2$recd_vaccine2.factor[i])) {
         data2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data2$vaccine1_vaccine.factor[i] == "Johnson and Hohnson") {
        data2$status.factor[i] = "Fully Vaccinated/Boosted"
      }
    }
  }
}

data$status.factor = as.factor(c(rep(NA, nrow(data))))
levels(data$status.factor) = c("Unvaccinated", "Partially Vaccinated", 
       "Fully Vaccinated/Boosted")
for (i in 1:nrow(data)) {
  if (data$covid_vaccine.factor[i] == "No" &
      !is.na(data$covid_vaccine.factor[i])) {
    data$status.factor[i] = "Unvaccinated"
  }
  else {
    if (!is.na(data$vaccine.factor[i])) {
      if (data$vaccine.factor[i] == "Johnson and Johnson") {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
      } else {
        if (data$doses.factor[i] == "1 dose" & !is.na(data$doses.factor[i]) & 
                 data$vaccine.factor[i] != "I dont know") {
          data$status.factor[i] = "Partially Vaccinated"
        }
        else if (data$doses.factor[i] != "1 dose" & !is.na(data$doses.factor[i])) {
          data$status.factor[i] = "Fully Vaccinated/Boosted"
        }
      }
    }
    else {
      if (data$doses.factor[i] == "1 dose" & 
          !is.na(data$doses.factor[i])) {
        if (data$dose1_vaccine.factor[i] == "Johnson and Johnson") {
          data$status.factor[i] = "Fully Vaccinated/Boosted"
        } else if (!is.na(data$dose1_vaccine.factor[i]) &
                   data$dose1_vaccine.factor[i] != "I dont know") {
          data$status.factor[i] = "Partially Vaccinated"
        }
      }
      else if (data$doses.factor[i] == "2 doses" & 
               !is.na(data$doses.factor[i])) {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
      }
      else if (data$doses.factor[i] == "3 doses" & 
               !is.na(data$doses.factor[i])) {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
      } 
      else if (data$doses.factor[i] == "4 doses" & 
               !is.na(data$doses.factor[i])) {
        data$status.factor[i] = "Fully Vaccinated/Boosted"
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

data2$race___99 = data2$race___88
data2$race___99.factor = data2$race___88.factor
data2$previous_covid = data2$covid_pos
data_comb2$smoker = rep(NA, nrow(data_comb2))
data_comb2$smoker.factor = rep(NA, nrow(data_comb2))
data_comb2$alcohol_last = rep("", nrow(data_comb2))
names12 = intersect(names(data), names(data2))
names123 = intersect(names12, names(data_comb2))

data_sel = data[,names123]
data2_sel = data2[,names123]
data3_sel = data_comb2[,names123]

data_comb = rbind(data2_sel, data_sel, data3_sel)
dataset = data_comb[order(data_comb$date_consent, data_comb$age_years),]
write.csv(dataset, "C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_compare.csv")

for (i in 1:nrow(data_comb)) {
   if (!is.na(sum(data_comb[i,13:29])) & sum(data_comb[i,13:29]) >= 1) {
      data_comb$symptomatic[i] = "Symptomatic"
   } else if (!is.na(sum(data_comb[i,13:29])) & sum(data_comb[i,13:29]) == 0 | (data_comb[i,30] == 1 & !is.na(data_comb[i,30]))) {
      data_comb$symptomatic[i] = "Asymptomatic"
   } else {
      data_comb$symptomatic[i] = NA
   }
}

for (i in 1:nrow(data_comb)) {
   if (!is.na(data_comb$age_years[i]) & data_comb$age_years[i] >= 16) {
      data_comb$age_grp[i] = "At Least 16 Years of Age"
   } else if (!is.na(data_comb$age_years[i]) & data_comb$age_years[i] < 16) {
      data_comb$age_grp[i] = "Less Than 16 Years of Age"
   } else {
      data_comb$age_grp[i] = NA
   }
}

for (i in 1:nrow(data_comb)) {
   data_comb$num_of_symptoms[i] = sum(data_comb[i,13:29], na.rm=TRUE)
}
for (i in 1:nrow(data_comb)) {
   if (!is.na(sum(data_comb[i,33:43])) & sum(data_comb[i,33:43]) > 1) {
      data_comb$comorbid[i] = "Yes"
   } else if (!is.na(sum(data_comb[i,33:43])) & sum(data_comb[i,33:43]) <= 1 | (data_comb[i,44] == 1 & !is.na(data_comb[i,44]))) {
      data_comb$comorbid[i] = "No"
   } else {
      data_comb$comorbid[i] = NA
   }
}
for (i in 1:nrow(data_comb)) {
   if (data_comb$alcohol_last[i] != "") {
      data_comb$alcohol[i] = "Yes"
   } else {
      data_comb$alcohol[i] = "No"
   }
}

#data_comb$alcohol = as.numeric(as.character(data_comb$alcohol))
for (i in 1:nrow(data_comb)) {
   if (data_comb$covid_result.factor[i] == "Positive" & !is.na(data_comb$covid_result.factor[i])) {
     data_comb$covid_result.factor[i] = "POSITIVE"
   } else if (data_comb$covid_result.factor[i] == "Negative" & !is.na(data_comb$covid_result.factor[i])) {
     data_comb$covid_result.factor[i] = "NEGATIVE"
   }
}

for (i in 1:nrow(data_comb)) {
   data_comb$num_of_symptoms[i] = sum(data_comb[i,c(13:29)], na.rm=TRUE)
   if (data_comb$num_of_symptoms[i] == 0) {
      data_comb$symptom_category[i] = "0"
   } else if (data_comb$num_of_symptoms[i] == 1 |
              data_comb$num_of_symptoms[i] == 2) {
      data_comb$symptom_category[i] = "1-2"
   } else if (data_comb$num_of_symptoms[i] == 3 |
              data_comb$num_of_symptoms[i] == 4) {
      data_comb$symptom_category[i] = "3-4"
   } else {
      data_comb$symptom_category[i] = "5+"
   }
}

library(dplyr)
symptom_count = rep(0, 18)

symptom_name = c("Fever", "Chills", "Congestion/Runny Nose", "Cough", "Headache", "Sore Throat", "Fatigue Pain",
                 "Joints Pain", "Muscle Aches/Pains", "Light Sensitivity", "Vomiting", "Nausea", "Diarrhea",
                 "Abdominal Pain", "Loss of Sense of Taste or Smell", "Shortness of Breath", "Other", "None")
for (i in 1:length(symptom_count)) {
   symptom_count[i] = count(data_comb, data_comb[,i+63])[2,2]
}
symptom_name[which(symptom_count == max(symptom_count))]

both = 0
for (i in 1:nrow(data_comb)) {
   if (data_comb$race___1[i] == 1 & data_comb$ethnicity[i] == 0 & !is.na(data_comb$ethnicity[i])) {
      data_comb$nh_white[i] = "Non-Hispanic White"
      data_comb$nh_black[i] = "Not Non-Hispanic Black"
      both = 1
   } 
   if (data_comb$race___2[i] == 1 & data_comb$ethnicity[i] == 0 & !is.na(data_comb$ethnicity[i])) {
      data_comb$nh_black[i] = "Non-Hispanic Black"
      if (both != 1) {
         data_comb$nh_white[i] = "Not Non-Hispanic White"
      }
   } 
   if (is.na(data_comb$race___1[i]) | is.na(data_comb$race___2[i]) | is.na(data_comb$ethnicity[i])) {
      data_comb$nh_white[i] = NA
      data_comb$nh_black[i] = NA
   } 
   if ((data_comb$race___1[i] == 1 & !is.na(data_comb$race___1[i]) |
       (data_comb$race___2[i] == 1 & !is.na(data_comb$race___2[i]))) &
       (data_comb$ethnicity[i] == 1 & !is.na(data_comb$ethnicity[i]))) {
      data_comb$nh_white[i] = "Not Non-Hispanic White"
      data_comb$nh_black[i] = "Not Non-Hispanic Black"
   }
   if ((data_comb$race___1[i] == 0 & !is.na(data_comb$race___1[i])) &
       (data_comb$race___2[i] == 0 & !is.na(data_comb$race___2[i])) |
       (data_comb$ethnicity[i] == 1 & !is.na(data_comb$ethnicity[i]))) {
      data_comb$nh_white[i] = "Not Non-Hispanic White"
      data_comb$nh_black[i] = "Not Non-Hispanic Black"
   }
   both = 0
}

for (i in 1:nrow(data_comb)) {
   if (sum(data_comb[i,6:9]) <= 1 & !is.na(sum(data_comb[i,6:9]))) {
      if (data_comb$race___1[i] == 1 & data_comb$ethnicity[i] == 0 & !is.na(data_comb$ethnicity[i])) {
         data_comb$race[i] = "Non-Hispanic White"
      } else if (data_comb$race___2[i] == 1 & data_comb$ethnicity[i] == 0 & !is.na(data_comb$ethnicity[i])) {
         data_comb$race[i] = "Non-Hispanic Black"
      } else if (data_comb$race___3[i] == 1 & !is.na(data_comb$race___3[i])) {
         data_comb$race[i] = "Asian"
      } else if (data_comb$race___4[i] == 1 & !is.na(data_comb$race___4[i])) {
         data_comb$race[i] = "Other"
      } else if (data_comb$race___99[i] == 1 & !is.na(data_comb$race___99[i])) {
         data_comb$race[i] = "Refuse to Answer"
      } else {
        data_comb$race[i] = NA
      }
   } else if (sum(data_comb[i,6:9]) > 1 & !is.na(sum(data_comb[i,6:9]))) {
      data_comb$race[i] = "More Than 1 Race"
   } else {
      data_comb$race[i] = NA
   }
}
data_comb$race = factor(data_comb$race, levels=c("Non-Hispanic White", "Non-Hispanic Black",
                                                 "Asian", "Other", "More Than 1 Race", "Refuse to Answer"))

for (i in 1:nrow(data_comb)) {
   if (data_comb$race[i] == "Non-Hispanic White" & !is.na(data_comb$race[i])) {
      data_comb$wht.factor[i] = "Checked"
      data_comb$blk.factor[i] = "Unchecked"
      data_comb$asn.factor[i] = "Unchecked"
      data_comb$oth.factor[i] = "Unchecked"
      data_comb$mto.factor[i] = "Unchecked"
      data_comb$ref.factor[i] = "Unchecked"
   } else if (data_comb$race[i] == "Non-Hispanic Black" & !is.na(data_comb$race[i])) {
      data_comb$wht.factor[i] = "Unchecked"
      data_comb$blk.factor[i] = "Checked"
      data_comb$asn.factor[i] = "Unchecked"
      data_comb$oth.factor[i] = "Unchecked"
      data_comb$mto.factor[i] = "Unchecked"
      data_comb$ref.factor[i] = "Unchecked"
   } else if (data_comb$race[i] == "Asian" & !is.na(data_comb$race[i])) {
      data_comb$wht.factor[i] = "Unchecked"
      data_comb$blk.factor[i] = "Unchecked"
      data_comb$asn.factor[i] = "Checked"
      data_comb$oth.factor[i] = "Unchecked"
      data_comb$mto.factor[i] = "Unchecked"
      data_comb$ref.factor[i] = "Unchecked"
   } else if (data_comb$race[i] == "Other" & !is.na(data_comb$race[i])) {
      data_comb$wht.factor[i] = "Unchecked"
      data_comb$blk.factor[i] = "Unchecked"
      data_comb$asn.factor[i] = "Unchecked"
      data_comb$oth.factor[i] = "Checked"
      data_comb$mto.factor[i] = "Unchecked"
      data_comb$ref.factor[i] = "Unchecked"
   } else if (data_comb$race[i] == "More Than 1 Race" & !is.na(data_comb$race[i])) {
      data_comb$wht.factor[i] = "Unchecked"
      data_comb$blk.factor[i] = "Unchecked"
      data_comb$asn.factor[i] = "Unchecked"
      data_comb$oth.factor[i] = "Unchecked"
      data_comb$mto.factor[i] = "Checked"
      data_comb$ref.factor[i] = "Unchecked"
   } else if (data_comb$race___99.factor[i] == "Checked" & !is.na(data_comb$race___99.factor[i])) {
      data_comb$wht.factor[i] = "Unchecked"
      data_comb$blk.factor[i] = "Unchecked"
      data_comb$asn.factor[i] = "Unchecked"
      data_comb$oth.factor[i] = "Unchecked"
      data_comb$mto.factor[i] = "Unchecked"
      data_comb$ref.factor[i] = "Checked"
   } else {
      data_comb$wht.factor[i] = NA
      data_comb$blk.factor[i] = NA
      data_comb$asn.factor[i] = NA
      data_comb$oth.factor[i] = NA
      data_comb$mto.factor[i] = NA
      data_comb$ref.factor[i] = NA
   }
}

data_hb = data_comb[which(data_comb$med_conditions___8 == 1),]

symptom_hb_count = rep(0,18)
for (i in 1:length(symptom_hb_count)) {
   symptom_hb_count[i] = count(data_hb, data_hb[,i+63])[2,2]
}
symptom_name[which(symptom_hb_count == max(symptom_hb_count))]

data_sc = data_comb[which(data_comb$sickle_cell == "Yes"),]

symptom_sc_count = rep(0,18)
for (i in 1:length(symptom_sc_count)) {
   symptom_sc_count[i] = 26-count(data_sc, data_sc[,i+63])[1,2]
}
symptom_name[which(symptom_sc_count == max(symptom_sc_count))]

data_non_hb = data_comb[-which(data_comb$med_conditions___8 == 1),]
data_non_w = data_comb[which(data_comb$race___2 == 0),]
data_blk = data_comb[which(data_comb$race___2 == 1),]
mean(data_hb$age_years)
mean(data_non_hb$age_years, na.rm=TRUE)
data_comb$sickle_cell = relevel(data_comb$sickle_cell, "Yes")
data_blk$sickle_cell = relevel(data_blk$sickle_cell, "Yes")
data_hb$sickle_cell = relevel(data_hb$sickle_cell, "Yes")

data_comb$med_conditions___8.factor = relevel(data_comb$med_conditions___8.factor, "Checked")
data_comb$race___3.factor = relevel(data_comb$race___3.factor, "Checked")
data_comb$symptomatic = as.factor(data_comb$symptomatic)
data_comb$alcohol = as.factor(data_comb$alcohol)
data_comb$status.factor = as.factor(data_comb$status.factor)
data_comb$comorbid = as.factor(data_comb$comorbid)
data_comb$ethnicity = as.factor(data_comb$ethnicity)
data_comb$symptomatic = relevel(data_comb$symptomatic, "Symptomatic")
data_comb$alcohol = relevel(data_comb$alcohol, "Yes")
data_comb$status.factor = relevel(data_comb$status.factor, "Fully Vaccinated/Boosted")
data_comb$comorbid = relevel(data_comb$comorbid, "Yes")
data_comb$ethnicity = relevel(data_comb$ethnicity, "1")

library(dplyr)
hb_age = table(data_comb$age_grp, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_sex = table(data_comb$sex.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_rac = table(data_comb$race, data_comb$med_conditions___8.factor)[1:5,1:2]
hb_wht = table(data_comb$wht.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_blk = table(data_comb$blk.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_asn = table(data_comb$asn.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_oth = table(data_comb$oth.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_mto = table(data_comb$mto.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_ref = table(data_comb$ref.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_wht2 = table(data_comb$nh_white, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_blk2 = table(data_comb$nh_black, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_asn2 = table(data_comb$race___3.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_oth2 = table(data_comb$race___4.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_ref2 = table(data_comb$race___99.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_eth = table(data_comb$ethnicity, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_sym = table(data_comb$symptomatic, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_sym_num = table(data_comb$symptom_category, data_comb$med_conditions___8.factor)[1:2,]
hb_cmb = table(data_comb$comorbid, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_smk = table(data_comb$smoker.factor, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_alc = table(data_comb$alcohol, data_comb$med_conditions___8.factor)[1:2,1:2]
hb_vac = table(data_comb$status.factor, data_comb$med_conditions___8.factor)[1:3,1:2]
hb_pos_nw = table(data_non_w$covid_result.factor, data_non_w$med_conditions___8.factor)[1:2,1:2]
ss_pos = table(data_comb$sickle_cell, data_comb$covid_result.factor)[c(1,2),c(1,2)]
ss_blk = table(data_blk$sickle_cell, data_blk$covid_result.factor)[c(1,2),c(1,2)]
ss_hb = table(data_hb$sickle_cell, data_hb$covid_result.factor)[c(1,2),c(1,2)]

chisq_age = fisher.test(hb_age)
chisq_sex = fisher.test(hb_sex)
chisq_rac = fisher.test(hb_rac)
chisq_wht = fisher.test(hb_wht)
chisq_blk = fisher.test(hb_blk)
chisq_asn = fisher.test(hb_asn)
chisq_oth = fisher.test(hb_oth)
chisq_mto = fisher.test(hb_mto)
chisq_ref = fisher.test(hb_ref)
chisq_wht2 = fisher.test(hb_wht2)
chisq_wht2
chisq_blk2 = fisher.test(hb_blk2)
chisq_blk2
chisq_asn2 = fisher.test(hb_asn2)
chisq_oth2 = fisher.test(hb_oth2)
chisq_ref2 = fisher.test(hb_ref2)
chisq_eth = fisher.test(hb_eth)
chisq_sym = fisher.test(hb_sym)
chisq_sym_num = fisher.test(hb_sym_num)
chisq_cmb = fisher.test(hb_cmb)
chisq_cmb
chisq_smk = fisher.test(hb_smk)
chisq_alc = fisher.test(hb_alc)
chisq_vac = fisher.test(hb_vac)
chisq_pos_nw = fisher.test(hb_pos_nw)
chisq_ss_pos = fisher.test(ss_pos)
chisq_ss_pos
chisq_ss_blk = fisher.test(ss_blk)
chisq_ss_blk
chisq_ss_hb = fisher.test(ss_hb)
chisq_ss_hb

library(rcompanion)
cv_age = round(cramerV(hb_age),3)
cv_sex = round(cramerV(hb_sex),3)
cv_rac = round(cramerV(hb_rac),3)
cv_wht = round(cramerV(hb_wht),3)
cv_blk = round(cramerV(hb_blk),3)
cv_asn = round(cramerV(hb_asn),3)
cv_oth = round(cramerV(hb_oth),3)
cv_mto = round(cramerV(hb_mto),3)
cv_ref = round(cramerV(hb_ref),3)
round(cramerV(hb_wht2),3)
round(cramerV(hb_blk2),3)
cv_eth = round(cramerV(hb_eth),3)
cv_sym = round(cramerV(hb_sym),3)
cv_sym_num = round(cramerV(hb_sym_num),3)
cv_cmb = round(cramerV(hb_cmb),3)
cv_smk = round(cramerV(hb_smk),3)
cv_alc = round(cramerV(hb_alc),3)
cv_vac = round(cramerV(hb_vac),3)
cv_hb_pos_nw = round(cramerV(hb_pos_nw),3)
cv_ss_pos = round(cramerV(ss_pos),3)
cv_ss_blk = round(cramerV(ss_blk),3)
cv_ss_hb = round(cramerV(ss_hb),3)

variables = c("Age Group", "Sex", "Race", "", "", "", "", "Ethnicity", "Symptom Status",
              "Comorbidity Presence", "Vaccine Status", "", "")
categories = c("At Least 16 Years of Age", "Male", "Non-Hispanic White", "Non-Hispanic Black",
               "Asian", "Other", "More Than 1 Race", "Hispanic", "Symptomatic", "Yes", 
               "At Least Fully Vaccinated", "Unvaccinated", "Partially Vaccinated")
no_hb = c(hb_age[1,1], hb_sex[1,1], hb_wht[1,1], hb_blk[1,1], hb_asn[1,1],
          hb_oth[1,1], hb_mto[1,1], hb_eth[1,1], hb_sym[1,1], hb_cmb[1,1], hb_vac[1,1], 
          hb_vac[2,1], hb_vac[3,1])
no_pct = c(hb_age[1,1]/43, hb_sex[1,1]/43, hb_wht[1,1]/43, hb_blk[1,1]/43, hb_asn[1,1]/43,
          hb_oth[1,1]/43, hb_mto[1,1]/43, hb_eth[1,1]/43, hb_sym[1,1]/43, hb_cmb[1,1]/43, hb_vac[1,1]/43, 
          hb_vac[2,1]/43, hb_vac[3,1]/43)
yes_pct = c(hb_age[1,2]/10446, hb_sex[1,2]/10446, hb_wht[1,2]/10446, hb_blk[1,2]/10446, 
          hb_asn[1,2]/10446, hb_oth[1,2]/10446, hb_mto[1,2]/10446, hb_eth[1,2]/10446, hb_sym[1,2]/10446, 
          hb_cmb[1,2]/10446, hb_vac[1,2]/10446, hb_vac[2,2]/10446, hb_vac[3,2]/10446)
yes_hb = c(hb_age[1,2], hb_sex[1,2], hb_wht[1,2], hb_blk[1,2], hb_asn[1,2],
          hb_oth[1,2], hb_mto[1,2], hb_eth[1,2], hb_sym[1,2], hb_cmb[1,2],
          hb_vac[1,2], hb_vac[2,2], hb_vac[3,2])
p_values = c(round(chisq_age$p,3), round(chisq_sex$p,3), round(chisq_wht$p,3),
             round(chisq_blk$p,3), round(chisq_asn$p,3), round(chisq_oth$p,3), 
             round(chisq_mto$p,3), round(chisq_eth$p,3), 
             round(chisq_sym$p,3), round(chisq_cmb$p,3), round(chisq_vac$p,3), "", "")
lower = c(round(chisq_age$conf[1],3), round(chisq_sex$conf[1],3), round(chisq_wht$conf[1],3), round(chisq_blk$conf[1],3), 
          round(chisq_asn$conf[1],3), round(chisq_oth$conf[1],3), round(chisq_mto$conf[1],3), round(chisq_eth$conf[1],3), 
          round(chisq_sym$conf[1],3), round(chisq_cmb$conf[1],3), "", "", "")
upper = c(round(chisq_age$conf[2],3), round(chisq_sex$conf[2],3), round(chisq_wht$conf[2],3), round(chisq_blk$conf[2],3), 
          round(chisq_asn$conf[2],3), round(chisq_oth$conf[2],3), round(chisq_mto$conf[2],3), round(chisq_eth$conf[2],3), 
          round(chisq_sym$conf[2],3), round(chisq_cmb$conf[2],3), "", "", "")
cramer_v = c(cv_age, cv_sex, cv_wht, cv_blk, cv_asn, cv_oth, cv_mto, cv_eth, cv_sym,
             cv_cmb, cv_vac, "", "")
hb_mat = matrix(c(variables, categories, no_hb, no_pct, yes_hb, yes_pct, p_values, lower, upper, cramer_v), ncol=10)
hb_dat = as.data.frame(hb_mat)
colnames(hb_dat) = c("", "", "Hemoglobin Count (n = 43)", "Percentage", "No Hemoglobin Count (n = 10446)", 
                     "Percentage", "Fisher's Test Two-Sided P-value", "95% Confidence Interval Lower Tail",
                     "95% Confidence Interval Upper Tail", "Effect Size (Cramer's V)")
library(r2rtf)
library(dplyr)
hb_dat %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_dat.rtf")

variables2 = c("Age Group", "Sex", "Race", "", "", "", "", "Ethnicity", "Symptom Status",
              "Comorbidity Presence", "Vaccine Status", "", "")
categories2 = c("At Least 16 Years of Age", "Male", "Non-Hispanic White", "Non-Hispanic Black",
               "Asian", "Other", "More Than 1 Race", "Hispanic", "Symptomatic", "Yes", 
               "At Least Fully Vaccinated", "Unvaccinated", "Partially Vaccinated")
no_hb2 = c(hb_age[1,1], hb_sex[1,1], hb_rac[1,1], hb_rac[2,1], hb_rac[3,1],
          hb_rac[4,1], hb_rac[5,1], hb_eth[1,1], hb_sym[1,1], hb_cmb[1,1], hb_vac[1,1], 
          hb_vac[2,1], hb_vac[3,1])
no_pct2 = c(hb_age[1,1]/43, hb_sex[1,1]/43, hb_rac[1,1]/43, hb_rac[2,1]/43, hb_rac[3,1]/43,
          hb_rac[4,1]/43, hb_rac[5,1]/43, hb_eth[1,1]/43, hb_sym[1,1]/43, hb_cmb[1,1]/43, hb_vac[1,1]/43, 
          hb_vac[2,1]/43, hb_vac[3,1]/43)
yes_pct2 = c(hb_age[1,2]/10446, hb_sex[1,2]/10446, hb_rac[1,2]/10446, hb_rac[2,2]/10446, 
          hb_rac[3,2]/10446, hb_rac[4,2]/10446, hb_rac[5,2]/10446, hb_eth[1,2]/10446, hb_sym[1,2]/10446, 
          hb_cmb[1,2]/10446, hb_vac[1,2]/10446, hb_vac[2,2]/10446, hb_vac[3,2]/10446)
yes_hb2 = c(hb_age[1,2], hb_sex[1,2], hb_rac[1,2], hb_rac[2,2], hb_rac[3,2],
          hb_rac[4,2], hb_rac[5,2], hb_eth[1,2], hb_sym[1,2], hb_cmb[1,2],
          hb_vac[1,2], hb_vac[2,2], hb_vac[3,2])
p_values2 = c(round(chisq_age$p,3), round(chisq_sex$p,3), round(chisq_rac$p,3), "",
             "", "", "", round(chisq_eth$p,3), 
             round(chisq_sym$p,3), round(chisq_cmb$p,3), round(chisq_vac$p,3), "", "")
lower2 = c(round(chisq_age$conf[1],3), round(chisq_sex$conf[1],3), "", "", 
          "", "", "", round(chisq_eth$conf[1],3), 
          round(chisq_sym$conf[1],3), round(chisq_cmb$conf[1],3), "", "", "")
upper2 = c(round(chisq_age$conf[2],3), round(chisq_sex$conf[2],3), "", "", 
          "", "", "", round(chisq_eth$conf[2],3), 
          round(chisq_sym$conf[2],3), round(chisq_cmb$conf[2],3), "", "", "")
cramer_v2 = c(cv_age, cv_sex, cv_rac, "", "", "", "", cv_eth, cv_sym,
             cv_cmb, cv_vac, "", "")
hb_mat2 = matrix(c(variables2, categories2, no_hb2, no_pct2, yes_hb2, yes_pct2, p_values2, lower2, upper2, cramer_v2), ncol=10)
hb_dat2 = as.data.frame(hb_mat2)
colnames(hb_dat2) = c("", "", "Hemoglobin Count (n = 43)", "Percentage", "No Hemoglobin Count (n = 10446)", 
                     "Percentage", "Fisher's Test Two-Sided P-value", "95% Confidence Interval Lower Tail",
                     "95% Confidence Interval Upper Tail", "Effect Size (Cramer's V)")
library(r2rtf)
library(dplyr)
hb_dat2 %>%
  rtf_body() %>%
  rtf_encode() %>%
  write_rtf(file="C://Users//rbparso//OneDrive - Emory University//Emory//Output//hb_dat2.rtf")

matrix(c(symptom_name, symptom_hb_count),ncol=2)
matrix(c(symptom_name, symptom_sc_count),ncol=2)
for (i in 1:nrow(data_sc)) {
   print(sum(data_sc[i,13:29]))
}
count(data_hb, data_hb$med_conditions___5.factor == "Checked" & data_hb$sickle_cell == "Yes")
count(data_hb, data_hb$med_conditions___6.factor == "Checked" & data_hb$sickle_cell == "Yes")