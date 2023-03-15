Profile: Population
Parent: EvidenceVariable
Id: Population
Title: "Population" 
Description: "COVID-19-Patienten" 
* title 1..1                               //required
* characteristic.description 1..1          //required
* characteristic.definitionReference 0..0 
* characteristic.definitionCanonical 0..0
* characteristic.definitionCodeableConcept 1..1  //allow only CodeableConcepts
* characteristic.definitionCodeableConcept.coding.system = http://snomed.info/sct 
* characteristic.definitionExpression 0..0
* characteristic.definitionId 0..0
* characteristic.definitionByTypeAndValue 0..0
* characteristic.definitionByCombination 0..0 



Profile: InterventionMedicationAdministration
Parent: ActivityDefinition
Id: InterventionMedicationAdministration
Title: "InterventionMedicationAdministration"
Description: "Nicht-Verabreichen von Ivermectin"
* productCodeableConcept.coding.system = http://snomed.info/sct   //required
* subjectCodeableConcept 0..0
* subjectCanonical 1..1                                           //required
* subjectCanonical only Canonical(Population)                     //allow only profile of EvidenceVariable for subjectCanonical
* subjectReference 0..0
 