# Digital-Health-Exercise
This Exercise was part of the Module "Digital Health" at the Humboldt University of Berlin in the Wintersemester 2022/23. 

The Exercise included the following 3 Tasks listed below: 

# Exercise 1

represent the following recommendation using FHIR resources:

Ivermectin soll nicht zur COVID-19-Behandlung verabreicht werden.

(read as: "COVID-19 Patienten sollen kein Ivermectin erhalten")

Recommendation #8 from the "S3-Leitlinie Empfehlungen zur stationären Therapie von Patienten mit COVID-19 – Living Guideline"

Steps

Identify Population and Intervention parts

Identify appropriate concepts in standardized vocabularies

Create an instance of EvidenceVariable for the population part (look up the link to identify required fields)

Create an instance of ActivityDefinition for the intervention part (look up the link to identify required fields)

-Link population to intervention (hint: look at [subject[x]])

Create a file named [exercise01.fsh] containing both instances.

# Exercise 2

Specify a simple guideline representation format by creating profiles of the following resources:

**EvidenceVariable (Population)**

Profile name: [Population]

Allow only [codeableConcepts] from SNOMED CT for characteristics

  Disallow all other types
  
  Hint: bind value to [[codeableConcept].coding.system] to fix a system, e.g.:
  
   [* jurisdiction.coding.system = {insert code system identifier}]
   
  SNOMED CT's codesystem URI is http://snomed.info/sct
  
Make [title] and [characteristic.description] required

**ActivityDefinition (Intervention)**

Profile name: [InterventionMedicationAdministration]

Require [productCodeableConcept] and allow only SNOMED CT terms

Make [subjectCanonical] required and allow only your profile of EvidenceVariable for [subjectCanonical]

 Hint: use the [Canonical()] function for referencing; lookup [only] keyword in the FSH reference
 
Create a file named [exercise02.fsh] containing both profiles.

# Exercise 3

Use your own profiles to represent the recommendation from exercise 1

Create a file named exercise03.fsh containing both instances
