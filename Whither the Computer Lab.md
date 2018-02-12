#  Whither the Computer Lab?
### by Keven Haynes

#### Introduction
Of regular concern to all at a University are the related costs and effectiveness of spending and investment in material resources.  Laboratory space is always at a heightened level of scrutiny: it not only consumes materials and personel to maintain the facility, but the real estate it occupies forces the stakeholders to make a long-term commitment on an often scarce resource. 

Current states of funding, pedagogy, technology and people all play a part in the evaluation of a resource. The rapidity of change is felt most significantly in fields such as Computer Science, where not only is the technology on which it is based under continuous revision, the methods and the expectations of professionals in the post-educational sector often out-pace the teaching of new students in the subject.  

As a result, opinions on the use and form of a Computer Lab abound.  What had for a long time been a given, the cost and untenable effort to maintain one's own computer for scientific purposes, is no longer a fact - people not only own their own computers, but often own several (not including "devices" that are themselves computers with more power than those that used to exist in labs).  It is the case today that most undergraduates have or intend to purchase a personal computing device for use during their school careers.  It is this "new" reality that puts into question the need for a Computer Lab at all.  

It is not the purpose of this study to to determine whether Computer Labs should still be maintained on campuses, but rather to look at utilization of a facility through actual data.   What is developed here is a proposal for gathering information that can be used to inform both spending choices and relevant long-term design.  


####  Methodology
In this scenario, we seek to answer a couple of practical guestions about our lab: "When is the lab being used the most?" and "Is our design optimal for fulfulling student and instructional needs?"  From our answers to these questions we would hope to make changes to our policies to improve our utilization of the lab. 

To make this a data project we will need to collect data; fortunately, computers themselves generate copious amounts of it.  One piece of low-lying fruit is the computers' login data.  In our particular lab, we have 32 Linux-based worksations arranged in a grid of four rows of eight systems, each labled by row numbered 1 through 4, and by column A-H.  Each computer maintains its own login file which can be accessed by the unix command, `last`: 

```
$last -20
dliu55   pts/15       10.40.121.131    Sun Feb 11 21:09 - 21:11  (00:01)    
lxhu     pts/3        10.40.85.252     Sun Feb 11 21:09   still logged in   
dliu55   pts/10       10.40.121.131    Sun Feb 11 19:14 - 19:15  (00:00)    
ahuan38  pts/10       10.40.156.105    Sun Feb 11 18:43 - 18:56  (00:13)    
arickfo  pts/3        10.40.193.180    Sun Feb 11 18:37 - 21:01  (02:24)    
ohandel  pts/9        10.40.19.101     Sun Feb 11 18:27   still logged in
...
```

These login files create a very authoritative source of data regarding use of the computers, as they are maintained by the systems themselves neither require nor experience intervention by humans. 

Once the log files are collected from each of the 32 systems, the data is cleaned of non-administrative logins and is convereted to a comma-separated-value formatted file.  The pandas and matplotlib libraries of the Python programming language are then used to process these .csv files to create visulization of the login data. 


####  Permissions and Stakeholders 

Under typical circumstances, system login data is regulated very little.  It is freely available on most systems to anyone with a user account.  That said, for one who might not have access to such systems, permissions from adminstrators would likely be necessary, as well as approval from people charged with overseeing FERPA-protected information.  Ultimately, the owners of the resource (say, the Computer Science Department) would have to be consulted, and someone of authority such as a department Chairperson would need give permissions for an account to be granted in order for someone to access the data unaided by systems administrator. 

Benefactors of the outcome of such data exploration include, but are not limited to:

* Students - who hopefully gain from a facility that better suits their needs
* Faculty - for similar reasons as students
* Staff - who gain from optimization of efforts and maintenance
* Administrators - who gain confidence in support/spending on a resource


#### Analysis

I analyze some stuff. And show some pictures. 

![LoginsByHour](https://github.com/haynesie/Whither/blob/master/Images/ConsoleLoginsByHour.png "Logins By Hour")

![LoginsByDate](https://github.com/haynesie/Whither/blob/master/Images/ConsoleLoginsByDate.png "Logins by Date")


![logins](https://github.com/haynesie/Whither/blob/master/Images/WorkstationLoginsByMachine.png "Logins by Machine")
![crashes](https://github.com/haynesie/Whither/blob/master/Images/SystemCrashesByMachine.png "Crashes By Machine")


#### Interpretation and Conclusions
We need more data. 


