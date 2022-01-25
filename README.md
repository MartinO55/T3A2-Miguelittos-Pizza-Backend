# T3A2 REadme

## Description

### Purpose

Miguelitto’s Pizzeria is a local food store that offers a varied menu of classic and popular pizza types and flavours, as well as its “Build your own pizza” service, where customers can create custom pizza flavour using any of the available bases, sauces and toppings.

As a food store, Miguelitto’s Pizzeria offers only take outs for orders, all of which need to be done in person, one by one through a queue. This is detrimental to the customer experience, as often times, especially on busy days, customers will need to wait both in queue to make their orders and while the order is getting done.

To go around this issue, the business has requested a webapp from which its customers can make complete orders online and have a time estimate of when it will be ready. This will make it so that customers don’t need to wait in line and may even make orders from the comfort of their homes, knowing exactly when they may go to the store to claim their order, providing a much better customer experience.

### Functionality/Features

Functionalities of the app include:

- The landing page, where customers can find links to social media and location information about Miguelitto's Pizzeria.

- Allowing users to make orders, where they may:

  - Choose one or more standard pizzas from a standard menu and edit it by adding or removing ingredients.

  - Design their own pizzas from scratch, choosing from a variety of different bases, sauce types, and toppings.

  - Choose to add sides and drinks to the order.

  - View the final price in real time while items are added.

  - View a time estimate for the order to be ready.

- A dashboard displaying pending orders, which will be available only to the Admin user, and accessible by inputting the Admins login credentials in the "/admin" page. From the dashboard, the admin will be able to confirm pending orders as finished.

### Target Audience

The target audience for this app is the current customer base for Miguelitto’s pizzeria who are frustrated with the current system of taking orders that results in delays with both taking orders and preparing pizzas. In addition, this app will also positively affect Miguelitto’s, as they will be able focus on serving customer orders faster and more efficiently, thus increasing the number of orders they can fill and the amount of money the business can make.

### Tech Stack

- Ruby on Rails - Backend

- React.js - Frontend

- PostgreSQL – Database

- Amazon S3 – Cloud Storage for Assets

- Heroku – Deployment Service

- Bootstrap - HTML & CSS library for structure and styling

- Git – Local Source Control

- GitHub – Remote Source Control Repository

## Dataflow Diagram

## Application Architecture Diagram

## User Stories

### Alice

Alice is a militant vegan coeliac who wants absolute control over what is put on her pizzas. She needs an app that lets her choose specifically gluten free products, while making sure that any ingredients she chooses are free of animal products. Alice wants specific background information on the ingredients used so she can make an informed choice.

### Bob

Bob is a wannabe gourmet who wants to be able to fulfill his sick twisted desires to mix prawns with pineapple and BBQ sauce. Bob wants an app that gives him full control of the toppings on his pizza, so that he can explore all of his culinary desires.

Not all adventurous combinations will work together that well, and as such, Bob also wants to be able to select the sizes of any pizzas he creates, so that in case he creates a combination that turns out to be inedible he won’t end up wasting an entire full priced large pizza.

### Jessica

Jessica is a hard-pressed working mother of seven who has no spare time to wait around. She wants an application that quickly lets her order a sufficient number of pizzas to feed her brood while making sure that any specific requests her children have can be fulfilled easily. Jessica wants full control over the toppings on her pizzas to fill her children’s demands so that she can have a relatively easy dinner for once. Jessica also wants to see exactly how long it will take until the pizzas are ready so that she can better organise her evening and doesn't waste time waiting in line to order or pick up a pizza.

### Dave

Dave just wants a pizza for dinner. Dave wants an app that lets him quickly and simply enter in the requisite choices so that he can have his favourite pizza as soon as possible with the minimum of fuss. Dave wants an app that is simple to use and offers him the choices he wants so that he doesn’t have to think or invest a lot mental energy in deciding what he wants for dinner. Dave also wants an application that doesn't waste his time with options he doesn't care about so that he can just get dinner and go.

### Miguelitto

Miguellito is an overwhelmed business owner juggling both running the customer service side of his pizzeria and the kitchen side. Miguelitto needs an application that reduces the pressure on the customer service side of his business so that he can focus on creating pizzas and speeding up the cooking process. In addition, he also wants to offer customers more freedom to experiment with their own favourite toppings to create a better customer experience. Therefore the application needs to both give his customers the ability to order food directly, saving both his and his customers time. Miguelitto also needs an application that does not take a great amount of time and effort to learn so that the new system does not over-complicate his life, taking up more time to operate than it saves, so that he can concentrate on what he does best; making pizzas.

## Wireframes

### Landing page

Based on the user stories, the desire for speed and simplicity was brought forward as a key design feature. Therefore, we decided on making the website as straight forward as possible, with a landing page consisting of a logo and the only two destinations that matter; the menu and the location of the pizzeria, as seen in the version one landing page.

![v1 landing page image](src/Wireframes/V1/LandingPagePizzaDesktop.png "Landing page version 1")

In the second revision, it was decided that these objectives would be better met by incorporating the about us page as a scrollable element at the bottom of the landing page, making it both easier to find if needed, and easier to ignore if not. It is also worth noting the integration of colour into the page in the version 2 image - the design was finalised prior to the colour palette being chosen. Finally, it was also decided that the V2 page should allow users to jump directly into designing their own pizza if desired - a further implementation of the key lessons drawn from several user stories.

![v2 landing page image](src/Wireframes/V2/DesktopLandingPageV2.png "Landing page Version 2")

The initial version of the mobile site landing page was altered with an eye towards optimising it for the smaller screen. With this in mind, the blurb about the pizza was removed and the site reorientated into the vertical aspect, with larger buttons for menu and about us pages to make navigation simpler.

![v1 mobile landding page](src/Wireframes/V1/MobileLandingPage.png "mobile landing page V1")

Likewise, the tablet landing page is simpler, with larger buttons, but retains the aspect ratio of the desktop page.

![v1 tablet landing page](src/Wireframes/V1/TabletLandingPage.png "tablet landing page v1")

### About Us Page

The about us page includes a blurb about Miguelittos restaurant, links to social medias and contact information, and either a static map or an embedded link to google maps. (The difficulty for this assignment is that the business in question is fictional; or not actually associated with us.)

![v1 About us page](src/Wireframes/V1/AboutUsPizzaDesktop.png "About us page version 1")

In later revisions this page would be removed entirely and integrated into the landing page, with any changes covered in that section.

### Menu page

The menu page is, at its simplest, a list of pre-designed pizzas available for users to purchase, with links to the page where a user can create their own pizza. The user stories emphasised that this page should be simple to navigate and ensure that the users at all times know exactly what they are purchasing. The pizzas available are displayed in a grid (likely using flexbox, with three being shown, but the exact number dependant on screen size).

![V1 Menu Page](src/Wireframes/V1/MenuPagePizzaDesktop.png "Pizza Menu Page version 1")

### Design your own Pizza page

### Admin Login Page

Unlike other pages the admin pages will only formatted for desktop, as access to them is limited to Miguelitto, any staff he hires, and the system used to track orders in the pizza shop. As this system is a standard desktop system using a large touchscreen interface, both the login and dashboard pages can be designed exclusively for it.

![V1Admin Login](src/Wireframes/V1/AdminLoginPizzaDesktop.png "admin login page")

### Admin Dashboard

The admin dashboard page is used by the kitchen fo the restaurant to track orders, servicing them in the order in which they were recieved. For this role, it is designed to clearly and simply present the requisite information to user with a minimium of fuss or extraneous details - as such, it includes only the details of the pizza order, the sequence in which they were received and the ability to mark them as completed. In addition, there is also a button to flip to previously completed orders and back, if for some reason an order is accidentally marked completed, flipping the buttons functionality (and obviously the text on them).

![V1 Admin dashboard](src/Wireframes/V1/PizzaAdminDashboard.png "v1 admin dashboard")

### Colour Palette

- #362B28 - Woody Brown

- #F2C11D - Buttercup

- #B4370F - Rust

- #E4C9B1 - Grain Brown

- #D7DFDE - Nebula

### Logo

## Trello Screenshots

### M&M IT Solutions
