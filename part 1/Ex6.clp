         CLIPS (6.30 3/17/15)
CLIPS> ;Bradley Melchor
;CGS4097.051
;2021
;asserts DEGREE
(assert (DEGREE AS3504))
<Fact-1>
CLIPS> (defrule CoursesRequired
;Creates Rule that Finds DEGREE AS3504 and then implements required courses
(DEGREE AS3504)
=>
(assert (COURSE GenED1))
(assert (COURSE GenED2))
(assert (COURSE GenED3))
(assert (COURSE ITElective1))
(assert (COURSE ITELective2))
(assert (COURSE ITElective3)))
CLIPS> (defrule PreReqs
;finds Degree AS3504 and Asserts PreReqs
(DEGREE AS3504)
=>
(assert (PREREQ Prereq1))
(assert (PREREQ Prereq2))
(assert (PREREQ Prereq3)))
CLIPS> (run)
CLIPS> (defrule PreReqsPrint
;rule finds PREREQS and prints them all out
(PREREQ ?Prereq1)
=>
(printout t ?Prereq1 crlf))
CLIPS> (defrule CourseRequiredPrint
;rule finds COURSE and prints them all out
(COURSE ?COURSEID)
=>
(printout t ?COURSEID crlf))
CLIPS> 
