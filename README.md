# COFFESHLE  

I have developed a set of APIs using Ruby on Rails that allows for the management of reporting at a coffee station. These APIs are designed to facilitate communication between users and the system, enabling users to quickly report any shortages at the station, such as milk or other supplies.

 # 1. Deployment Link 
- https://coffeshle.onrender.com/reports


 # 2. Ruby version
-3.3.5

 ## 3. Dependency System 
- Ruby on Rails
- PostgreSQL
  -Bundler
  
## 4. Gemas (Gems):
- gem "debug"
- gem "bootsnap"
- gem "puma", ">= 5.0"


## 5. Database creation


To set up the database for this project, follow these steps:

1. **Ensure PostgreSQL is Installed**: Make sure you have PostgreSQL installed on your machine. You can download it from the official website.

2. **Configure Database Settings**: Open the `config/database.yml` file and update the settings to match your PostgreSQL configuration (username, password, etc.).

3. **Create the Database**: Run the following command in your terminal to create the database:

   rails db:create

## 6. Database initialization
- rails db:migrate


## 7 .Services 

In this project, I utilized the following services:

- **PostgreSQL**: Used as the database management system to store and manage application data.
  
- **Puma**: The web server used to serve the application, providing fast and concurrent handling of requests.

- **Render**: The platform where the application is deployed, allowing for easy hosting and scaling of web applications.

These services work together to ensure the application runs smoothly and efficiently.

## 8. Deployment Instructions

To deploy this application, I followed the instructions provided by Render. Here are the basic steps I took:

1. **Create an Account on Render**: Sign up for an account at [Render.com](https://render.com).

2. **Create a New Web Service**: In the Render dashboard, create a new web service and connect it to the repository containing the application code.

3. **Set Environment Variables**: Configure any necessary environment variables in the Render settings to ensure the application functions correctly.

4. **Select Build Command**: Use the default build command provided by Render, which typically is `bundle install` for Ruby on Rails applications.

5. **Deploy**: Click the deploy button to start the deployment process. Render will build and host the application automatically.

For detailed instructions, you can refer to the official Render documentation on deployment.



