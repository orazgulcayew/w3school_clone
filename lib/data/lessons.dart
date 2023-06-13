import '../model/lesson_html.dart';

List<LessonHtmlModel> lessonsHtml = [
  LessonHtmlModel(
      lessonCode: '''<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>This is a Heading</h1>
<p>This is a paragraph.</p>

</body>
</html>''',
      lessonText:
          "HTML is the standard markup language for Web pages. With HTML you can create your own Website. HTML is easy to learn - You will enjoy it!"),
  LessonHtmlModel(lessonCode: '''
<!DOCTYPE html>
<html>
<head>
<title>Page Title</title>
</head>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
''', lessonText: '''
What is HTML?

HTML stands for Hyper Text Markup Language
HTML is the standard markup language for creating Web pages
HTML describes the structure of a Web page
HTML consists of a series of elements
HTML elements tell the browser how to display the content
HTML elements label pieces of content such as "this is a heading", "this is a paragraph", "this is a link", etc.
'''),
  LessonHtmlModel(lessonCode: '''
<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>
''', lessonText: '''
HTML Elements

<tagname>Content goes here...</tagname>

Examples of some HTML elements:
<h1>My First Heading</h1>
<p>My first paragraph.</p>

Nested HTML Elements

HTML elements can be nested (this means that elements can contain other elements).

All HTML documents consist of nested HTML elements.

The following example contains four HTML elements (<html>, <body>, <h1> and <p>):

<!DOCTYPE html>
<html>
<body>

<h1>My First Heading</h1>
<p>My first paragraph.</p>

</body>
</html>

Empty HTML Elements

HTML elements with no content are called empty elements.
The <br> tag defines a line break, and is an empty element without a closing tag:

<p>This is a <br> paragraph with a line break.</p>
'''),
  LessonHtmlModel(lessonCode: '''
<!DOCTYPE html>
<html>
<body>

<a href="https://etut.edu.tm/en">Visit Oguzhan site</a>
<p style="color:red;">This is a red paragraph.</p>
<img src="https://etut.edu.tm/media/images/coding_kAyW1sS.png" alt="Computer faculty icon">


</body>
</html>
''', lessonText: '''
HTML Attributes

All HTML elements can have attributes
Attributes provide additional information about elements
Attributes are always specified in the start tag
Attributes usually come in name/value pairs like: name="value"

The href Attribute

The <a> tag defines a hyperlink. The href attribute specifies the URL of the page the link goes to:

<a href="https://etut.edu.tm/en">Visit Oguzhan site</a>

The src Attribute

<img src="img_girl.jpg">

There are two ways to specify the URL in the src attribute:

1. Absolute URL - Links to an external image that is hosted on another website. Example: src="https://www.w3schools.com/images/img_girl.jpg".

Notes: External images might be under copyright. If you do not get permission to use it, you may be in violation of copyright laws. In addition, you cannot control external images; it can suddenly be removed or changed.

2. Relative URL - Links to an image that is hosted within the website. Here, the URL does not include the domain name. If the URL begins without a slash, it will be relative to the current page. Example: src="img_girl.jpg". If the URL begins with a slash, it will be relative to the domain. Example: src="/images/img_girl.jpg".

Tip: It is almost always best to use relative URLs. They will not break if you change domain.

The alt Attribute
The required alt attribute for the <img> tag specifies an alternate text for an image, if the image for some reason cannot be displayed. This can be due to a slow connection, or an error in the src attribute, or if the user uses a screen reader.

<img src="img_girl.jpg" alt="Girl with a jacket">

The width and height Attributes

The <img> tag should also contain the width and height attributes, which specify the width and height of the image (in pixels):

<img src="img_girl.jpg" width="500" height="600">

The style Attribute

<p style="color:red;">This is a red paragraph.</p>
'''),
  LessonHtmlModel(lessonText: '''
HTML Headings

HTML headings are titles or subtitles that you want to display on a webpage.
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>

Headings Are Important

Search engines use the headings to index the structure and content of your web pages.

Users often skim a page by its headings. It is important to use headings to show the document structure.

<h1> headings should be used for main headings, followed by <h2> headings, then the less important <h3>, and so on.

Bigger Headings

Each HTML heading has a default size. However, you can specify the size for any heading with the style attribute, using the CSS font-size property:
<h1 style="font-size:60px;">Heading 1</h1>
''', lessonCode: '''
<h1>Heading 1</h1>
<h2>Heading 2</h2>
<h3>Heading 3</h3>
<h4>Heading 4</h4>
<h5>Heading 5</h5>
<h6>Heading 6</h6>

<h1 style="font-size:60px;">Heading 1</h1>
'''),
  LessonHtmlModel(lessonText: '''
HTML Paragraphs

A paragraph always starts on a new line, and is usually a block of text.

HTML Paragraphs

The HTML <p> element defines a paragraph.
A paragraph always starts on a new line, and browsers automatically add some white space (a margin) before and after a paragraph.

<p>This is a paragraph.</p>
<p>This is another paragraph.</p>

HTML Display

You cannot be sure how HTML will be displayed.

Large or small screens, and resized windows will create different results.

With HTML, you cannot change the display by adding extra spaces or extra lines in your HTML code.

The browser will automatically remove any extra spaces and lines when the page is displayed:

<p>
This paragraph
contains a lot of lines
in the source code,
but the browser
ignores it.
</p>

<p>
This paragraph
contains         a lot of spaces
in the source         code,
but the        browser
ignores it.
</p>

HTML Horizontal Rules

The <hr> tag defines a thematic break in an HTML page, and is most often displayed as a horizontal rule.

The <hr> element is used to separate content (or define a change) in an HTML page:

<h1>This is heading 1</h1>
<p>This is some text.</p>
<hr>
<h2>This is heading 2</h2>
<p>This is some other text.</p>
<hr>

The <hr> tag is an empty tag, which means that it has no end tag.

HTML Line Breaks

The HTML <br> element defines a line break.

Use <br> if you want a line break (a new line) without starting a new paragraph:

<p>This is<br>a paragraph<br>with line breaks.</p>

The <br> tag is an empty tag, which means that it has no end tag.

The Poem Problem

This poem will display on a single line:

<p>
  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me.
</p>

Solution - The HTML <pre> Element

The HTML <pre> element defines preformatted text.

The text inside a <pre> element is displayed in a fixed-width font (usually Courier), and it preserves both spaces and line breaks:

<pre>
  My Bonnie lies over the ocean.

  My Bonnie lies over the sea.

  My Bonnie lies over the ocean.

  Oh, bring back my Bonnie to me.
</pre>

''', lessonCode: '''
<p>
This paragraph
contains a lot of lines
in the source code,
but the browser
ignores it.
</p>

<p>
This paragraph
contains         a lot of spaces
in the source         code,
but the        browser
ignores it.
</p>

<h1>This is heading 1</h1>
<p>This is some text.</p>
<hr>
<h2>This is heading 2</h2>
<p>This is some other text.</p>
<hr>

<p>This is<br>a paragraph<br>with line breaks.</p>

'''),
  LessonHtmlModel(lessonText: '''
HTML Styles

The HTML style attribute is used to add styles to an element, such as color, font, size, and more.

I am Red

I am Blue

I am Big

The HTML Style Attribute

Setting the style of an HTML element, can be done with the style attribute.

The HTML style attribute has the following syntax:

<tagname style="property:value;">

The property is a CSS property. The value is a CSS value.

Background Color

The CSS background-color property defines the background color for an HTML element.

<body style="background-color:powderblue;">

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>

<body>

<h1 style="background-color:powderblue;">This is a heading</h1>
<p style="background-color:tomato;">This is a paragraph.</p>

</body>

Text Color

The CSS color property defines the text color for an HTML element:

Fonts

The CSS font-family property defines the font to be used for an HTML element:

<h1 style="font-family:verdana;">This is a heading</h1>
<p style="font-family:courier;">This is a paragraph.</p>

Text Size

The CSS font-size property defines the text size for an HTML element:

<h1 style="font-size:300%;">This is a heading</h1>
<p style="font-size:160%;">This is a paragraph.</p>

Text Alignment

The CSS text-align property defines the horizontal text alignment for an HTML element:

<h1 style="text-align:center;">Centered Heading</h1>
<p style="text-align:center;">Centered paragraph.</p>

Chapter Summary

Use the style attribute for styling HTML elements
Use background-color for background color
Use color for text colors
Use font-family for text fonts
Use font-size for text sizes
Use text-align for text alignment


''', lessonCode: '''
<body style="background-color:powderblue;">

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>

<body>

<h1 style="background-color:powderblue;">This is a heading</h1>
<p style="background-color:tomato;">This is a paragraph.</p>

</body

<h1 style="color:blue;">This is a heading</h1>
<p style="color:red;">This is a paragraph.</p>

<h1 style="font-family:verdana;">This is a heading</h1>
<p style="font-family:courier;">This is a paragraph.</p>

<h1 style="font-size:300%;">This is a heading</h1>
<p style="font-size:160%;">This is a paragraph.</p>


<h1 style="text-align:center;">Centered Heading</h1>
<p style="text-align:center;">Centered paragraph.</p>
'''),
  LessonHtmlModel(lessonText: '''
HTML Text Formatting

HTML contains several elements for defining text with a special meaning.

This text is bold

This text is italic

This is subscript and superscript

HTML Formatting Elements

Formatting elements were designed to display special types of text:

<b> - Bold text
<strong> - Important text
<i> - Italic text
<em> - Emphasized text
<mark> - Marked text
<small> - Smaller text
<del> - Deleted text
<ins> - Inserted text
<sub> - Subscript text
<sup> - Superscript text

HTML <b> and <strong> Elements
The HTML <b> element defines bold text, without any extra importance.

<b>This text is bold</b>

The HTML <strong> element defines text with strong importance. The content inside is typically displayed in bold.

<strong>This text is important!</strong>

HTML <i> and <em> Elements

The HTML <i> element defines a part of text in an alternate voice or mood. The content inside is typically displayed in italic.

Tip: The <i> tag is often used to indicate a technical term, a phrase from another language, a thought, a ship name, etc.

<i>This text is italic</i>

The HTML <em> element defines emphasized text. The content inside is typically displayed in italic.

Tip: A screen reader will pronounce the words in <em> with an emphasis, using verbal stress.

<em>This text is emphasized</em>

HTML <small> Element

The HTML <small> element defines smaller text

<small>This is some smaller text.</small>

HTML <mark> Element

The HTML <mark> element defines text that should be marked or highlighted:

<p>Do not forget to buy <mark>milk</mark> today.</p>

HTML <del> Element

The HTML <del> element defines text that has been deleted from a document. Browsers will usually strike a line through deleted text:

<p>My favorite color is <del>blue</del> red.</p>

HTML <ins> Element

The HTML <ins> element defines a text that has been inserted into a document. Browsers will usually underline inserted text:

<p>My favorite color is <del>blue</del> <ins>red</ins>.</p>

HTML <sub> Element

The HTML <sub> element defines subscript text. Subscript text appears half a character below the normal line, and is sometimes rendered in a smaller font. Subscript text can be used for chemical formulas, like H2O:

<p>This is <sub>subscripted</sub> text.</p>

HTML <sup> Element

The HTML <sup> element defines superscript text. Superscript text appears half a character above the normal line, and is sometimes rendered in a smaller font. Superscript text can be used for footnotes, like WWW[1]:

<p>This is <sup>superscripted</sup> text.</p>


''', lessonCode: '''
<b>This text is bold</b>

<strong>This text is important!</strong>

<i>This text is italic</i>

<em>This text is emphasized</em>

<small>This is some smaller text.</small>

<p>Do not forget to buy <mark>milk</mark> today.</p>

<p>My favorite color is <del>blue</del> red.</p>

<p>My favorite color is <del>blue</del> <ins>red</ins>.</p>

<p>This is <sub>subscripted</sub> text.</p>

<p>This is <sup>superscripted</sup> text.</p>
'''),
  LessonHtmlModel(lessonText: '''
HTML Comments

HTML comments are not displayed in the browser, but they can help document your HTML source code.

HTML Comment Tag

You can add comments to your HTML source by using the following syntax:

<!-- Write your comments here -->

Notice that there is an exclamation point (!) in the start tag, but not in the end tag.

Add Comments

With comments you can place notifications and reminders in your HTML code:

<!-- This is a comment -->

<p>This is a paragraph.</p>

<!-- Remember to add more information here -->

Hide Content

Comments can be used to hide content.

This can be helpful if you hide content temporarily:

<p>This is a paragraph.</p>

<!-- <p>This is another paragraph </p> -->

<p>This is a paragraph too.</p>

You can also hide more than one line. Everything between the <!-- and the --> will be hidden from the display.

<p>This is a paragraph.</p>
<!--
<p>Look at this cool image:</p>
<img border="0" src="pic_trulli.jpg" alt="Trulli">
-->
<p>This is a paragraph too.</p>

Comments are also great for debugging HTML, because you can comment out HTML lines of code, one at a time, to search for errors.

Hide Inline Content

Comments can be used to hide parts in the middle of the HTML code.

<p>This <!-- great text --> is a paragraph.</p>


''', lessonCode: '''
<!-- Write your comments here -->

<!-- This is a comment -->

<p>This is a paragraph.</p>

<!-- Remember to add more information here -

<p>This is a paragraph.</p>

<!-- <p>This is another paragraph </p> -->

<p>This is a paragraph too.</p>

<p>This is a paragraph.</p>
<!--
<p>Look at this cool image:</p>
<img border="0" src="pic_trulli.jpg" alt="Trulli">
-->
<p>This is a paragraph too.</p>

<p>This <!-- great text --> is a paragraph.</p>

'''),
  LessonHtmlModel(lessonText: '''
HTML Colors

HTML colors are specified with predefined color names, or with RGB, HEX, HSL, RGBA, or HSLA values.

Color Names

In HTML, a color can be specified by using a color name:

Tomato        Orange
DodgerBlue    MediumSeaGreen
Gray          SlateBlue
Violet        LightGray

HTML supports 140 standard color names.

Background Color

You can set the background color for HTML elements:

<h1 style="background-color:DodgerBlue;">Hello World</h1>
<p style="background-color:Tomato;">Lorem ipsum...</p>

Text Color

You can set the color of text:

<h1 style="color:Tomato;">Hello World</h1>
<p style="color:DodgerBlue;">Lorem ipsum...</p>
<p style="color:MediumSeaGreen;">Ut wisi enim...</p>

Border Color

You can set the color of borders:

<h1 style="border:2px solid Tomato;">Hello World</h1>
<h1 style="border:2px solid DodgerBlue;">Hello World</h1>
<h1 style="border:2px solid Violet;">Hello World</h1>

Color Values

In HTML, colors can also be specified using RGB values, HEX values, HSL values, RGBA values, and HSLA values.

The following three <div> elements have their background color set with RGB, HEX, and HSL values:

rgb(255, 99, 71)
#ff6347
hsl(9, 100%, 64%)

The following two <div> elements have their background color set with RGBA and HSLA values, which add an Alpha channel to the color (here we have 50% transparency):

rgba(255, 99, 71, 0.5)
hsla(9, 100%, 64%, 0.5)

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
HTML RGB and RGBA Colors

An RGB color value represents RED, GREEN, and BLUE light sources.

An RGBA color value is an extension of RGB with an Alpha channel (opacity).

RGB Color Values

In HTML, a color can be specified as an RGB value, using this formula:

rgb(red, green, blue)

Each parameter (red, green, and blue) defines the intensity of the color with a value between 0 and 255.

This means that there are 256 x 256 x 256 = 16777216 possible colors!

For example, rgb(255, 0, 0) is displayed as red, because red is set to its highest value (255), and the other two (green and blue) are set to 0.

Another example, rgb(0, 255, 0) is displayed as green, because green is set to its highest value (255), and the other two (red and blue) are set to 0.

To display black, set all color parameters to 0, like this: rgb(0, 0, 0).

To display white, set all color parameters to 255, like this: rgb(255, 255, 255).

Experiment by mixing the RGB values below:


rgb(255, 99, 71)

RED- 255      GREEN-99      BLUE-71

''', lessonCode: '''
rgb(255, 99, 71)

RED- 255      GREEN-99      BLUE-71
'''),
  LessonHtmlModel(lessonText: '''
HTML HEX Colors

A hexadecimal color is specified with: #RRGGBB, where the RR (red), GG (green) and BB (blue) hexadecimal integers specify the components of the color.

HEX Color Values

In HTML, a color can be specified using a hexadecimal value in the form:

#rrggbb

Where rr (red), gg (green) and bb (blue) are hexadecimal values between 00 and ff (same as decimal 0-255).

For example, #ff0000 is displayed as red, because red is set to its highest value (ff), and the other two (green and blue) are set to 00.

Another example, #00ff00 is displayed as green, because green is set to its highest value (ff), and the other two (red and blue) are set to 00.

To display black, set all color parameters to 00, like this: #000000.

To display white, set all color parameters to ff, like this: #ffffff.

Experiment by mixing the HEX values below:


#ff6347

RED-ff        GREEN-63        BLUE-47
''', lessonCode: '''
#ff0000

RED--ff       GREEN-00        BLUE-00
'''),
  LessonHtmlModel(lessonText: '''
HTML HSL and HSLA Colors

HSL stands for hue, saturation, and lightness.

HSLA color values are an extension of HSL with an Alpha channel (opacity).

HSL Color Values

In HTML, a color can be specified using hue, saturation, and lightness (HSL) in the form:
hsl(hue, saturation, lightness)
Hue is a degree on the color wheel from 0 to 360. 0 is red, 120 is green, and 240 is blue.
Saturation is a percentage value. 0% means a shade of gray, and 100% is the full color.
Lightness is also a percentage value. 0% is black, and 100% is white.
Experiment by mixing the HSL values below:

hsl(0, 100%, 50%)
 
HUE- 0        SATURATION- 100%       LIGHTNESS- 50%

Saturation

Saturation can be described as the intensity of a color.
100% is pure color, no shades of gray.
50% is 50% gray, but you can still see the color.
0% is completely gray; you can no longer see the color.

Lightness

The lightness of a color can be described as how much light you want to give the color, where 0% means no light (black), 50% means 50% light (neither dark nor light), and 100% means full lightness (white).
Shades of Gray
Shades of gray are often defined by setting the hue and saturation to 0, and adjusting the lightness from 0% to 100% to get darker/lighter shades:

HSLA Color Values

HSLA color values are an extension of HSL color values, with an Alpha channel - which specifies the opacity for a color.
An HSLA color value is specified with:
hsla(hue, saturation, lightness, alpha)
The alpha parameter is a number between 0.0 (fully transparent) and 1.0 (not transparent at all):

''', lessonCode: '''
hsl(0, 100%, 50%)
 
HUE- 0        SATURATION- 100%       LIGHTNESS- 50%

'''),
  LessonHtmlModel(lessonText: '''
HTML Styles - CSS

CSS stands for Cascading Style Sheets.
CSS saves a lot of work. It can control the layout of multiple web pages all at once.

What is CSS?

Cascading Style Sheets (CSS) is used to format the layout of a webpage.
With CSS, you can control the color, font, the size of text, the spacing between elements, how elements are positioned and laid out, what background images or background colors are to be used, different displays for different devices and screen sizes, and much more!
Tip: The word cascading means that a style applied to a parent element will also apply to all children elements within the parent. So, if you set the color of the body text to "blue", all headings, paragraphs, and other text elements within the body will also get the same color (unless you specify something else)!

Using CSS

CSS can be added to HTML documents in 3 ways:

Inline - by using the style attribute inside HTML elements
Internal - by using a <style> element in the <head> section
External - by using a <link> element to link to an external CSS file
The most common way to add CSS, is to keep the styles in external CSS files. However, in this tutorial we will use inline and internal styles, because this is easier to demonstrate, and easier for you to try it yourself.

Inline CSS

An inline CSS is used to apply a unique style to a single HTML element.
An inline CSS uses the style attribute of an HTML element.
The following example sets the text color of the <h1> element to blue, and the text color of the <p> element to red:

<h1 style="color:blue;">A Blue Heading</h1>

<p style="color:red;">A red paragraph.</p>

Internal CSS

An internal CSS is used to define a style for a single HTML page.
An internal CSS is defined in the <head> section of an HTML page, within a <style> element.
The following example sets the text color of ALL the <h1> elements (on that page) to blue, and the text color of ALL the <p> elements to red. In addition, the page will be displayed with a "powderblue" background color: 

<!DOCTYPE html>
<html>
<head>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>

External CSS

An external style sheet is used to define the style for many HTML pages.
To use an external style sheet, add a link to it in the <head> section of each HTML page:

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>

The external style sheet can be written in any text editor. The file must not contain any HTML code, and must be saved with a .css extension.
Here is what the "styles.css" file looks like:

body {
  background-color: powderblue;
}
h1 {
  color: blue;
}
p {
  color: red;
}

CSS Colors, Fonts and Sizes

Here, we will demonstrate some commonly used CSS properties. You will learn more about them later.
The CSS color property defines the text color to be used.
The CSS font-family property defines the font to be used.
The CSS font-size property defines the text size to be used.

<!DOCTYPE html>
<html>
<head>
<style>
h1 {
  color: blue;
  font-family: verdana;
  font-size: 300%;
}
p {
  color: red;
  font-family: courier;
  font-size: 160%;
}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>

CSS Border

The CSS border property defines a border around an HTML element.
Tip: You can define a border for nearly all HTML elements.

p {
  border: 2px solid powderblue;
}

CSS Padding

The CSS padding property defines a padding (space) between the text and the border.

p {
  border: 2px solid powderblue;
  padding: 30px;
}

CSS Margin

The CSS margin property defines a margin (space) outside the border.

p {
  border: 2px solid powderblue;
  margin: 50px;
}

Link to External CSS

External style sheets can be referenced with a full URL or with a path relative to the current web page.

<link rel="stylesheet" href="https://www.w3schools.com/html/styles.css">

<link rel="stylesheet" href="/html/styles.css">

<link rel="stylesheet" href="styles.css">

Chapter Summary

Use the HTML style attribute for inline styling
Use the HTML <style> element to define internal CSS
Use the HTML <link> element to refer to an external CSS file
Use the HTML <head> element to store <style> and <link> elements
Use the CSS color property for text colors
Use the CSS font-family property for text fonts
Use the CSS font-size property for text sizes
Use the CSS border property for borders
Use the CSS padding property for space inside the border
Use the CSS margin property for space outside the border
''', lessonCode: '''
<h1 style="color:blue;">A Blue Heading</h1>
<p style="color:red;">A red paragraph.</p>

<!DOCTYPE html>
<html>
<head>
<style>
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
  <link rel="stylesheet" href="styles.css">
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>


body {
  background-color: powderblue;
}
h1 {
  color: blue;
}
p {
  color: red;
}

<!DOCTYPE html>
<html>
<head>
<style>
h1 {
  color: blue;
  font-family: verdana;
  font-size: 300%;
}
p {
  color: red;
  font-family: courier;
  font-size: 160%;
}
</style>
</head>
<body>

<h1>This is a heading</h1>
<p>This is a paragraph.</p>

</body>
</html>


p {
  border: 2px solid powderblue;
}


p {
  border: 2px solid powderblue;
  padding: 30px;
}


p {
  border: 2px solid powderblue;
  margin: 50px;
}

<link rel="stylesheet" href="https://www.w3schools.com/html/styles.css">

<link rel="stylesheet" href="/html/styles.css">

<link rel="stylesheet" href="styles.css">
'''),
  LessonHtmlModel(lessonText: '''
HTML Links

Links are found in nearly all web pages. Links allow users to click their way from page to page.

HTML Links - Hyperlinks

HTML links are hyperlinks.
You can click on a link and jump to another document.
When you move the mouse over a link, the mouse arrow will turn into a little hand.

HTML Links - Syntax

The HTML <a> tag defines a hyperlink. It has the following syntax:

<a href="url">link text</a>

The most important attribute of the <a> element is the href attribute, which indicates the link's destination.
The link text is the part that will be visible to the reader.
Clicking on the link text, will send the reader to the specified URL address.

<a href="https://www.w3schools.com/">Visit W3Schools.com!</a>

By default, links will appear as follows in all browsers:

An unvisited link is underlined and blue
A visited link is underlined and purple
An active link is underlined and red

HTML Links - The target Attribute

By default, the linked page will be displayed in the current browser window. To change this, you must specify another target for the link.
The target attribute specifies where to open the linked document.
The target attribute can have one of the following values:

_self - Default. Opens the document in the same window/tab as it was clicked
_blank - Opens the document in a new window or tab
_parent - Opens the document in the parent frame
_top - Opens the document in the full body of the window

<a href="https://www.w3schools.com/" target="_blank">Visit W3Schools!</a>

Absolute URLs vs. Relative URLs

Both examples above are using an absolute URL (a full web address) in the href attribute.
A local link (a link to a page within the same website) is specified with a relative URL (without the "https://www" part):

<h2>Absolute URLs</h2>
<p><a href="https://www.w3.org/">W3C</a></p>
<p><a href="https://www.google.com/">Google</a></p>

<h2>Relative URLs</h2>
<p><a href="html_images.asp">HTML Images</a></p>
<p><a href="/css/default.asp">CSS Tutorial</a></p>

HTML Links - Use an Image as a Link

To use an image as a link, just put the <img> tag inside the <a> tag:

<a href="default.asp">
<img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>

Link to an Email Address

Use mailto: inside the href attribute to create a link that opens the user's email program (to let them send a new email):

<a href="mailto:someone@example.com">Send email</a>

Button as a Link

To use an HTML button as a link, you have to add some JavaScript code.

JavaScript allows you to specify what happens at certain events, such as a click of a button:

<button onclick="document.location='default.asp'">HTML Tutorial</button>

Link Titles

The title attribute specifies extra information about an element. The information is most often shown as a tooltip text when the mouse moves over the element.

<a href="https://www.w3schools.com/html/" title="Go to W3Schools HTML section">Visit our HTML Tutorial</a>

More on Absolute URLs and Relative URLs

<a href="https://www.w3schools.com/html/default.asp">HTML tutorial</a>

<a href="/html/default.asp">HTML tutorial</a>

<a href="default.asp">HTML tutorial</a>

Chapter Summary

Use the <a> element to define a link
Use the href attribute to define the link address
Use the target attribute to define where to open the linked document
Use the <img> element (inside <a>) to use an image as a link
Use the mailto: scheme inside the href attribute to create a link that opens the user's email program

''', lessonCode: '''
<a href="url">link text</a>

<a href="https://www.w3schools.com/">Visit W3Schools.com!</a>

<a href="https://www.w3schools.com/" target="_blank">Visit W3Schools!</a>

<h2>Absolute URLs</h2>
<p><a href="https://www.w3.org/">W3C</a></p>
<p><a href="https://www.google.com/">Google</a></p>

<h2>Relative URLs</h2>
<p><a href="html_images.asp">HTML Images</a></p>
<p><a href="/css/default.asp">CSS Tutorial</a></p>

<a href="default.asp">
<img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>

<a href="mailto:someone@example.com">Send email</a>

'''),
  LessonHtmlModel(lessonText: '''
HTML Links - Different Colors

An HTML link is displayed in a different color depending on whether it has been visited, is unvisited, or is active.

HTML Link Colors

By default, a link will appear like this (in all browsers):
An unvisited link is underlined and blue
A visited link is underlined and purple
An active link is underlined and red
You can change the link state colors, by using CSS:

<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>

Link Buttons

A link can also be styled as a button, by using CSS:

<style>
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
</style>

''', lessonCode: '''
<style>
a:link {
  color: green;
  background-color: transparent;
  text-decoration: none;
}

a:visited {
  color: pink;
  background-color: transparent;
  text-decoration: none;
}

a:hover {
  color: red;
  background-color: transparent;
  text-decoration: underline;
}

a:active {
  color: yellow;
  background-color: transparent;
  text-decoration: underline;
}
</style>


<style>
a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
</style>


'''),
  LessonHtmlModel(lessonText: '''
HTML Links - Create Bookmarks

HTML links can be used to create bookmarks, so that readers can jump to specific parts of a web page.

Create a Bookmark in HTML

Bookmarks can be useful if a web page is very long.
To create a bookmark - first create the bookmark, then add a link to it.
When the link is clicked, the page will scroll down or up to the location with the bookmark.

<h2 id="C4">Chapter 4</h2>

<a href="#C4">Jump to Chapter 4</a>

<a href="html_demo.html#C4">Jump to Chapter 4</a>

Chapter Summary

Use the id attribute (id="value") to define bookmarks in a page
Use the href attribute (href="#value") to link to the bookmark

''', lessonCode: '''
<h2 id="C4">Chapter 4</h2>

<a href="#C4">Jump to Chapter 4</a>

<a href="html_demo.html#C4">Jump to Chapter 4</a>
'''),
  LessonHtmlModel(lessonText: '''
HTML Images

Images can improve the design and the appearance of a web page.

<!DOCTYPE html>
<html>
<body>

<h2>HTML Image</h2>
<img src="https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg" alt="Trulli" width="170" height="111">

</body>
</html>

<img src="https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg" alt="Italian Trulli">

HTML Images Syntax

The HTML <img> tag is used to embed an image in a web page.
Images are not technically inserted into a web page; images are linked to web pages. The <img> tag creates a holding space for the referenced image.
The <img> tag is empty, it contains attributes only, and does not have a closing tag.
The <img> tag has two required attributes:
src - Specifies the path to the image
alt - Specifies an alternate text for the image

Syntax

<img src="url" alt="alternatetext">

The src Attribute

The required src attribute specifies the path (URL) to the image.
Note: When a web page loads, it is the browser, at that moment, that gets the image from a web server and inserts it into the page. Therefore, make sure that the image actually stays in the same spot in relation to the web page, otherwise your visitors will get a broken link icon. The broken link icon and the alt text are shown if the browser cannot find the image.

<img src="img_chania.jpg" alt="Flowers in Chania">

The alt Attribute

The required alt attribute provides an alternate text for an image, if the user for some reason cannot view it (because of slow connection, an error in the src attribute, or if the user uses a screen reader).
The value of the alt attribute should describe the image:

<img src="img_chania.jpg" alt="Flowers in Chania">

If a browser cannot find an image, it will display the value of the alt attribute:

<img src="wrongname.gif" alt="Flowers in Chania">

Image Size - Width and Height

<img src="img_girl.jpg" alt="Girl in a jacket" style="width:500px;height:600px;">

Alternatively, you can use the width and height attributes:

<img src="img_girl.jpg" alt="Girl in a jacket" width="500" height="600">

Width and Height, or Style?

The width, height, and style attributes are all valid in HTML.
However, we suggest using the style attribute. It prevents styles sheets from changing the size of images:

<!DOCTYPE html>
<html>
<head>
<style>
img {
  width: 100%;
}
</style>
</head>
<body>

<img src="html5.gif" alt="HTML5 Icon" width="128" height="128">
<img src="html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;">

</body>
</html>

Images in Another Folder

<img src="/images/html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;">

Images on Another Server/Website

Some web sites point to an image on another server.
To point to an image on another server, you must specify an absolute (full) URL in the src attribute:

<img src="https://www.w3schools.com/images/w3schools_green.jpg" alt="W3Schools.com">

Animated Images

<img src="programming.gif" alt="Computer Man" style="width:48px;height:48px;">

Image as a Link

<a href="default.asp">
  <img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>

Image Floating

<p><img src="smiley.gif" alt="Smiley face" style="float:right;width:42px;height:42px;">
The image will float to the right of the text.</p>

<p><img src="smiley.gif" alt="Smiley face" style="float:left;width:42px;height:42px;">
The image will float to the left of the text.</p>

''', lessonCode: '''
<img src="pic_trulli.jpg" alt="Italian Trulli">

<img src="url" alt="alternatetext">

<img src="img_chania.jpg" alt="Flowers in Chania">

<img src="img_chania.jpg" alt="Flowers in Chania">

<img src="img_girl.jpg" alt="Girl in a jacket" style="width:500px;height:600px;">

<img src="img_girl.jpg" alt="Girl in a jacket" width="500" height="600">

<!DOCTYPE html>
<html>
<head>
<style>
img {
  width: 100%;
}
</style>
</head>
<body>

<img src="html5.gif" alt="HTML5 Icon" width="128" height="128">
<img src="html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;">

</body>
</html>

<img src="/images/html5.gif" alt="HTML5 Icon" style="width:128px;height:128px;">
<img src="programming.gif" alt="Computer Man" style="width:48px;height:48px;">

<a href="default.asp">
  <img src="smiley.gif" alt="HTML tutorial" style="width:42px;height:42px;">
</a>
'''),
  LessonHtmlModel(lessonText: '''
HTML Tables

HTML tables allow web developers to arrange data into rows and columns.

Define an HTML Table

A table in HTML consists of table cells inside rows and columns.

<table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
</table>

Table Cells

Each table cell is defined by a <td> and a </td> tag.
Everything between <td> and </td> are the content of the table cell.

<table>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
</table>

 A table cell can contain all sorts of HTML elements: text, images, lists, links, other tables, etc.

 Table Rows

 Each table row starts with a <tr> and ends with a </tr> tag.

 <table>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
  <tr>
    <td>16</td>
    <td>14</td>
    <td>10</td>
  </tr>
</table>

You can have as many rows as you like in a table; just make sure that the number of cells are the same in each row.

Table Headers

Sometimes you want your cells to be table header cells. In those cases use the <th> tag instead of the <td> tag:

<table>
  <tr>
    <th>Person 1</th>
    <th>Person 2</th>
    <th>Person 3</th>
  </tr>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
  <tr>
    <td>16</td>
    <td>14</td>
    <td>10</td>
  </tr>
</table>
''', lessonCode: '''
<table>
  <tr>
    <th>Company</th>
    <th>Contact</th>
    <th>Country</th>
  </tr>
  <tr>
    <td>Alfreds Futterkiste</td>
    <td>Maria Anders</td>
    <td>Germany</td>
  </tr>
  <tr>
    <td>Centro comercial Moctezuma</td>
    <td>Francisco Chang</td>
    <td>Mexico</td>
  </tr>
</table>

<table>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
</table>

<table>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
  <tr>
    <td>16</td>
    <td>14</td>
    <td>10</td>
  </tr>
</table>

<table>
  <tr>
    <th>Person 1</th>
    <th>Person 2</th>
    <th>Person 3</th>
  </tr>
  <tr>
    <td>Emil</td>
    <td>Tobias</td>
    <td>Linus</td>
  </tr>
  <tr>
    <td>16</td>
    <td>14</td>
    <td>10</td>
  </tr>
</table>


'''),
  LessonHtmlModel(lessonText: '''
HTML Table Borders

HTML tables can have borders of different styles and shapes.

How To Add a Border

When you add a border to a table, you also add borders around each table cell:
To add a border, use the CSS border property on table, th, and td elements:

table, th, td {
  border: 1px solid black;
}

Collapsed Table Borders

This will make the borders collapse into a single border:

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}

Style Table Borders

If you set a background color of each cell, and give the border a white color (the same as the document background), you get the impression of an invisible border:

table, th, td {
  border: 1px solid white;
  border-collapse: collapse;
}
th, td {
  background-color: #96D4D4;
}

Round Table Borders

With the border-radius property, the borders get rounded corners:

table, th, td {
  border: 1px solid black;
  border-radius: 10px;
}

Skip the border around the table by leaving out table from the css selector:

th, td {
  border: 1px solid black;
  border-radius: 10px;
}


''', lessonCode: '''
table, th, td {
  border: 1px solid black;
}

table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}


able, th, td {
  border: 1px solid white;
  border-collapse: collapse;
}
th, td {
  background-color: #96D4D4;
}
'''),
  LessonHtmlModel(lessonText: '''
HTML Table Sizes

HTML tables can have different sizes for each column, row or the entire table.
Use the style attribute with the width or height properties to specify the size of a table, row or column.

HTML Table Width

To set the width of a table, add the style attribute to the <table> element:

<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>

HTML Table Column Width

<table style="width:100%">
  <tr>
    <th style="width:70%">Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>

HTML Table Row Height

To set the height of a specific row, add the style attribute on a table row element:

<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr style="height:200px">
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>


''', lessonCode: '''
<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>

<table style="width:100%">
  <tr>
    <th style="width:70%">Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr>
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>


<table style="width:100%">
  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
    <th>Age</th>
  </tr>
  <tr style="height:200px">
    <td>Jill</td>
    <td>Smith</td>
    <td>50</td>
  </tr>
  <tr>
    <td>Eve</td>
    <td>Jackson</td>
    <td>94</td>
  </tr>
</table>
'''),
  LessonHtmlModel(lessonText: '''
HTML Lists

HTML lists allow web developers to group a set of related items in lists.

Unordered HTML List

An unordered list starts with the <ul> tag. Each list item starts with the <li> tag
The list items will be marked with bullets (small black circles) by default:

<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>

Ordered HTML List

An ordered list starts with the <ol> tag. Each list item starts with the <li> tag.
The list items will be marked with numbers by default:

<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

HTML Description Lists

HTML also supports description lists.
A description list is a list of terms, with a description of each term.
The <dl> tag defines the description list, the <dt> tag defines the term (name), and the <dd> tag describes each term

<dl>
  <dt>Coffee</dt>
  <dd>- black hot drink</dd>
  <dt>Milk</dt>
  <dd>- white cold drink</dd>
</dl>

HTML List Tags

Tag	     Description
<ul>	   Defines an unordered list
<ol>	   Defines an ordered list
<li>	   Defines a list item
<dl>	   Defines a description list
<dt>	   Defines a term in a description list
<dd>	   Describes the term in a description list

''', lessonCode: '''
<ul>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ul>


<ol>
  <li>Coffee</li>
  <li>Tea</li>
  <li>Milk</li>
</ol>

<dl>
  <dt>Coffee</dt>
  <dd>- black hot drink</dd>
  <dt>Milk</dt>
  <dd>- white cold drink</dd>
</dl>

'''),
  LessonHtmlModel(lessonText: '''
HTML Block and Inline Elements

Every HTML element has a default display value, depending on what type of element it is.
There are two display values: block and inline.
Block-level Elements
A block-level element always starts on a new line, and the browsers automatically add some space (a margin) before and after the element.
A block-level element always takes up the full width available (stretches out to the left and right as far as it can).
Two commonly used block elements are: <p> and <div>.
The <p> element defines a paragraph in an HTML document.
The <div> element defines a division or a section in an HTML document.
The <p> element is a block-level element.
The <div> element is a block-level element.

<p>Hello World</p>
<div>Hello World</div>

Here are the block-level elements in HTML:

<address>      <div>          <footer>   <main>       <pre>
<article>      <dl>           <form>     <nav>        <section>
<aside>        <dt>           <h1>-<h6>  <noscript>   <table>
<blockquote>   <fieldset>     <header>   <tfoot>      <ul>
<canvas>       <figcaption>   <hr>       <ol>         <video>
<dd>           <figure>       <li>       <p>

Inline Elements

An inline element does not start on a new line.
An inline element only takes up as much width as necessary.
This is a <span> element inside a paragraph.

<span>Hello World</span>

The <div> Element

<div style="background-color:black;color:white;padding:20px;">
  <h2>London</h2>
  <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
</div>

The <span> Element

The <span> element is an inline container used to mark up a part of a text, or a part of a document.
The <span> element has no required attributes, but style, class and id are common.
When used together with CSS, the <span> element can be used to style parts of the text:

<p>My mother has <span style="color:blue;font-weight:bold;">blue</span> eyes and my father has <span style="color:darkolivegreen;font-weight:bold;">dark green</span> eyes.</p>


''', lessonCode: '''
<p>Hello World</p>
<div>Hello World</div>

<span>Hello World</span>

<div style="background-color:black;color:white;padding:20px;">
  <h2>London</h2>
  <p>London is the capital city of England. It is the most populous city in the United Kingdom, with a metropolitan area of over 13 million inhabitants.</p>
</div>

<p>My mother has <span style="color:blue;font-weight:bold;">blue</span> eyes and my father has <span style="color:darkolivegreen;font-weight:bold;">dark green</span> eyes.</p>


'''),
  LessonHtmlModel(lessonText: '''
HTML class Attribute

The HTML class attribute is used to specify a class for an HTML element.
Multiple HTML elements can share the same class.

Using The class Attribute

The class attribute is often used to point to a class name in a style sheet. It can also be used by a JavaScript to access and manipulate elements with the specific class name.
In the following example we have three <div> elements with a class attribute with the value of "city". All of the three <div> elements will be styled equally according to the .city style definition in the head section:

<!DOCTYPE html>
<html>
<head>
<style>
.city {
  background-color: tomato;
  color: white;
  border: 2px solid black;
  margin: 20px;
  padding: 20px;
}
</style>
</head>
<body>

<div class="city">
  <h2>London</h2>
  <p>London is the capital of England.</p>
</div>

<div class="city">
  <h2>Paris</h2>
  <p>Paris is the capital of France.</p>
</div>

<div class="city">
  <h2>Tokyo</h2>
  <p>Tokyo is the capital of Japan.</p>
</div>

</body>
</html>

In the following example we have two <span> elements with a class attribute with the value of "note". Both <span> elements will be styled equally according to the .note style definition in the head section:

<!DOCTYPE html>
<html>
<head>
<style>
.note {
  font-size: 120%;
  color: red;
}
</style>
</head>
<body>

<h1>My <span class="note">Important</span> Heading</h1>
<p>This is some <span class="note">important</span> text.</p>

</body>
</html>

The Syntax For Class

To create a class; write a period (.) character, followed by a class name. Then, define the CSS properties within curly braces {}:

<!DOCTYPE html>
<html>
<head>
<style>
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
}
</style>
</head>
<body>

<h2 class="city">London</h2>
<p>London is the capital of England.</p>

<h2 class="city">Paris</h2>
<p>Paris is the capital of France.</p>

<h2 class="city">Tokyo</h2>
<p>Tokyo is the capital of Japan.</p>

</body>
</html>

Multiple Classes

HTML elements can belong to more than one class.
To define multiple classes, separate the class names with a space, e.g. <div class="city main">. The element will be styled according to all the classes specified.
In the following example, the first <h2> element belongs to both the city class and also to the main class, and will get the CSS styles from both of the classes: 

<h2 class="city main">London</h2>
<h2 class="city">Paris</h2>
<h2 class="city">Tokyo</h2>

Different Elements Can Share Same Class

Different HTML elements can point to the same class name.
In the following example, both <h2> and <p> point to the "city" class and will share the same style:

<h2 class="city">Paris</h2>
<p class="city">Paris is the capital of France</p>
''', lessonCode: '''
<!DOCTYPE html>
<html>
<head>
<style>
.city {
  background-color: tomato;
  color: white;
  border: 2px solid black;
  margin: 20px;
  padding: 20px;
}
</style>
</head>
<body>

<div class="city">
  <h2>London</h2>
  <p>London is the capital of England.</p>
</div>

<div class="city">
  <h2>Paris</h2>
  <p>Paris is the capital of France.</p>
</div>

<div class="city">
  <h2>Tokyo</h2>
  <p>Tokyo is the capital of Japan.</p>
</div>

</body>
</html>

<!DOCTYPE html>
<html>
<head>
<style>
.note {
  font-size: 120%;
  color: red;
}
</style>
</head>
<body>

<h1>My <span class="note">Important</span> Heading</h1>
<p>This is some <span class="note">important</span> text.</p>

</body>
</html>


<!DOCTYPE html>
<html>
<head>
<style>
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
}
</style>
</head>
<body>

<h2 class="city">London</h2>
<p>London is the capital of England.</p>

<h2 class="city">Paris</h2>
<p>Paris is the capital of France.</p>

<h2 class="city">Tokyo</h2>
<p>Tokyo is the capital of Japan.</p>

</body>
</html>

<h2 class="city main">London</h2>
<h2 class="city">Paris</h2>
<h2 class="city">Tokyo</h2>

<script>
function myFunction() {
  var x = document.getElementsByClassName("city");
  for (var i = 0; i < x.length; i++) {
    x[i].style.display = "none";
  }
}
</script>

'''),
  LessonHtmlModel(lessonText: '''
HTML id Attribute

The HTML id attribute is used to specify a unique id for an HTML element.
You cannot have more than one element with the same id in an HTML document.

Using The id Attribute

The id attribute specifies a unique id for an HTML element. The value of the id attribute must be unique within the HTML document.
The id attribute is used to point to a specific style declaration in a style sheet. It is also used by JavaScript to access and manipulate the element with the specific id.

<!DOCTYPE html>
<html>
<head>
<style>
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}
</style>
</head>
<body>

<h1 id="myHeader">My Header</h1>

</body>
</html>

Difference Between Class and ID

A class name can be used by multiple HTML elements, while an id name must only be used by one HTML element within the page:

<style>
/* Style the element with the id "myHeader" */
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}

/* Style all elements with the class name "city" */
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
}
</style>

<!-- An element with a unique id -->
<h1 id="myHeader">My Cities</h1>

<!-- Multiple elements with same class -->
<h2 class="city">London</h2>
<p>London is the capital of England.</p>

<h2 class="city">Paris</h2>
<p>Paris is the capital of France.</p>

<h2 class="city">Tokyo</h2>
<p>Tokyo is the capital of Japan.</p>

HTML Bookmarks with ID and Links

HTML bookmarks are used to allow readers to jump to specific parts of a webpage.
Bookmarks can be useful if your page is very long.
To use a bookmark, you must first create it, and then add a link to it.
Then, when the link is clicked, the page will scroll to the location with the bookmark.

<h2 id="C4">Chapter 4</h2>

Using The id Attribute in JavaScript

The id attribute can also be used by JavaScript to perform some tasks for that specific element.
JavaScript can access an element with a specific id with the getElementById() method:

<script>
function displayResult() {
  document.getElementById("myHeader").innerHTML = "Have a nice day!";
}
</script>
''', lessonCode: '''
<!DOCTYPE html>
<html>
<head>
<style>
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}
</style>
</head>
<body>

<h1 id="myHeader">My Header</h1>

</body>
</html>

<style>
/* Style the element with the id "myHeader" */
#myHeader {
  background-color: lightblue;
  color: black;
  padding: 40px;
  text-align: center;
}

/* Style all elements with the class name "city" */
.city {
  background-color: tomato;
  color: white;
  padding: 10px;
}
</style>

<!-- An element with a unique id -->
<h1 id="myHeader">My Cities</h1>

<!-- Multiple elements with same class -->
<h2 class="city">London</h2>
<p>London is the capital of England.</p>

<h2 class="city">Paris</h2>
<p>Paris is the capital of France.</p>

<h2 class="city">Tokyo</h2>
<p>Tokyo is the capital of Japan.</p>

<a href="#C4">Jump to Chapter 4</a>

<a href="html_demo.html#C4">Jump to Chapter 4</a>

<script>
function displayResult() {
  document.getElementById("myHeader").innerHTML = "Have a nice day!";
}
</script>
'''),
  LessonHtmlModel(lessonText: '''
HTML JavaScript

JavaScript makes HTML pages more dynamic and interactive

The HTML <script> Tag

The HTML <script> tag is used to define a client-side script (JavaScript).
The <script> element either contains script statements, or it points to an external script file through the src attribute.
Common uses for JavaScript are image manipulation, form validation, and dynamic changes of content.
To select an HTML element, JavaScript most often uses the document.getElementById() method.
This JavaScript example writes "Hello JavaScript!" into an HTML element with id="demo":

<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>

A Taste of JavaScript

Here are some examples of what JavaScript can do:

document.getElementById("demo").innerHTML = "Hello JavaScript!";
document.getElementById("demo").style.fontSize = "25px";
document.getElementById("demo").style.color = "red";
document.getElementById("demo").style.backgroundColor = "yellow";
document.getElementById("image").src = "picture.gif";

The HTML <noscript> Tag

<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
<noscript>Sorry, your browser does not support JavaScript!</noscript>

''', lessonCode: '''
<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>

document.getElementById("demo").innerHTML = "Hello JavaScript!";


document.getElementById("demo").style.fontSize = "25px";
document.getElementById("demo").style.color = "red";
document.getElementById("demo").style.backgroundColor = "yellow";


<script>
document.getElementById("demo").innerHTML = "Hello JavaScript!";
</script>
<noscript>Sorry, your browser does not support JavaScript!</noscript>
'''),
  LessonHtmlModel(lessonText: '''
HTML Forms

An HTML form is used to collect user input. The user input is most often sent to a server for processing.

The <form> Element

The HTML <form> element is used to create an HTML form for user input:

<form>
.
form elements
.
</form>

The <form> element is a container for different types of input elements, such as: text fields, checkboxes, radio buttons, submit buttons, etc.
All the different form elements are covered in this chapter: HTML Form Elements.

Text Fields

The <input type="text"> defines a single-line input field for text input.

<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
</form>

This is how the HTML code above will be displayed in a browser:

The <label> Element

Notice the use of the <label> element in the example above.
The <label> tag defines a label for many form elements.
The <label> element is useful for screen-reader users, because the screen-reader will read out loud the label when the user focus on the input element.
The <label> element also help users who have difficulty clicking on very small regions (such as radio buttons or checkboxes) - because when the user clicks the text within the <label> element, it toggles the radio button/checkbox.
The for attribute of the <label> tag should be equal to the id attribute of the <input> element to bind them together.


Radio Buttons

The <input type="radio"> defines a radio button.
Radio buttons let a user select ONE of a limited number of choices.

<p>Choose your favorite Web language:</p>

<form>
  <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
  <label for="javascript">JavaScript</label>
</form>

Checkboxes

The <input type="checkbox"> defines a checkbox.
Checkboxes let a user select ZERO or MORE options of a limited number of choices.

<form>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label>
</form>

The Submit Button

The <input type="submit"> defines a button for submitting the form data to a form-handler.
The form-handler is typically a file on the server with a script for processing input data.
The form-handler is specified in the form's action attribute.

<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>

The Name Attribute for <input>
Notice that each input field must have a name attribute to be submitted.
If the name attribute is omitted, the value of the input field will not be sent at all.

<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" value="John"><br><br>
  <input type="submit" value="Submit">
</form>

''', lessonCode: '''
<form>
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname">
</form>

<p>Choose your favorite Web language:</p>

<form>
  <input type="radio" id="html" name="fav_language" value="HTML">
  <label for="html">HTML</label><br>
  <input type="radio" id="css" name="fav_language" value="CSS">
  <label for="css">CSS</label><br>
  <input type="radio" id="javascript" name="fav_language" value="JavaScript">
  <label for="javascript">JavaScript</label>
</form>


<form>
  <input type="checkbox" id="vehicle1" name="vehicle1" value="Bike">
  <label for="vehicle1"> I have a bike</label><br>
  <input type="checkbox" id="vehicle2" name="vehicle2" value="Car">
  <label for="vehicle2"> I have a car</label><br>
  <input type="checkbox" id="vehicle3" name="vehicle3" value="Boat">
  <label for="vehicle3"> I have a boat</label>
</form>


<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>
'''),
  LessonHtmlModel(lessonText: '''
HTML Form Attributes

This chapter describes the different attributes for the HTML <form> element.

The Action Attribute

The action attribute defines the action to be performed when the form is submitted.
Usually, the form data is sent to a file on the server when the user clicks on the submit button.
In the example below, the form data is sent to a file called "action_page.php". This file contains a server-side script that handles the form data:

<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>

The Target Attribute

The target attribute specifies where to display the response that is received after submitting the form.
The default value is _self which means that the response will open in the current window.

<form action="/action_page.php" target="_blank">

The Method Attribute

The method attribute specifies the HTTP method to be used when submitting the form data.
The form-data can be sent as URL variables (with method="get") or as HTTP post transaction (with method="post").
The default HTTP method when submitting form data is GET.

<form action="/action_page.php" method="get">

<form action="/action_page.php" method="post">

The Autocomplete Attribute

The autocomplete attribute specifies whether a form should have autocomplete on or off.
When autocomplete is on, the browser automatically complete values based on values that the user has entered before.

<form action="/action_page.php" autocomplete="on">

The Novalidate Attribute

The novalidate attribute is a boolean attribute.
When present, it specifies that the form-data (input) should not be validated when submitted.

<form action="/action_page.php" novalidate>
''', lessonCode: '''
<form action="/action_page.php">
  <label for="fname">First name:</label><br>
  <input type="text" id="fname" name="fname" value="John"><br>
  <label for="lname">Last name:</label><br>
  <input type="text" id="lname" name="lname" value="Doe"><br><br>
  <input type="submit" value="Submit">
</form>

<form action="/action_page.php" target="_blank">

<form action="/action_page.php" method="get">

<form action="/action_page.php" method="post">

<form action="/action_page.php" autocomplete="on">

<form action="/action_page.php" novalidate>
'''),
  LessonHtmlModel(lessonText: '''
HTML Form Elements


This chapter describes all the different HTML form elements.

The HTML <form> Elements

The HTML <form> element can contain one or more of the following form elements:

<input>
<label>
<select>
<textarea>
<button>
<fieldset>
<legend>
<datalist>
<output>
<option>
<optgroup>

The <input> Element

One of the most used form element is the <input> element.
The <input> element can be displayed in several ways, depending on the type attribute.

<label for="fname">First name:</label>
<input type="text" id="fname" name="fname">

The <label> Element

The <label> element defines a label for several form elements.
The <label> element is useful for screen-reader users, because the screen-reader will read out loud the label when the user focus on the input element.
The <label> element also help users who have difficulty clicking on very small regions (such as radio buttons or checkboxes) - because when the user clicks the text within the <label> element, it toggles the radio button/checkbox.
The for attribute of the <label> tag should be equal to the id attribute of the <input> element to bind them together.

The <select> Element

<label for="cars">Choose a car:</label>
<select id="cars" name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>

Visible Values:

<label for="cars">Choose a car:</label>
<select id="cars" name="cars" size="3">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>

Allow Multiple Selections:

Use the multiple attribute to allow the user to select more than one value:

<label for="cars">Choose a car:</label>
<select id="cars" name="cars" size="4" multiple>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>

The <fieldset> and <legend> Elements

The <fieldset> element is used to group related data in a form.
The <legend> element defines a caption for the <fieldset> element.

<form action="/action_page.php">
  <fieldset>
    <legend>Personalia:</legend>
    <label for="fname">First name:</label><br>
    <input type="text" id="fname" name="fname" value="John"><br>
    <label for="lname">Last name:</label><br>
    <input type="text" id="lname" name="lname" value="Doe"><br><br>
    <input type="submit" value="Submit">
  </fieldset>
</form>

The <datalist> Element

The <datalist> element specifies a list of pre-defined options for an <input> element.
Users will see a drop-down list of the pre-defined options as they input data.
The list attribute of the <input> element, must refer to the id attribute of the <datalist> element.

<form action="/action_page.php">
  <input list="browsers">
  <datalist id="browsers">
    <option value="Internet Explorer">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
</form>

The <output> Element

The <output> element represents the result of a calculation (like one performed by a script).

<form action="/action_page.php"
  oninput="x.value=parseInt(a.value)+parseInt(b.value)">
  0
  <input type="range"  id="a" name="a" value="50">
  100 +
  <input type="number" id="b" name="b" value="50">
  =
  <output name="x" for="a b"></output>
  <br><br>
  <input type="submit">
</form>

''', lessonCode: '''
<label for="fname">First name:</label>
<input type="text" id="fname" name="fname">

<label for="cars">Choose a car:</label>
<select id="cars" name="cars">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>


<option value="fiat" selected>Fiat</option>


<label for="cars">Choose a car:</label>
<select id="cars" name="cars" size="3">
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="fiat">Fiat</option>
  <option value="audi">Audi</option>
</select>

<textarea name="message" rows="10" cols="30">
The cat was playing in the garden.
</textarea>

<textarea name="message" style="width:200px; height:600px;">
The cat was playing in the garden.
</textarea>


<form action="/action_page.php">
  <input list="browsers">
  <datalist id="browsers">
    <option value="Internet Explorer">
    <option value="Firefox">
    <option value="Chrome">
    <option value="Opera">
    <option value="Safari">
  </datalist>
</form>


<form action="/action_page.php"
  oninput="x.value=parseInt(a.value)+parseInt(b.value)">
  0
  <input type="range"  id="a" name="a" value="50">
  100 +
  <input type="number" id="b" name="b" value="50">
  =
  <output name="x" for="a b"></output>
  <br><br>
  <input type="submit">
</form>
'''),
];
