<h1 align="center">"Coffee Society" an app by Julia Pak</h1>
<!--
to align the header title to the center
<h2 align="center">by: Julia Pak</h2>
-->
<p align="center"><img alt="app icon" src="https://user-images.githubusercontent.com/41366455/212499948-933976b8-b58c-42ed-994e-d13bd6cd7036.png" width="250"><br><sup><em>Coffee Society App icon</sup></em></p>

<h1 align="center">$\textcolor{#FF0978}{\Huge\texttt{About this app}}$</h1>

* Coffee Society is a temporary name right now!
* Promoting local coffee culture in Toronto ON Canada
* Elevator pitch: Coffee lovers rejoice! Branch out of your caffeinated comfort zone and try more of what the Toronto coffee scene has to offer.

### Since local coffee shops are small businesses, the impact on climate must be limited... Why is climate change important to them?

As temperatures rise and droughts intensify, good coffee will become increasingly difficult to grow and expensive to buy. Since governments always react slowly to the problem, there is an opportunity to help.

It might not seem as if small business has a major impact on the environment...However the cumulative size and impact of small businesses (like coffee shops) is massive. For example, there are more specialty coffee shops in USA than Starbucks outlets!

<h1 align="center">$\textcolor{#4242E2}{\Huge\texttt{The Technical Details}}$</h1>

<div align="center"><h3 align="center">Technologies used in this app</h3>

<li> <b>Flutter/dart</b> For mobile app front end<br></li>
<li> <b>StripeApi</b> Payments implementation<br></li>
<li> <b>RapydApi</b> Alternative Payments implementation<br></li>
<li> <b>Firebase</b> For auth + database +cloud functions.<br></li>
<br>
    </div>

<p align="center"><img alt="img-name" src="https://user-images.githubusercontent.com/41366455/176866330-764ec99a-8803-43cd-8181-b24b18143dc9.png" height="500"><br><sup><em>Organization of the file structure(essentially MVVM)...Plus I use VSCode!</sup></em></p>

You must have the flutter sdk installed if you are testing this from source.Flutter allows you to write code once and deploy to multiple devices, it is hardware Agnostic. More about flutter here: <https://flutter.dev/>

 $\textcolor{#FF0BB6}{\Large\textsf{I will sends you an apk file if needed}}$

This app runs firebase for data storage and login. It also uses firebase cloud functions to handle stripe api key storage (but that's a seperate file for app security purposes -not included in this project). I've managed to map the user's cart to login, which means cart items are personal to each user. Admittedly this was a very difficult task to figure out.

I am going to add some element of blockchain to this at some point, maybe to track points etc.
<div align="center">

# A few notes about the files

I am teaching myself GetX and was trying to experiment with various solutions....
<br>
 </div>

## As for my personal setup

* I run on a mac M1, iPhone XS Max and xcode simulator.

* VSCode is my IDE of choice.

* I don't own an android and have not tested my project on Android simulator. However this project is Android compatible. I have set it up to work on Android with my signing keys just in case. If needed I will send an APK file over!

<div align="center">

# License

Copyright (c) November 2022 by Julia Pak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
<br>
 </div>
