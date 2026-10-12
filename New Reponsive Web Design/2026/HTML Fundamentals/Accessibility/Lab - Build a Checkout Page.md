# Lab - Build a Checkout Page

<img width="2531" height="1172" alt="image" src="https://github.com/user-attachments/assets/1cc3f02c-11d0-480b-90c2-93524cd144ac" />

<img width="1222" height="1092" alt="image" src="https://github.com/user-attachments/assets/717e150e-07e8-4509-ab51-b9aafb15e054" />


# Build a Checkout Page
Build an app that is functionally similar to this example project. Try not to copy the example project, give it your own personal style.  

Objective: Fulfill the user stories below and get all the tests to pass to complete the lab.  

User Stories:  

1. You should have an h1 element with the text Checkout.
2. You should have two section elements immediately after the h1 element.
3. You should have an h2 element with the text Your Cart within the first section.
4. You should have an image of an item in the first section with appropriate alternate text. You can use this image if you would like: https://cdn.freecodecamp.org/curriculum/labs/cube.jpg
5. You should have an h2 element with the text Payment Information within the second section.
6. You should have a form element within the second section.
7. You should have an input with an id and name of card-name, and a type of text within your form and a label associated with it.
8. You should have an input with an id and name of card-number, and a type of text within your form and a label associated with it.
9. You should have at least two input elements with the required attribute.
10. You should include a span element with the text * and aria-hidden set to true inside the label element for each required input, so that required fields are visually indicated.
11. You should have a p element with a help text that explains the required card number format, placed immediately after the card number input. The p should have an id of card-number-help and be referenced by the card number input using aria-describedby.

## Tests:
1. Passed:1. You should have an h1 element with the text Checkout.
2. Passed:2. You should only have one h1 element on your page.
3. Passed:3. You should have at least two section elements after the h1 element.
4. Passed:4. You should have an h2 element with the text Your Cart within the first section.
5. Passed:5. You should have at least one image with alternate text in your first section.
6. Passed:6. You should have an h2 element with the text Payment Information within the second section.
7. Passed:7. You should have a form element within the second section element.
8. Passed:8. You should have an input element with an id and name of card-name within your form.
9. Passed:9. Your card name input should have a type of text.
10. Passed:10. You should have an input element with an id and name of card-number within your form.
11. Passed:11. Your card number input should have a type of text.
12. Passed:12. All of your input elements that aren't a type of submit should have a label element associated with them.
13. Passed:13. You should have at least two input elements with the required attribute.
14. Passed:14. You should include a span element with the text * inside the label element for each required input.
15. Passed:15. Your span elements should have aria-hidden set to true.
16. Passed:16. You should have a p element with an id of card-number-help immediately after the card number input.
17. Passed:17. Your card number help text should not be empty.
18. Passed:18. Your card number input should have aria-describedby set to card-number-help.


```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <title>Checkout Page</title>
</head>

<body>
    <h1>Checkout</h1>
    <section>
        <h2>Your Cart</h2>
        <img src="https://cdn.freecodecamp.org/curriculum/labs/cube.jpg" alt="Rubic cube" />
    </section>
    <section>
        <h2>Payment Information</h2>
        <form>
            <div>
                <label for="card-name">Card Name
                <span aria-hidden="true">*</span>
                </label>
                <input id="card-name" name="card-name" type="text" required />
            </div>

            <div>
                <label for="card-number">Card Number
                <span aria-hidden="true">*</span>
                </label>
                <input id="card-number" name="card-number" aria-describedby="card-number-help" type="text" required />
                <p id="card-number-help">Please enter your 16-digit card number without spaces or dashes.</p>
            </div>

            <label type="text">Expiry-Number<label/>
            <span aria-hidden="true">*</span>
            <input id="expiry-number" name="expiry-number" required />

            <br>

            <label type="text">CVV<label/>
            <span aria-hidden="true">*</span>
            <input id="cvv" name="cvv" required />

            <br>

            <button>Place Order</button>
            
            
        </form>
    </section>

</body>

</html>

```






