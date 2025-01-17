## Activity File: Technical Interviews

- In this activity, you will practice situational interview questions with your partner.

- You will have time to prepare your answers. Then, you will take turns reciting your answers and providing feedback. 

### Instructions

1.  Read the following situational technical interview question:

       You work at a finance organization that has an application for customers to trade stocks.  An anonymous caller left a voicemail claiming they found a major SQL injection vulnerability on the login page for this application. 
    
       They did not leave any other details or a return phone number. What steps do you take to address this message? 
   
2. Use the following structure to answer your answer:

   - **Restatement**
   
   we have a stock trading solution which is reported to have a SQL injection vuln. assuming there are multiple input filelds exposed to the public, and the website is using MVC model. assume unlimited budget to fix the problem
  
  - **Conceptual solution**
  
  Enumerate form/pages and locate server logs
  
  Select injection testing software and test for unintended results
  
  if true apply temporary fix and recommend remediation for front-end and backend
  
  
  
  - **Technical steps**
  
  run nessus across urls
  
  use web application firewall to sanitize
  
  locate view template in repo and modify sanitizer
  
  review database logs and determine data tables at risk 
  
  recommend parameterized queries
  
  
  
  
  
3. Recite your answers to your partner and provide feedback to your partner's answer. 

---

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  