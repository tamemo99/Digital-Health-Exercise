Instance: Patient                    //Population=Patienten
InstanceOf: EvidenceVariable         //Create an instance of EvidenceVariable
Usage: #example
Title: "Patient"
Description: "COVID-19 Patienten sollen kein Ivermectin erhalten"
* version = "8.0"
* name = "COVID-19-Patienten"
* status = #active
* characteristic.definitionCodeableConcept.coding.system =  http://snomed.org/info    //Required fields
* characteristic.definitionCodeableConcept.coding.code = #840539006                   //Required fields

Instance: Intervention
InstanceOf: ActivityDefinition
Usage: #example
Title: "Intervention"
Description: "Das Nicht-Verabreichen von Ivermectin"
* status = #active
* subjectCanonical = Canonical(Patient)                                     //Link Population to evidence
* doNotPerform = true                                                       //Das Nicht-Verabreichen von #387559003
* productCodeableConcept.coding.system = http://snomed.org/info             //Required fields
* productCodeableConcept.coding.code = 387559003                            //Required fields

