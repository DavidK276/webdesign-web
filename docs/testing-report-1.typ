#set text(font: "Source Sans Pro")
#show link: set text(blue)

#align(center, text(24pt)[
  *Testing report*
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

= Testing goals

The primary goal of this testing session is to test a prototype of the new submit flow of the system, mainly its usability on a mobile phone and the option to directly take a picture.

= Test users

For this testing, we have sourced 2 testers that have recently used the old system of our contests. One of them was a high school student, the other one was a first qyear university student.
Both did have previous experience with both our old system and a few competing sites of other contests.

= Test session

Both testers did successfully finish their task of uploading the solutions without getting lost or requiring assistance.
The first tester experienced some technical difficulties with the prototype itself.

The first tester liked that he can clearly distinguish problems that he can and cannot solve for points right from the problem list.
He noted that he can see the round's deadline clearly on the problem list and points that he received on the problem page.
However, he noted that he wanted to view the file he uploaded to verify that he really uploaded the right thing, but was unable to do so.
Overall, he was satisfied with his experience.

The second tester also noted that she could not view the uploaded file after submitting it and she would also like to see the file that she is uploading before submitting it.
She disliked that she was presented with a "wall of text" when viewing problems.
She was also confused why a solution that she just uploaded was shown with 0 points - was it already graded or not? - and overall disliked the interface of the submit list.
She noted that it would be great to allow submitting multiple photos at once. Also, she would like to see her category in the problem list. She noted that she may want to submit problem
even though she does not get any points for it. This is probably related to the problem being grayed out in the list, which she interpreted as though she could not open the problem, because the system still allows you to do so, only shows a warning.
She preferred the current system, but rated her overall experience as "fine".

= Goal evaluation

None of the testers experienced major usability problems. The submit process seemed intuitive to them.
They also did upload a image right from the camera without any problems. It's interesting to note that they both did so without thinking much about it
as the interface for snapping a picture was already known to them from other applications.
Both raised some important remarks that will be taken into consideration when updating the prototype.

= Conclusion

Both testers provided us with valuable feedback that we will use to further improve our design.
Some of the key requests are listed below:

- ability to see uploaded files
- limit the amount of scrolling needed to open the submit interface (maybe a floating CTA?)
- distinquish between graded and ungraded solutions in the list (and overall rework of that section, as it is very barebones)
- allow uploading multiple images (for multi-page solutions)
- show the user's category somewhere

= Test session recordings

- 1st tester: #link("https://youtu.be/JYUuxJREfYg+")
- 2nd tester: #link("https://youtu.be/T0H7BVz_2ro")
