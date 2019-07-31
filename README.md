# Data associated with the manuscript “Growing Skills in Data Management with researchERS: Emerging Research Scholars” 

Submitted to Journal of E-Science librarianship July 2019.

## Authors:
Trisha Adamus, MLIS, UW-Madison, Madison, WI, USA

Cameron Cook, MA-LIS, UW-Madison, Madison, WI, USA

Tobin Magle, Ph.D., UW-Madison, Madison, WI, USA

Heather Shimon, MA-LIS, UW-Madison, Madison, WI, USA

## Abstract
Currently, many universities are encouraging an undergraduate research experience where students engage in research projects in the classroom and in research labs, yet research data management is often not included as part of these opportunities. This creates a perfect time to introduce students to threshold concepts involving good practices across the data life cycle and to plant the seed that data is something to cultivate and steward.

At UW-Madison, we piloted researchERS (Emerging Research Scholars), a program for undergraduates from all disciplines to learn data management skills. Focusing on core concepts as well as data ethics, reproducibility, and research workflows, the format of the program included seven evening workshops, two networking events, and one field trip. Each workshop invited campus and community speakers relevant to the workshop’s theme as a way to introduce the students to the network of available resources and data expertise and provided food for attendees. The workshops also built in customized activities to show students how to incorporate best practices into their work. Local businesses provided a tour of their facilities as well as a talk on how they leverage data for the students. This paper will describe this program and the benefits and drawbacks of tailoring a research data management program toward undergraduates. 

## Project inventory
1. **README.md** - a description of the project
2. **researchers-analysis.R** - a script that reads in the survey response data and creates the plots in the manuscript.
3. **researchERS-assessment.Rproj** - an R project file that users can open in R Studio to set the working directory properly for the project organization
4. **data** folder - contains the data used to make plots
5. **plots** folder - contains the plots output in jpeg format

## Data dictionary
Variable|Definition|Acceptable Values
---|---|---
Overall| Answer to the question: "Overall I would rate the workshop as..."|"Good", "Excellent" "Fair", "Poor" 
data_value|Agreement that the following learning objective was met: "Understanding that data has value and requires diligent organization and management" | "Strongly Agree", "Agree","Not Sure", "Disagree" "Strongly Disagree"
ethics|Agreement that the following learning objective was met: "Recognizing that data collection, use, and sharing include ethical, social, and legal considerations"|"Strongly Agree", "Agree","Not Sure", "Disagree" "Strongly Disagree"
finding_resources|Answer to the question: "Developing confidence in finding resources to help manage data"|"Strongly Agree", "Agree","Not Sure", "Disagree" "Strongly Disagree"
expectations|Answer to the question: "The workshop content met my expectations"|"Strongly Agree", "Agree","Not Sure", "Disagree" "Strongly Disagree"
useful|Answer to the question: "The Information I learned will be useful"|"Strongly Agree", "Agree","Not Sure", "Disagree" "Strongly Disagree"

Missing data is indicated as "NA" for all questions.
