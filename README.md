# College-Notes-Gallery
## A notes management system which helps users to upload,download and manage notes of their particular course. The whole system is coded in core PHP and MySqli



College-Notes-Gallery ->

![home](https://user-images.githubusercontent.com/16975766/28489136-9c9930a0-6ed8-11e7-85a0-af4d73f63cd7.png)



College-Notes-Gallery Admin Panel ->

![admin](https://user-images.githubusercontent.com/16975766/28489144-e2c938ae-6ed8-11e7-90f2-f104f34eeabb.png)


### Full Demo
[College Notes Gallery](https://www.youtube.com/watch?v=oJ7rNVoCPG0&t)

### Requirements 

- PHP 5.3 or higher recommended 
- MySQL DB
- Ability to write .htaccess file for apache mod_rewrite

### Installation
- Upload College-Notes-Gallery to the directory of your choice. (E.g :  /var/www/html/college-notes-gallery )
- Import MySql Db file to your database software (E.g : PhpMyAdmin -> Create DB -> Import notes.sql  )
- Configure connection between your database and server by modifying the /includes/connection.php file
- Navigate to the installation in your browser ( E.g :  http://localhost/college-notes-gallery )
- Done :)

### Login Details

1. Admin:

username: root

password: adminroot

2. User:

username: user

password: userpass

### Main Features

- Multiple user access:  Allows multiple type of users(teacher/student/admin) to login 
- Functional Admin panel:  Allows admins to manage the whole system
- CRUD functionalities:  Allows all users to create,read,update and delete their notes in a managed format 
- Profile update option:  Allows users to update their profile/account details  
- Secure registration and login option for users
- Allows students and teachers to download/upload their course notes easily
- Allows users to recover their password using forgot password option

### To-Do  list
- Add pagination for notes
- Add login with facebook and google+ option
- Add search notes option

### Issues

Please log any issues found in the repository 

### References 
www.freshdesignweb.com
Fashion Responsive Slider

### License
College Notes Gallery is released under the MIT License
