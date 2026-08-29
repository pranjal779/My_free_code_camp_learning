# Build an Event hub

<img width="2536" height="1217" alt="image" src="https://github.com/user-attachments/assets/1dd5d524-9639-4cb5-8354-d7a866d0a5ee" />
<img width="2547" height="1216" alt="image" src="https://github.com/user-attachments/assets/bf03accc-94c3-4bee-aa51-fb9970b0f9db" />
<img width="2551" height="1222" alt="image" src="https://github.com/user-attachments/assets/c0213054-1cd7-4efd-9528-380c887b51bd" />


## Build an Event Hub
Build an app that is functionally similar to this example project. Try not to copy the example project, give it your own personal style.

In this lab you will utilize the semantic HTML elements to create the structure of a web page. You'll add content and images to make it look like a real event hub.

Objective: Fulfill the user stories below and get all the tests to pass to complete the lab.

User Stories:

1. You should have a header element, and it must be the first element inside the body.
2. Inside the header element, you should have an h1 element that contains the text Event Hub, and a nav element.
3. Inside the nav element, you should have an unordered list of two items containing links to different sections of the page. The first item should have the text Upcoming Events, and the second item should have the text Past Events.
4. Each link should be represented by an a element with an href attribute that links to the corresponding section of the page, #upcoming-events and #past-events respectively.
5. You should have a main element that contains the different sections of the page.
6. Inside the main element, you should have two section elements.
7. The first section element should have an id attribute with the value upcoming-events
8. Inside the #upcoming-events section, you should have:
    - An h2 element with the text Upcoming Events.
    - Two article elements. Each article should represent an event, and it should have :
        * An h3 element for the event title.
        * A p element for the event description. You can add a date at the bottom if you like.

9. The second section element should have an id attribute with the value past-events.
10. Inside the #past-events section, you should have:
    - An h2 element with the text Past Events.
    - Two article elements. Each article element should represent a past event, and it should have:
        * An h3 element for the event title,
        * A p element for the event description. You can add a date at the bottom if you like.
        * An image element with the src attribute pointing to an image file and the alt attribute with a description of the image.

Note: You can use any text for the event descriptions and dates. You can use the following image URLs for the images if you like:

- https://cdn.freecodecamp.org/curriculum/labs/past-event1.jpg.
- https://cdn.freecodecamp.org/curriculum/labs/past-event2.jpg.


### Tests:
- Passed:1. You should have a header element.
- Passed:2. Your header element should come after the opening body tag.
- Passed:3. Inside the header element, you should have an h1 element that contains the text Event Hub.
- Passed:4. Inside the header element, after the h1 element, you should have a nav element.
- Passed:5. Your nav element should contain an unordered list of two items.
- Passed:6. The first item in the unordered list should be a link.
- Passed:7. The second item in the unordered list should be a link.
- Passed:8. The text of the first item in the unordered list should be Upcoming Events.
- Passed:9. The first item in the unordered list should have the href set to #upcoming-events.
- Passed:10. The text of the second item in the unordered list should be Past Events.
- Passed:11. The second item in the unordered list should have the href set to #past-events.
- Passed:12. You should have a main element after the header element closing tag.
- Passed:13. Inside the main element, you should have two section elements.
- Passed:14. Your first section element should have an id attribute with the value upcoming-events.
- Passed:15. Your second section element should have an id attribute with the value past-events.
- Passed:16. Inside the #upcoming-events section, you should have an h2 element with the text Upcoming Events.
- Passed:17. Inside the #upcoming-events section, you should have two article elements below the h2 element.
- Passed:18. Both of the article elements inside the #upcoming-events section should have an h3 element for the event title.
- Passed:19. Both of the article elements inside the #upcoming-events section should have a paragraph element for the event description.
- Passed:20. Inside the #past-events section, you should have an h2 element with the text Past Events.
- Passed:21. Inside the #past-events section, you should have two article elements below the h2 element.
- Passed:22. Both of the article elements inside the #past-events section should have an h3 element for the event title.
- Passed:23. Both of the article elements inside the #past-events section should have a paragraph element for the event description.
- Passed:24. Both of the article elements inside the #past-events section should have an image element.
- Passed:25. Both of the image elements inside the #past-events section should have the src attribute pointing to an image file.
- Passed:26. Both of the image elements inside the #past-events section should have the alt attribute with a description of the image.
- Passed:27. Each h3 element should have the event title.
- Passed:28. Each p element should have the event description.


```html
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Event Hub</title>
</head>

<body>
    <header>
        <h1>Event Hub</h1>
        <nav>
            <ul>
                <li><a href="#upcoming-events">Upcoming Events</a></li>
                <li><a href="#past-events">Past Events</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <section id="upcoming-events">
            <h2>Upcoming Events</h2>
            <article>
                <h3>AI & Machine Learning Conference 2024</h3>
                <p>
                Join us for a deep dive into the latest advancements in artificial intelligence and machine learning. Industry leaders will share insights and case studies on how AI is transforming various sectors.
                <br>
                Date: August 10, 2024</p>
            </article>
            <article>
                <h3>Web Development Bootcamp</h3>
                <p>
                   A hands-on workshop designed for developers looking to enhance their skills in modern web technologies including React, Node.js, and GraphQL. Perfect for both beginners and experienced developers.
                   <br>
                   Date: September 5, 2024 
                </p>
            </article>
        </section>
        <section id="past-events">
            <h2>Past Events</h2>
            <article>
                <h3>Cybersecurity Summit 2024</h3>
                <p>
                    An event focusing on the latest trends and threats in cybersecurity. Experts discussed strategies for protecting data and ensuring privacy in an increasingly digital world.
                    <br>
                    Date: June 15, 2024

                    <img src="https://cdn.freecodecamp.org/curriculum/labs/past-event1.jpg" alt="IBM computer" />
                </p>
            </article>
            <article>
                <h3>Blockchain Expo 2024</h3>
                <p>
                    A comprehensive event covering the future of blockchain technology. Topics included decentralized finance (DeFi), smart contracts, and the impact of blockchain on various industries.
                    <br>
                    Date: July 20, 2024
                    <br>
                    <img src="https://cdn.freecodecamp.org/curriculum/labs/past-event2.jpg" alt="blockChain-Image" />
                </p>
            </article>
        </section>
    </main>

</body>

</html>

```
