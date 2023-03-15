Instance: myPatient
InstanceOf: Population
Usage: #example
Title: "myPatient"
Description: "COVID-19-Patienten" 
* version = "8.0"
* name = "COVID-19-Patienten"
* status = #active
* characteristic.definitionCodeableConcept.coding.system =  http://snomed.org/info                                                    //required
* characteristic.definitionCodeableConcept.coding.code = #840539006                                                                   //required
* title  =  "COVID-19-Patienten"                                                                                                      //required
* characteristic.description  =  "COVID-19-Patient mit folgenden Symptomen: Fieber,Husten und Störung des Geschmackssinns"            //required


Instance: myIntervention
InstanceOf: InterventionMedicationAdministration
Usage: #example
Title: "myIntervention"
Description: "Das Nicht-Verabreichen von Ivermectin"
* status = #active
* subjectCanonical = Canonical(Patient)                                                           
* doNotPerform = true                                                       
* productCodeableConcept.coding.system = http://snomed.org/info                                   //required
* productCodeableConcept.coding.code = 387559003                                                  //required

