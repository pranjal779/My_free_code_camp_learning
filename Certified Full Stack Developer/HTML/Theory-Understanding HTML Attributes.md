# Theory-Understanding HTML Attributes

In these lessons, you will learn more about HTML (HyperText Markup Language), a markup language for creating web pages.

You will learn about HTML's role on the web, and what HTML attributes are.

- What Role Does HTML Play on the Web?
- What Are Attributes, and How Do They Work?


(This specific files picks up from - What Are Attributes, and How Do They Work?)


# What Are Attributes, and How Do They Work?

An attribute is a value placed inside the opening tag of an HTML element. Attributes provide additional information about the element or specify how the element should behave. Here is the basic syntax for an attribute:

<element attribute="value"></element>
The attribute name is followed by an equal sign (=) and a value in quotes. The value can be a string or a number, depending on the attribute.

This first example uses the href and target attributes. The href attribute specifies the URL of a link and the target attribute specifies where to open the link.

Change the href="https://www.freecodecamp.org/news/" to href="https://www.freecodecamp.org". Now when you click on the link in the interactive editor, you will see the freeCodeCamp homepage in a new browser tab.

<a href="https://www.freecodecamp.org/news/" target="_blank">Visit freeCodeCamp</a>
Without the href attribute, the link would not work because there would be no destination URL. So you must include this href attribute to make the link functional. The target="_blank" enables the link to open in a new browser tab. You will learn more about the target attribute in future lessons.

Other common attributes are the src, and alt, or alternative, attribute - which is used to specify the source of an image and provide alternative descriptive text for the image, respectively.

Change the src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" to src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/running-cats.jpg". Then change the alt="Two tabby kittens sleeping together on a couch." to alt="Two cats running in the dirt.".

<img src="https://cdn.freecodecamp.org/curriculum/cat-photo-app/cats.jpg" alt="Two tabby kittens sleeping together on a couch." />
Similar to the href attribute, the src attribute is required because it specifies the image file to be displayed. The alt attribute is not required, but it is recommended for accessibility purposes. Accessibility means making sure that everyone, including those with disabilities, can use and understand things like websites, apps, and physical spaces. You will learn more about accessibility in the upcoming lessons.

Some attributes are a little unique with their syntax like the checked attribute.

Try clicking on the checkbox in the preview window to see it alternate between a checked and unchecked state.

<input type="checkbox" checked />
In the following example, we have an input element with the type attribute set to checkbox. Inputs are used to collect data from users, and the type attribute specifies the type of input. In this case, this input is a checkbox. You will learn more about how inputs work in the upcoming lessons.

The checked attribute is used to specify that the checkbox should be checked by default. The checked attribute does not require a value. If it is present, the checkbox will be checked by default. If the attribute is not present, the checkbox will be unchecked. This is known as a boolean attribute. You will learn more about booleans in general when you get to the JavaScript section.

Remove the checked attribute from the input in the interactive editor, and you will see that the checkbox is no longer checked by default.

<input type="checkbox" checked />
There are several common boolean attributes you will encounter in HTML, such as disabled, readonly, and required. These attributes are used to specify the state of an element, such as whether it is disabled, read-only, or required.

Here is an example of a text input element that is disabled by default. Try clicking on the input element in the preview window. Now remove the disabled attribute from the input element and you will see that the input is no longer disabled by default. You should now be able to click on it and type inside the field.

<input type="text" disabled>
HTML has many attributes that can be used to customize the behavior and appearance of elements on a webpage. Understanding how to use attributes is essential for creating interactive and accessible web content. Over the next few lessons, you will learn about more HTML attributes and how to use them effectively in your web development projects.

Questions

Which of the following is an example of a boolean attribute?


src

href

disabled

alt

What is the role of an attribute in HTML?


Attributes provide additional information and help define the behavior for HTML elements.

Attributes change the background color of an element.

Attributes change the font size of an element.

Attributes add JavaScript functionality to an element.

Which of the following is the correct syntax for a boolean attribute?


<input type="checkbox" checked>

<input type="checkbox" checked="on">

<input type="checkbox" checked="off">

<input type="checkbox" checked="isChecked">
