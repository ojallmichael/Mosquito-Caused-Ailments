; Mosquito Caused Diseases Recommender System
; By - OJALL MICHAEL OMONDI

(deffacts certainty
        (slot disease)
        (slot disease-name)
        (slot general-symptoms)
        (slot specific-symptoms))
(deftemplate Pathogen (slot PathogenType))
(deftemplate Symptom (slot symptomsType))


(deffacts certainty
        (disease)(Malaria)(general-symptoms: headache, nausea, vomiting, Diarrhea, Fever)
                        (specific-symptoms: Confusion, Coma, Neurological Focal Signs, Severe Anaemia, Respiratory difficulties)
                        (Certainty-Factor: 0.8)
        (disease)(Dengue Fever)(general-symptoms: Fever, Nausea, Vomiting, Rash, Aches and pains, Leukopenia, Positive Tourniquet test)
                        (specific-symptoms:Persistent vomiting, Ascites, Mucosal Bleeding, Lethargy, restlessness, Liver enlargement) 
                        (Certainty-Factor:0.75 )
        (disease)(African Sleeping Sickness)(general-symptoms:Fever, Headache, Fatigue, swollen lymph nodes, muscles pain, Joints pain, Insomnia)
                        (specific-symptoms: Insomnia, Malaise, Intermittent Fever, Itchy skin, swollen lymphs)
                        (Certainty-Factor: 0.62 )
        (disease)(Yellow Fever)(general-symptoms:Fever, Headaches, Nausea, Vomiting, Dizziness, Conjunctivitis, Muscle aches)
                        (specific-symptoms:Jaundice, Conjunctivitis)
                        (Certainty-Factor:0.91 )
        (disease)(Zika Fever)(general-symptoms:Fever, Nausea, Vomiting, Rash, Muscle aches and pains)
                        (specific-symptoms: Blood in stool and urine)
                        (Certainty-Factor: 0.84 )
        (disease)(Chikungunya)(general-symptoms: Fever, Headache, Fatigue, swollen lymph nodes, muscles pain, Joints pain, skin rashes)
                        (specific-symptoms: Painful and swollen joints,Exfoliated skin)
                        (Certainty-Factor: 0.78 )
        (disease)(Tularemia)(general-symptoms:Skin ulcer, swollen lymph nodes, severe headaches,Fever,Fatigue)
                        (specific-symptoms:High fever,Fatigue,triggered convulsions)
                        (Certainty-Factor:0.69 )
        (disease)(Filariasis)(general-symptoms: Lymphadenopathy, Fever, Skin exfoliation, Testicular pain, lymphedema)
                        (specific-symptoms: Lymphadenopathy, lymphedema,Testicular pain)
                        (Certainty-Factor:0.92 ))

(defrule Ask_Questions
  =>
  ; asking the most common symptoms
  (printout t "" crlf)
  (printout t "============= Mosquito Borne Diseases Identification Recommender System =============" crlf)
  (printout t "" crlf)
  (printout t "The system matches patient symptoms with the facts stored about a particular diseases." crlf)
  (printout t "" crlf)
  (printout t "                   Answer the questions with a Yes or No " crlf)
  (printout t "--------------------------------------------------------------------------------------" crlf)

  (printout t "          01. Do you suffer from a high fever? (Yes | No) " 
 " Your Answer: " )
  (bind  ?Answer(readline))
  (assert(Fever(readline)))

  (printout t "          02. Do you suffer from a headache? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Headache(readline)))

  (printout t "          03. Do you have convulsions? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Convulsions(readline)))
 
  (printout t "          04. Do you have nausea? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Nausea(readline)))

  (printout t "          05. Do you experience muscle pains? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Muscle_Pain(readline)))

  (printout t "          06. Do you have a rash? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Rash(readline)))

  (printout t "          07. Do you have painful joint pains? (Yes | No) " 
 " Your Answer: " )
(bind  ?Answer(readline))
  (assert(JointPains(readline)))

  (printout t "          08. Do you feel fatigued? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Fatigue(readline)))

  (printout t "          09. Do you have malaise? (Yes | No) " 
 " Your Answer: " )
(bind  ?Answer(readline))
  (assert(Malaise(readline)))
  
  (printout t "          10. Do you experience temporal loss of sight? ( Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Sightloss(readline)))
  
  (printout t "          11. Does the patient show signs of mental retardation? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Mental_Retardation(readline)))
  
  (printout t "          12. Does the patient have loss of appetite? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Loss_Of_Appetite(readline)))
  
  (printout t "          13. Does the patient have arthritis? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Arthritis(readline)))
  
  (printout t "          14. Does the patient have yellow skin? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(YellowSkin(readline)))
  
  (printout t "You might be suffering from Yellow Fever" crlf)
  
  (printout t "          15. Does the patient exhibit any unusual bleeding? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Bleeding(readline)))
  
  (printout t "          16. Does the patient seem disoriented? (Yes | No) " 
 " Your Answer: " )
 (bind  ?Answer(readline))
  (assert(Disorientation(readline)))


  ; Diagnosis based on the selected symptoms

  (printout t "" crlf)
  (printout t "                           Diagnosis Based On Selected Symptoms" crlf)
  (printout t "========================================================================================================================================================" crlf)
  (printout t "  " crlf)
  (printout t "Assumption: The patient could possibly exhibit either one or all of the symptoms."crlf)
  (printout t "" crlf)
  (printout t "" crlf)

  (printout t "                  Diagnosis Module Based On The Patient Combined Symptoms." crlf)
  (printout t "      ------------------------------------------------------------------------------------------------" crlf)
   (printout t " " crlf)
  (printout t "1. Malaria_Diagnosis" crlf)
  (printout t "---------------------------------------------------------------------------------------------------------------------------------------" crlf)  
  (printout t "                  First Symptoms: Fever, Chills, Sweats, Headaches, Muscle pain, Nausea and Vomiting." crlf) 
  (printout t "                  Clinical Findings: Confusion, Coma, Neurological Focal Signs, Severe Anaemia, Respiratory difficulties." crlf)
  (printout t "                  To be confirmed by a laboratory test for Malaria."crlf) 
  (printout t "   Treatment:     Treatment consists of anti-parasitics."crlf)
  (printout t "   Advise:        When travelling to malaria prone areas is take protective drugs before," crlf) 
  (printout t "                  during and after their trip. Treatment includes antimalarial drugs." crlf)
  (printout t "" crlf crlf)
  (printout t "2. Dengue Fever Diagnosis." crlf)
  (printout t "----------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "                  Laboratory Diagnosis - Isolation of the virus, using serological tests or molecular methods." crlf)
  (printout t "   Dengue Without Warning Signs." crlf)
  (printout t "                  Fever, Nausea, Vomiting, Rash, Aches and pains, Leukopenia, Positive Tourniquet test." crlf)
  (printout t "   Dengue With Warning Signs(Severe Dengue)." crlf)
  (printout t "                  Persistent vomiting, Clinical Fluid Accumulation(ascites, pleural effusion), Mucosal Bleeding, Lethargy, restlessness, Liver enlargement" crlf)
  (printout t "   Treatment:     Treatment consists of pain medications fluids and pain relievers." crlf)
  (printout t "   Medication:    Analgesic that relieves pain." crlf)
  (printout t "   SuppCare:      Fluid replacement, Can be self healing, Oral rehydration therapy, IV Fluids directly into a vein." crlf)
   (printout t "  Advise:        For severe case seek professional help" crlf)
  (printout t "" crlf crlf)
  (printout t "3. Trypanosomiasis_Sleeping Sickness Diagnosis" crlf)
  (printout t "------------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "   Symptoms:      Intermittent fevers, Headaches, Muscle and Joint aches, Malaise, Itchy skin,swollen lymph nodes, and Weight loss." crlf)
  (printout t "   Laboratory Diagnosis." crlf)
  (printout t "                  Finding parasite in body fluid or tissue by microscopy examination" crlf)
  (printout t "                  Cerebrospinal fluid examination as choice of treatment depends on disease stage." crlf)
  (printout t "   Treatment:     Consists of Anti-parasitics drugs which is used to kill the parasites." crlf)
  (printout t "   Medication:    Anti-Parasites, Enzyme Inhibitors" crlf)
  (printout t "   SuppCare:      " crlf)
  (printout t "   Advise:        Consultation with a professional doctor highly recommended." crlf)
  (printout t "" crlf crlf)
  (printout t "4. Yellow Fever Diagnosis." crlf)
  (printout t "-------------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "   Diagnosis." crlf)
  (printout t "                  Is based on laboratory testing, a person’s symptoms, and travel history." crlf)
  (printout t "   Symptoms :     Sudden onset of fever, Chills, Severe headache, Back pain, General body aches," crlf)
  (printout t "                  Nausea, Vomiting, Fatigue (feeling tired), Weakness" crlf)
  (printout t "                  Most people with the initial symptoms improve within one week." crlf)
  (printout t "                  For some people who recover, weakness and fatigue (feeling tired) might last several months." crlf)
  (printout t "   Treatment:     Consists of fluids as there's no specific treatment for the disease that exist." crlf)
  (printout t "                  Efforts focus on managing symptoms and limiting complications." crlf)
  (printout t "   Medication:    None." crlf)
  (printout t "   SuppCare:      Oral Rehydration Therapy by giving fluid by mouth to treat dehydration caused by diarrhea." crlf)
  (printout t "   Advise  :      Consult a doctor for medical advice." crlf)
  (printout t "" crlf crlf)
  (printout t "5. Zika Fever Diagnosis." crlf)
  (printout t "---------------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "   Diagnosis:     Infection with Zika virus may be suspected based on symptoms of persons living in or visiting" crlf)
  (printout t "                  areas with Zika virus transmission and/or Aedes mosquito vectors." crlf)
  (printout t "                  A diagnosis of Zika virus infection can only be confirmed by laboratory tests of blood or other" crlf)
  (printout t "                  body fluids, such as urine or semen." crlf)
  (printout t "   Treatment:     There's no vaccine or *specific treatment." crlf)
  (printout t "                  Focus is on relieving symptoms and includes rest, rehydration and acetaminophen for fever and pain." crlf)
  (printout t "   Medication:    Aspirin, Non-Steroidal and Anti-Inflammatory drugs (NSAIDs) such as ibuprofen should be avoided." crlf)
  (printout t "   Care Provider: To prevent, diagnose and treat the disease." crlf)
  (printout t "   Advise:        Consult a doctor for medical advice." crlf)
  (printout t "" crlf crlf)
  (printout t "6. Chikungunya Diagnosis." crlf)
  (printout t "----------------------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "   Diagnosis:     Several methods can be used for diagnosis. Serological tests, such as enzyme-linked immunosorbent assays (ELISA)," crlf)
  (printout t "                  may confirm the presence of IgM and IgG anti-chikungunya antibodies. IgM antibody levels are highest 3 to 5 weeks" crlf)
  (printout t "                  after the onset of illness and persist for about 2 months." crlf)
  (printout t "                  The virus may be isolated from the blood during the first few days of infection." crlf)
  (printout t "   Treatment:     Consists of pain medications and fluids." crlf)
  (printout t "                  Treatment is aimed at relieving symptoms. Most people feel better within a week or so, after the virus runs its course." crlf)
  (printout t "   Medication:    Nonsteroidal and anti-inflammatory drugs for relieving pain, decreasing inflammation and fever" crlf)
  (printout t "                  Analgesic to relieve pain." crlf)
  (printout t "   Advise  :      If pain, fever and inflammation persists a week later, seek medical help." crlf)
  (printout t "------------------------------------------------------------------------------------------------------------------------------------------------------" crlf)
  (printout t "" crlf)

)
