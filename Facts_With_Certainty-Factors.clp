;

(deffacts certainty
        (slot disease)
        (slot disease-name)
        (slot general-symptoms)
        (slot specific-symptoms)
        (slot Certainty-Factor))

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