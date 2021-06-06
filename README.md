## Book API
![MainBanner](https://res.cloudinary.com/dloadb2bx/image/upload/v1623018038/bookAPI_luwnzj.png)

Project created to test a API documentation using Swagger.

## Technologies
This project was built using:<br>
<img alt="Ruby" src="https://img.shields.io/badge/ruby-%23CC342D.svg?style=for-the-badge&logo=ruby&logoColor=white"/> <img alt="Rails" src="https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white"/> <img alt="HTML5" src="https://img.shields.io/badge/html5-%23E34F26.svg?style=for-the-badge&logo=html5&logoColor=white"/> <img alt="SASS" src="https://img.shields.io/badge/SASS-hotpink.svg?style=for-the-badge&logo=SASS&logoColor=white"/> <img alt="Bootstrap" src="https://img.shields.io/badge/bootstrap-%23563D7C.svg?style=for-the-badge&logo=bootstrap&logoColor=white"/>

Gems utilizadas:

 - [Rswag](https://github.com/rswag/rswag)
 - [Rspec](https://github.com/rspec/rspec-rails)
 - [Pg_Search](https://github.com/Casecommons/pg_search)

## CRUD operations
This project implements CRUD operation, where user (not authenticated in this version) can create, read, update and delete a book ant this action will reflect on the API database.

![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623018038/bookAPI2_bnuw7u.png)

## Pg_Search
To allow user to search for a book that exists on or database, was implemented Pg_Search gem, allowing user to search for title and author.
![enter image description here](https://res.cloudinary.com/dloadb2bx/image/upload/v1623018038/bookAPI3_tfvcjy.png)
## How to run this project?
Clone or download this project. After that run `rails s` on terminal inside the main folder. You can see the API documentation at `http://localhost:3000/api-docs`.

The api can be seen at `http://localhost:3000/api/v1/books`
The frontend can be seen at `http://localhost:3000/books`
