import 'package:w3school_clone/model/lesson_html.dart';

List<LessonHtmlModel> lessonsJs = [
  LessonHtmlModel(
      lessonCode: '''
// Lesson 1: Hello World

console.log("Hello World!");
''',
      lessonText:
          "Learn how to write and run your first JavaScript program that prints out 'Hello World!' to the console."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 2: Variables

// Declare a variable
var name;

// Assign a value to the variable
name = "John";

// Declare and assign in one statement
var age = 25;

// Print out the variables
console.log(name);
console.log(age);
''',
      lessonText:
          "Learn how to declare and assign values to variables in JavaScript, and how to print them out to the console."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 3: Data Types

var num = 10; // number
var str = "Hello"; // string
var bool = true; // boolean
var arr = [1, 2, 3]; // array
var obj = {name: "John", age: 25}; // object

// Print out the data types
console.log(typeof num); // number
console.log(typeof str); // string
console.log(typeof bool); // boolean
console.log(typeof arr); // object
console.log(typeof obj); // object
''',
      lessonText:
          "Learn about the different data types available in JavaScript, including numbers, strings, booleans, arrays, and objects."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 4: Functions

// Define a function
function add(a, b) {
  return a + b;
}

// Call the function
var result = add(3, 4);

// Print out the result
console.log(result);
''',
      lessonText:
          "Learn how to define and call functions in JavaScript, and how to use them to perform tasks and return values."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 5: Conditional Statements

var age = 25;

if (age >= 18) {
  console.log("You are an adult");
} else {
  console.log("You are a minor");
}
''',
      lessonText:
          "Learn how to use conditional statements, such as if/else, to make decisions in your JavaScript code based on different conditions."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 6: Loops

for (var i = 0; i < 5; i++) {
  console.log(i);
}

var j = 0;
while (j < 5) {
  console.log(j);
  j++;
}
''',
      lessonText:
          "Learn how to use loops, such as for and while, to iterate through lists of data and perform tasks on each item."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 7: Arrays

var fruits = ["apple", "banana", "orange"];

console.log(fruits[0]); // "apple"
console.log(fruits[1]); // "banana"
console.log(fruits[2]); // "orange"

fruits.push("pear");
console.log(fruits); // ["apple", "banana", "orange", "pear"]
''',
      lessonText:
          "Learn how to work with arrays in JavaScript, including how to create, access, and modify arrays."),
  LessonHtmlModel(lessonText: "Objects", lessonCode: '''
// Lesson 8: Objects

var person = {name: "John", age: 25};

console.log(person.name); // "John"
''')
];

List<LessonHtmlModel> lessonCss = [
  LessonHtmlModel(lessonText: '''
CSS Introduction

CSS is the language we use to style a Web page.

What is CSS?

CSS stands for Cascading Style Sheets
CSS describes how HTML elements are to be displayed on screen, paper, or in other media
CSS saves a lot of work. It can control the layout of multiple web pages all at once
External stylesheets are stored in CSS files


CSS Demo - One HTML Page - Multiple Styles!
Here we will show one HTML page displayed with four different stylesheets. Click on the "Stylesheet 1", "Stylesheet 2", "Stylesheet 3", "Stylesheet 4" links below to see the different styles:

Why Use CSS?

CSS is used to define styles for your web pages, including the design, layout and variations in display for different devices and screen sizes.

body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}


CSS Solved a Big Problem

HTML was NEVER intended to contain tags for formatting a web page!
HTML was created to describe the content of a web page, like:
<h1>This is a heading</h1>
<p>This is a paragraph.</p>
When tags like <font>, and color attributes were added to the HTML 3.2 specification, it started a nightmare for web developers. Development of large websites, where fonts and color information were added to every single page, became a long and expensive process.
To solve this problem, the World Wide Web Consortium (W3C) created CSS.
CSS removed the style formatting from the HTML page!
If you don't know what HTML is, we suggest that you read our HTML Tutorial.

CSS Saves a Lot of Work!

The style definitions are normally saved in external .css files.
With an external stylesheet file, you can change the look of an entire website by changing just one file!

''', lessonCode: '''
body {
  background-color: lightblue;
}

h1 {
  color: white;
  text-align: center;
}

p {
  font-family: verdana;
  font-size: 20px;
}

'''),
  LessonHtmlModel(lessonText: '''
CSS Syntax

A CSS rule consists of a selector and a declaration block.

CSS Syntax

The selector points to the HTML element you want to style.
The declaration block contains one or more declarations separated by semicolons.
Each declaration includes a CSS property name and a value, separated by a colon.
Multiple CSS declarations are separated with semicolons, and declaration blocks are surrounded by curly braces.

p {
  color: red;
  text-align: center;
}

''', lessonCode: '''
p {
  color: red;
  text-align: center;
}
'''),
  LessonHtmlModel(lessonText: '''
CSS Comments

CSS comments are not displayed in the browser, but they can help document your source code.

CSS Comments

Comments are used to explain the code, and may help when you edit the source code at a later date.
Comments are ignored by browsers.
A CSS comment is placed inside the <style> element, and starts with /* and ends with */:

/* This is a single-line comment */
p {
  color: red;
}

You can add comments wherever you want in the code:

p {
  color: red;  /* Set text color to red */
}

Comments can also span multiple lines: 

/* This is
a multi-line
comment */

p {
  color: red;
}

HTML and CSS Comments

From the HTML tutorial, you learned that you can add comments to your HTML source by using the <!--...--> syntax.
In the following example, we use a combination of HTML and CSS comments:

<!DOCTYPE html>
<html>
<head>
<style>
p {
  color: red; /* Set text color to red */
}
</style>
</head>
<body>

<h2>My Heading</h2>

<!-- These paragraphs will be red -->
<p>Hello World!</p>
<p>This paragraph is styled with CSS.</p>
<p>CSS comments are not shown in the output.</p>

</body>
</html>

''', lessonCode: '''
/* This is a single-line comment */
p {
  color: red;
}

p {
  color: red;  /* Set text color to red */
}

/* This is
a multi-line
comment */

p {
  color: red;
}

<!DOCTYPE html>
<html>
<head>
<style>
p {
  color: red; /* Set text color to red */
}
</style>
</head>
<body>

<h2>My Heading</h2>

<!-- These paragraphs will be red -->
<p>Hello World!</p>
<p>This paragraph is styled with CSS.</p>
<p>CSS comments are not shown in the output.</p>

</body>
</html>
'''),
  LessonHtmlModel(lessonText: '''
CSS Colors

Colors are specified using predefined color names, or RGB, HEX, HSL, RGBA, HSLA values.

CSS Color Names

In CSS, a color can be specified by using a predefined color name:

Tomato               Orange
DodgerBlue           MediumSeaGreen
Gray                 SlateBlue
Violet               LightGray

CSS Background Color

You can set the background color for HTML elements:

<h1 style="background-color:DodgerBlue;">Hello World</h1>
<p style="background-color:Tomato;">Lorem ipsum...</p>

CSS Text Color

You can set the color of text:

<h1 style="color:Tomato;">Hello World</h1>
<p style="color:DodgerBlue;">Lorem ipsum...</p>
<p style="color:MediumSeaGreen;">Ut wisi enim...</p>

CSS Border Color

You can set the color of borders:

<h1 style="border:2px solid Tomato;">Hello World</h1>
<h1 style="border:2px solid DodgerBlue;">Hello World</h1>
<h1 style="border:2px solid Violet;">Hello World</h1>

CSS Color Values

In CSS, colors can also be specified using RGB values, HEX values, HSL values, RGBA values, and HSLA values:
Same as color name "Tomato":

<h1 style="background-color:rgb(255, 99, 71);">...</h1>
<h1 style="background-color:#ff6347;">...</h1>
<h1 style="background-color:hsl(9, 100%, 64%);">...</h1>
<h1 style="background-color:rgba(255, 99, 71, 0.5);">...</h1>
<h1 style="background-color:hsla(9, 100%, 64%, 0.5);">...</h1>

''', lessonCode: '''
<h1 style="background-color:DodgerBlue;">Hello World</h1>
<p style="background-color:Tomato;">Lorem ipsum...</p>


<h1 style="color:Tomato;">Hello World</h1>
<p style="color:DodgerBlue;">Lorem ipsum...</p>
<p style="color:MediumSeaGreen;">Ut wisi enim...</p>


<h1 style="border:2px solid Tomato;">Hello World</h1>
<h1 style="border:2px solid DodgerBlue;">Hello World</h1>
<h1 style="border:2px solid Violet;">Hello World</h1>


<h1 style="background-color:rgb(255, 99, 71);">...</h1>
<h1 style="background-color:#ff6347;">...</h1>
<h1 style="background-color:hsl(9, 100%, 64%);">...</h1>
<h1 style="background-color:rgba(255, 99, 71, 0.5);">...</h1>
<h1 style="background-color:hsla(9, 100%, 64%, 0.5);">...</h1>
'''),
  LessonHtmlModel(lessonText: '''
CSS Backgrounds

The CSS background properties are used to add background effects for elements.

In these chapters, you will learn about the following CSS background properties:

background-color
background-image
background-repeat
background-attachment
background-position
background (shorthand property)

CSS background-color

The background-color property specifies the background color of an element.

body {
  background-color: lightblue;
}

Other Elements

You can set the background color for any HTML elements:

h1 {
  background-color: green;
}

div {
  background-color: lightblue;
}

p {
  background-color: yellow;
}

Opacity / Transparency

The opacity property specifies the opacity/transparency of an element. It can take a value from 0.0 - 1.0. The lower value, the more transparent:

div {
  background-color: green;
  opacity: 0.3;
}


Transparency using RGBA

If you do not want to apply opacity to child elements, like in our example above, use RGBA color values. The following example sets the opacity for the background color and not the text:
You learned from our CSS Colors Chapter, that you can use RGB as a color value. In addition to RGB, you can use an RGB color value with an alpha channel (RGBA) - which specifies the opacity for a color.
An RGBA color value is specified with: rgba(red, green, blue, alpha). The alpha parameter is a number between 0.0 (fully transparent) and 1.0 (fully opaque).


div {
  background: rgba(0, 128, 0, 0.3) /* Green background with 30% opacity */
}

The CSS Background Color Property

''', lessonCode: '''
body {
  background-color: lightblue;
}

h1 {
  background-color: green;
}

div {
  background-color: lightblue;
}

p {
  background-color: yellow;
}

div {
  background-color: green;
  opacity: 0.3;
}

div {
  background: rgba(0, 128, 0, 0.3) /* Green background with 30% opacity */
}
'''),
  LessonHtmlModel(lessonText: '''
CSS Borders

The CSS border properties allow you to specify the style, width, and color of an element's border.


CSS Border Style

The border-style property specifies what kind of border to display.

The following values are allowed:

dotted - Defines a dotted border
dashed - Defines a dashed border
solid - Defines a solid border
double - Defines a double border
groove - Defines a 3D grooved border. The effect depends on the border-color value
ridge - Defines a 3D ridged border. The effect depends on the border-color value
inset - Defines a 3D inset border. The effect depends on the border-color value
outset - Defines a 3D outset border. The effect depends on the border-color value
none - Defines no border
hidden - Defines a hidden border
The border-style property can have from one to four values (for the top border, right border, bottom border, and the left border).


p.dotted {border-style: dotted;}
p.dashed {border-style: dashed;}
p.solid {border-style: solid;}
p.double {border-style: double;}
p.groove {border-style: groove;}
p.ridge {border-style: ridge;}
p.inset {border-style: inset;}
p.outset {border-style: outset;}
p.none {border-style: none;}
p.hidden {border-style: hidden;}
p.mix {border-style: dotted dashed solid double;}
''', lessonCode: '''

p.dotted {border-style: dotted;}
p.dashed {border-style: dashed;}
p.solid {border-style: solid;}
p.double {border-style: double;}
p.groove {border-style: groove;}
p.ridge {border-style: ridge;}
p.inset {border-style: inset;}
p.outset {border-style: outset;}
p.none {border-style: none;}
p.hidden {border-style: hidden;}
p.mix {border-style: dotted dashed solid double;}
'''),
  LessonHtmlModel(lessonText: '''
CSS Border Width

The border-width property specifies the width of the four borders.
The width can be set as a specific size (in px, pt, cm, em, etc) or by using one of the three pre-defined values: thin, medium, or thick:


p.one {
  border-style: solid;
  border-width: 5px;
}

p.two {
  border-style: solid;
  border-width: medium;
}

p.three {
  border-style: dotted;
  border-width: 2px;
}

p.four {
  border-style: dotted;
  border-width: thick;
}

Specific Side Widths

The border-width property can have from one to four values (for the top border, right border, bottom border, and the left border):

p.one {
  border-style: solid;
  border-width: 5px 20px; /* 5px top and bottom, 20px on the sides */
}

p.two {
  border-style: solid;
  border-width: 20px 5px; /* 20px top and bottom, 5px on the sides */
}

p.three {
  border-style: solid;
  border-width: 25px 10px 4px 35px; /* 25px top, 10px right, 4px bottom and 35px left */
}

''', lessonCode: '''
p.one {
  border-style: solid;
  border-width: 5px;
}

p.two {
  border-style: solid;
  border-width: medium;
}

p.three {
  border-style: dotted;
  border-width: 2px;
}

p.four {
  border-style: dotted;
  border-width: thick;
}


p.one {
  border-style: solid;
  border-width: 5px 20px; /* 5px top and bottom, 20px on the sides */
}

p.two {
  border-style: solid;
  border-width: 20px 5px; /* 20px top and bottom, 5px on the sides */
}

p.three {
  border-style: solid;
  border-width: 25px 10px 4px 35px; /* 25px top, 10px right, 4px bottom and 35px left */
}

'''),
  LessonHtmlModel(lessonText: '''
CSS Border Color

The border-color property is used to set the color of the four borders.
The color can be set by:
name - specify a color name, like "red"
HEX - specify a HEX value, like "#ff0000"
RGB - specify a RGB value, like "rgb(255,0,0)"
HSL - specify a HSL value, like "hsl(0, 100%, 50%)"
transparent

p.one {
  border-style: solid;
  border-color: red;
}

p.two {
  border-style: solid;
  border-color: green;
}

p.three {
  border-style: dotted;
  border-color: blue;
}

Specific Side Colors

The border-color property can have from one to four values (for the top border, right border, bottom border, and the left border).

p.one {
  border-style: solid;
  border-color: red green blue yellow; /* red top, green right, blue bottom and yellow left */
}

HEX Values

The color of the border can also be specified using a hexadecimal value (HEX):

p.one {
  border-style: solid;
  border-color: #ff0000; /* red */
}

RGB Values

Or by using RGB values:

p.one {
  border-style: solid;
  border-color: rgb(255, 0, 0); /* red */
}

HSL Values

You can also use HSL values:

p.one {
  border-style: solid;
  border-color: hsl(0, 100%, 50%); /* red */
}
''', lessonCode: '''
p.one {
  border-style: solid;
  border-color: red;
}

p.two {
  border-style: solid;
  border-color: green;
}

p.three {
  border-style: dotted;
  border-color: blue;
}

p.one {
  border-style: solid;
  border-color: red green blue yellow; /* red top, green right, blue bottom and yellow left */
}

p.one {
  border-style: solid;
  border-color: #ff0000; /* red */
}

p.one {
  border-style: solid;
  border-color: rgb(255, 0, 0); /* red */
}

p.one {
  border-style: solid;
  border-color: hsl(0, 100%, 50%); /* red */
}
'''),
  LessonHtmlModel(lessonText: '''
CSS Margins

Margins are used to create space around elements, outside of any defined borders.

CSS Margins

The CSS margin properties are used to create space around elements, outside of any defined borders.
With CSS, you have full control over the margins. There are properties for setting the margin for each side of an element (top, right, bottom, and left).

Margin - Individual Sides

CSS has properties for specifying the margin for each side of an element:

margin-top
margin-right
margin-bottom
margin-left
All the margin properties can have the following values:
auto - the browser calculates the margin
length - specifies a margin in px, pt, cm, etc.
% - specifies a margin in % of the width of the containing element
inherit - specifies that the margin should be inherited from the parent element

p {
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
}

Margin - Shorthand Property

To shorten the code, it is possible to specify all the margin properties in one property.
The margin property is a shorthand property for the following individual margin properties:
margin-top
margin-right
margin-bottom
margin-left
So, here is how it works:
If the margin property has four values:
margin: 25px 50px 75px 100px;
top margin is 25px
right margin is 50px
bottom margin is 75px
left margin is 100px

p {
  margin: 25px 50px 75px 100px;
}

If the margin property has three values:

margin: 25px 50px 75px;
top margin is 25px
right and left margins are 50px
bottom margin is 75px

p {
  margin: 25px 50px 75px;
}


If the margin property has two values:
 25px 50px;top and bottom margins are 25px
 right and left margins are 50px

 p {
  margin: 25px 50px;
}

If the margin property has one value:
margin: 25px;
all four margins are 25px

p {
  margin: 25px;
}

The auto Value

You can set the margin property to auto to horizontally center the element within its container.
The element will then take up the specified width, and the remaining space will be split equally between the left and right margins.

div {
  width: 300px;
  margin: auto;
  border: 1px solid red;
}

The inherit Value

This example lets the left margin of the <p class="ex1"> element be inherited from the parent element (<div>):

div {
  border: 1px solid red;
  margin-left: 100px;
}

p.ex1 {
  margin-left: inherit;
}
''', lessonCode: '''
p {
  margin-top: 100px;
  margin-bottom: 100px;
  margin-right: 150px;
  margin-left: 80px;
}

p {
  margin: 25px 50px 75px 100px;
}

p {
  margin: 25px 50px 75px;
}

p {
  margin: 25px 50px;
}

p {
  margin: 25px;
}

div {
  width: 300px;
  margin: auto;
  border: 1px solid red;
}
'''),
  LessonHtmlModel(lessonText: '''
Margin Collapse

Top and bottom margins of elements are sometimes collapsed into a single margin that is equal to the largest of the two margins.

This does not happen on left and right margins! Only top and bottom margins!
Look at the following example:

h1 {
  margin: 0 0 50px 0;
}

h2 {
  margin: 20px 0 0 0;
}

In the example above, the <h1> element has a bottom margin of 50px and the <h2> element has a top margin set to 20px.
Common sense would seem to suggest that the vertical margin between the <h1> and the <h2> would be a total of 70px (50px + 20px). But due to margin collapse, the actual margin ends up being 50px.
''', lessonCode: '''
h1 {
  margin: 0 0 50px 0;
}

h2 {
  margin: 20px 0 0 0;
}
'''),
  LessonHtmlModel(lessonText: '''
CSS Padding

The CSS padding properties are used to generate space around an element's content, inside of any defined borders.
With CSS, you have full control over the padding. There are properties for setting the padding for each side of an element (top, right, bottom, and left).

Padding - Individual Sides

CSS has properties for specifying the padding for each side of an element:

padding-top
padding-right
padding-bottom
padding-left
All the padding properties can have the following values:

length - specifies a padding in px, pt, cm, etc.
% - specifies a padding in % of the width of the containing element
inherit - specifies that the padding should be inherited from the parent element
Note: Negative values are not allowed.

div {
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}

Padding - Shorthand Property

To shorten the code, it is possible to specify all the padding properties in one property.

The padding property is a shorthand property for the following individual padding properties:

padding-top
padding-right
padding-bottom
padding-left
So, here is how it works:
If the padding property has four values:
padding: 25px 50px 75px 100px;
top padding is 25px
right padding is 50px
bottom padding is 75px
left padding is 100px

div {
  padding: 25px 50px 75px 100px;
}

If the padding property has three values:
padding: 25px 50px 75px;
top padding is 25px
right and left paddings are 50px
bottom padding is 75px

div {
  padding: 25px 50px 75px;
}

If the padding property has two values:
padding: 25px 50px;
top and bottom paddings are 25px
right and left paddings are 50px

div {
  padding: 25px 50px;
}

If the padding property has one value:

padding: 25px;
all four paddings are 25px

div {
  padding: 25px;
}

Padding and Element Width

The CSS width property specifies the width of the element's content area. The content area is the portion inside the padding, border, and margin of an element (the box model).
So, if an element has a specified width, the padding added to that element will be added to the total width of the element. This is often an undesirable result.

div {
  width: 300px;
  padding: 25px;
}

To keep the width at 300px, no matter the amount of padding, you can use the box-sizing property. This causes the element to maintain its actual width; if you increase the padding, the available content space will decrease.

div {
  width: 300px;
  padding: 25px;
  box-sizing: border-box;
}

''', lessonCode: '''
div {
  padding-top: 50px;
  padding-right: 30px;
  padding-bottom: 50px;
  padding-left: 80px;
}

div {
  padding: 25px 50px 75px 100px;
}

div {
  padding: 25px 50px 75px;
}

div {
  padding: 25px 50px;
}

div {
  padding: 25px;
}

div {
  width: 300px;
  padding: 25px;
}

div {
  width: 300px;
  padding: 25px;
  box-sizing: border-box;
}

'''),
  LessonHtmlModel(lessonText: '''
CSS Height, Width and Max-width

The CSS height and width properties are used to set the height and width of an element.
The CSS max-width property is used to set the maximum width of an element.


CSS Setting height and width

The height and width properties are used to set the height and width of an element.
The height and width properties do not include padding, borders, or margins. It sets the height/width of the area inside the padding, border, and margin of the element.


CSS height and width Values

The height and width properties may have the following values:
auto - This is default. The browser calculates the height and width
length - Defines the height/width in px, cm, etc.
% - Defines the height/width in percent of the containing block
initial - Sets the height/width to its default value
inherit - The height/width will be inherited from its parent value

CSS height and width Examples

div {
  height: 200px;
  width: 50%;
  background-color: powderblue;
}

div {
  height: 100px;
  width: 500px;
  background-color: powderblue;
}

Setting max-width

The max-width property is used to set the maximum width of an element.
The max-width can be specified in length values, like px, cm, etc., or in percent (%) of the containing block, or set to none (this is default. Means that there is no maximum width).
The problem with the <div> above occurs when the browser window is smaller than the width of the element (500px). The browser then adds a horizontal scrollbar to the page.
Using max-width instead, in this situation, will improve the browser's handling of small windows.

div {
  max-width: 500px;
  height: 100px;
  background-color: powderblue;
}
''', lessonCode: '''
div {
  height: 200px;
  width: 50%;
  background-color: powderblue;
}

div {
  height: 100px;
  width: 500px;
  background-color: powderblue;
}

div {
  max-width: 500px;
  height: 100px;
  background-color: powderblue;
}


'''),
  LessonHtmlModel(lessonText: '''
CSS Math Functions

The CSS math functions allow mathematical expressions to be used as property values. Here, we will explain the calc(), max() and min() functions.

The calc() Function

The calc() function performs a calculation to be used as the property value.

#div1 {
  position: absolute;
  left: 50px;
  width: calc(100% - 100px);
  border: 1px solid black;
  background-color: yellow;
  padding: 5px;
}

The max() Function

The max() function uses the largest value, from a comma-separated list of values, as the property value.

#div1 {
  background-color: yellow;
  height: 100px;
  width: max(50%, 300px);
}

The min() Function

The min() function uses the smallest value, from a comma-separated list of values, as the property value.

CSS Syntax

min(value1, value2, ...)

div1 {
  background-color: yellow;
  height: 100px;
  width: min(50%, 300px);
}
''', lessonCode: '''
#div1 {
  position: absolute;
  left: 50px;
  width: calc(100% - 100px);
  border: 1px solid black;
  background-color: yellow;
  padding: 5px;
}

#div1 {
  background-color: yellow;
  height: 100px;
  width: max(50%, 300px);
}

#div1 {
  background-color: yellow;
  height: 100px;
  width: min(50%, 300px);
}
'''),
];

List<LessonHtmlModel> lessonsPython = [
  LessonHtmlModel(
      lessonCode: '''
      # Program to print "Hello, World!"
      print("Hello, World!")
    ''',
      lessonText: 'Introduction to Python: A simple "Hello, World!" program'),
  LessonHtmlModel(lessonCode: '''
      # Program to add two numbers
      num1 = 3
      num2 = 5

      # Add two numbers
      sum = num1 + num2

      # Display the sum
      print('The sum of {0} and {1} is {2}'.format(num1, num2, sum))
    ''', lessonText: 'Variables and Operators: Adding two numbers in Python'),
  LessonHtmlModel(
      lessonCode: '''
      # Program to check if a number is positive, negative or zero

      num = 0

      if num > 0:
          print("Positive number")
      elif num == 0:
          print("Zero")
      else:
          print("Negative number")
    ''',
      lessonText:
          'Conditional Statements: Checking if a number is positive, negative or zero in Python'),
  LessonHtmlModel(
      lessonCode: '''
      # Program to find the largest number among the three input numbers

      # take three numbers from user
      num1 = float(input("Enter first number: "))
      num2 = float(input("Enter second number: "))
      num3 = float(input("Enter third number: "))

      if (num1 >= num2) and (num1 >= num3):
          largest = num1
      elif (num2 >= num1) and (num2 >= num3):
          largest = num2
      else:
          largest = num3

      # display the largest number
      print("The largest number is", largest)
    ''',
      lessonText:
          'Control Flow Statements: Finding the largest number among three input numbers in Python'),
  LessonHtmlModel(
      lessonCode: '''
      # Program to find the factorial of a number using recursion

      def factorial(n):
          if n == 1:
              return 1
          else:
              return n * factorial(n-1)

      num = int(input("Enter a number: "))

      # check if the number is negative
      if num < 0:
          print("Sorry, factorial does not exist for negative numbers")
      elif num == 0:
          print("The factorial of 0 is 1")
      else:
          print("The factorial of", num, "is", factorial(num))
    ''',
      lessonText:
          'Functions and Recursion: Finding the factorial of a number using recursion in Python'),
  LessonHtmlModel(
      lessonCode: '''
      # Program to sort words in alphabetic order

      # take input from the user
      my_str = input("Enter a string: ")

      # breakdown the string into a list of words
      words = my_str.split()

      # sort the list
      words.sort()

      # display the sorted words
      print("The sorted words are:")
      for word in words:
          print(word)
    ''',
      lessonText:
          'Lists and Strings: Sorting words in alphabetic order in Python'),
  LessonHtmlModel(lessonCode: '''
      # Program to find the sum of natural numbers up to n

      n = int(input("Enter a number: "))

      # calculate the sum
      sum = 0
      for i in range(1, n+1):
          sum += i''', lessonText: '''
Factorials:

Program to find the sum of natural numbers up to n
'''),
];

List<LessonHtmlModel> lessonsCpp = [
  LessonHtmlModel(
      lessonCode: '''
// Lesson 1: Hello World

#include <iostream>

int main() {
std::cout << "Hello World!";
return 0;
}
''',
      lessonText:
          "Learn how to write and run your first C++ program that prints out 'Hello World!' to the console."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 2: Variables

#include <iostream>

int main() {
int x = 5;
float y = 3.14;
char z = 'A';
bool flag = true;

std::cout << x << std::endl;
std::cout << y << std::endl;
std::cout << z << std::endl;
std::cout << flag << std::endl;

return 0;
}
''',
      lessonText:
          "Learn how to declare and assign values to variables in C++, and how to print them out to the console."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 3: Data Types

#include <iostream>

int main() {
int num = 10;
float pi = 3.1415;
char letter = 'A';
bool isTrue = true;

std::cout << num << std::endl;
std::cout << pi << std::endl;
std::cout << letter << std::endl;
std::cout << isTrue << std::endl;

return 0;
}
''',
      lessonText:
          "Learn about the different data types available in C++, including integers, floating-point numbers, characters, and booleans."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 4: Functions

#include <iostream>

int add(int a, int b) {
return a + b;
}

int main() {
int result = add(3, 4);
std::cout << result << std::endl;

return 0;
}
''',
      lessonText:
          "Learn how to define and call functions in C++, and how to use them to perform tasks and return values."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 5: Conditional Statements

#include <iostream>

int main() {
int age = 25;

if (age >= 18) {
std::cout << "You are an adult" << std::endl;
} else {
std::cout << "You are a minor" << std::endl;
}

return 0;
}
''',
      lessonText:
          "Learn how to use conditional statements, such as if/else, to make decisions in your C++ code based on different conditions."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 6: Loops

#include <iostream>

int main() {
for (int i = 0; i < 5; i++) {
std::cout << i << std::endl;
}

int j = 0;
while (j < 5) {
std::cout << j << std::endl;
j++;
}

return 0;
}
''',
      lessonText:
          "Learn how to use loops, such as for and while, to iterate through lists of data and perform tasks on each item."),
  LessonHtmlModel(
      lessonCode: '''
// Lesson 7: Arrays

#include <iostream>

int main() {
int numbers[] = {1, 2, 3, 4, 5};''',
      lessonText: '''// Lesson 7: Arrays with examples''')
];
