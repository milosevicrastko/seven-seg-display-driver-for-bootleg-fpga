Added mostly for nostalgic purposes, and to remind myself of where i was and where i am.

Nostalgic story time: 

Back in college, i had a mandatory FPGA course. One of final tests were done on FPGA board provided by faculty. But college did not provide those FPGA borads for every single student. 
If you wanted to practice (and you needed to, otherwise you would fail), you would have to go to faculty lab, request a board, pray to God that not all of them are taken (happend often), and then practice for a limited time. 
To get a little bit of extra pracitce, I gathered a little money i had (about 30 dollars), went on aliexpress and bougth FPGA borad that looked similar enough. 
Little did i know it was a chineese bootleg without instructional and proper pin mappings. 7 seg displays could not be separately addressed (you could just turn them on and off separately), and that was mandatory for many exercises that we did. 
So i made a little wrapper to make my life a little bit easier. It would take 3 inputs (each for every 7 seg display), and it would display input 1 on display 1 with others off. Then, after 1/60 of a second it would display input 2 on display 2 with others off.
Same for display 3. The final result was 3 separate inputs for 3 separate non saparately addressable 7-seg-displays with refresh rate of 60hz. As a test tool for my wrapper, i made a little "stopwatch" to see if it would work.
Spoiler alert: i still failed the test that year, along with about 70 percent of students,so i had to retake it next year (no redos for another year) where i would pass. 

This should be viewed by no one, it is made in verilog and is laugably bad for anyone professionally working with verilog or anything similar. I am not a hardware guy. This is here to remind me of difficulties i went through to get my college degree.
It is also used to remind myself how young and unskilled i was (now i am only unskilled), and as a "check" if i still love programming or not. 
