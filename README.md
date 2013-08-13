vanban
======

vanven's kanban app for WDI Project 3
for [General Assembly](https://generalassemb.ly/education/web-development-immersive/los-angeles)


This is a class project using the Rails framework, MongoDB for the database, and MongoMapper to manage it. The basic idea is to create a kanban board-style system for individual/private use rather than the usual systems that are designed for teams who do Agile. It's really a glorified To-Do list, but it helps you see where you are and what you've done, not just what you still have to do.

How it's (supposed) to work: You sign in using OAuth via an account you already have, so that the app doesn't have to save passwords. It's also helpful in terms of UX because a new user can be up and running almost immediately. Once signed in, they will be redirected to a dashboard with a generic kanban already set up. There are 4 panels on the board: To-Do, Today, WIP, and Done. They can create 'blocks', which, when clicked, open up to a modal with a form in it to add info about the thing they want to accomplish. It must have a title because that is what shows up when it's reduced back down to a block. The blocks can be dragged around to the different boxes.

THAT'S IT! Ideally, a user can create more kanbans to manage different projects and the forms inside the blocks will hold more details, such as the ability to add tasks with checkboxes. One day it would be cool to put in a timer to see how long you spend on doing something or something like that.