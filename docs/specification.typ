#set text(font: "Source Sans Pro")

#align(center, text(24pt)[
  *Reworked competition system for Trojsten*
])
#v(-5mm)
#align(center, {grid(
  columns: (1fr,1.5fr,1fr,1fr),
  [David Krchňavý],
  [Mohammad Jamal Miraki],
  [Filip Sršeň],
  [Adam Zahradník],
)
})

= Stakeholder

A non-profit organization Trojsten that specializes in education and popularization of
STEM. They organize various competitions for high-school students. Their goal is to
lower the barrier of entry for their competitions and increase the number of
contestants.

= Goals

The goal of this project are:

- improving the existing system (eg. ksp.sk, fks.sk, kms.sk) by redesigning the user interface to:
    - provide a better user experience
	- simplify the process of submitting solutions by contestants
	- simplify the process of posting problem statements
	- rework the user interface for submitting feedback to the competition contestants
	- rework the content structure to speed up looking up information

= Success measures

We want an increase of the organic traffic to the website of 10%. We want to achieve a
5% increase of the number of constestants. Futhermore, a user survey will be used to measure the
improvement of user satisfaction.

= Competition analysis

The website will be replacing an existing one, which will serve as a starting point for
how to implement the new system, by taking the feedback of its current users.

== The current system
#figure(image("img/kms.png", width: 80%))

The current system has served Trojsten for many years. However, it starts to show its age.
We like that it is pretty simple to navigate the site, but there are a lot of unintuitive choices in it's information structure. The current page is also weird to use on mobile devices and don't follow current usability standards.

It is hard to tell which problems can the contestant solve, there are often multiple categories, but you need to read though the contest's rules in order to tell which problems are applicable to you. This is best illustrated on the Suši contest, that has 5 categories:

#figure(image("img/susi.png", width: 30%))

From the organizer's perspective, the system allows grading the solutions. One of the useful features of the current system is the option to download all solutions in a single ZIP file, grade it locally and upload graded solutions in a new ZIP.

On the other hand, organizers use an automatically generated interface (Django admin) to work with the gradings. It requires some training before organizers can successfully navigate the interface.

#figure(image("img/django.png", width: 80%))

Also, the current system does not make it easy to view solutions without downloading them. While the system allows organizers to publish announcements and other materials, doing so is unintuitive and, in many cases, broken. Uploading new problems require direct access to the server.

== P-MAT's sites

#figure(image("img/pikomat.png", width: 80%))

P-MAT is an organization that organizes similar contests for primary school students.
Their system is similar to ours. Some improvements include the ability for contestants to see their category. The system also highlights problems that are not part of the contestant's category. Some texts on their sites are hard to read due to small size and insufficient contrast. Their site also feels slow, every page navigation starts with many loading spinners for a couple of seconds.

Their interface for organizers makes it easy to grade problems, even without downloading them. The whole organizers' interface is much easier to use than ours.

In conclusion, while Trojsten's current system has served its purpose over the years, its shortcomings have become increasingly apparent. The navigation and usability issues, especially on mobile devices, result in a bad user experience. Additionally, the unintuitive structure for both contestants and organizers demonstrates the need for modernization. In comparison, P-MAT's system offers notable improvements, such as category visibility for contestants and a more streamlined interface for organizers, despite having its own set of issues. To improve user experience, Trojsten's system would greatly benefit from incorporating similar enhancements and addressing its outdated features.

= Functional requirements

== General

- Show information about the competition.
- Show current competition problems.
- Browse the archive of past competition problems.
- Show news and announcements.
- Show competition results.
- Logging in using the central identity system, Trojsten ID

== Contestants

- Submitting solutions.
- Viewing feedback and scores for their solutions.
- Being notified about new problems.
- Being notified about their score.

== Organizers

- Grading and providing feedback to solutions.
- Publishing problems and solutions.
- Posting news and announcements.

= Nonfunctional requirements

- ease of use
- modern design
- design responsiveness
- quick system response

= Schedule

Round 1: *(10th Nov)*
- specification, scenarios, storyboards
- design and prototype of the contestant's solution upload scenario (submitting solution, viewing feedback and scores, show current competition problems)

Round 1.5: *(1st Dec)*
- solution uploading
- browsing current tasks and archive

Round 2: *(15th Dec)*
- information section of the site (viewing and managing)
- Trojsten ID login

Round 2.5: *(1st Jan)*
- improvements from 2nd round of testing:
  - allow submit of multiple files
  - hide submit CTA when not needed (+ on desktop)
  - add an better way to "go back"
  - make problem list and problem sidebar consistent
  - show problem status more explicitly than changing its background color
- organizer's grading interface
- competition results
- management of competition problems

Round 3: *(18th Jan)*
- last round of submit testing
- test grading interface
- email notifications
- news and announcements
- remaining improvements

= Budget

The application will run on existing Trojsten's infrastructure provided by the faculty.

Work on the application is estimated in man hours:
- round 1: 12 MH
- round 1.5: 12 MH
- round 2: 10 MH
- round 2.5: 10 MH
- round 3: 10 MH

= Team and responsibilities

- David Krchňavý = personas, front-end
- Mohammad Jamal Miraki = development lead
- Filip Sršeň = team leader, wireframes, testing videos
- Adam Zahradník = testing moderator, back-end
