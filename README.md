# Learning Django
This is the repository for the LinkedIn Learning course Learning Django. The full course is available from [LinkedIn Learning](https://www.linkedin.com/learning/learning-django-2).

With Django, you can take web applications from concept to launch in a matter of hours. It's a free and open-source framework that's designed on top of Python and supports data-driven architecture. In this course, learn what you need to know to get up and running with Django. Instructor Caleb Smith walks through creating a brand-new Django project, defining a data model and fields, querying the database, and using the framework's built-in URL handlers, views, and templates to structure the rest of the back end. Plus, learn how to incorporate CSS and JavaScript to enhance the style and usability of your Django templates.

## Instructions
This repository has branches for each of the videos in the course. You can use the branch pop up menu in github to switch to a specific branch and take a look at the course at that stage, or you can add `/tree/BRANCH_NAME` to the URL to go to the branch you want to access.

## Branches
The branches are structured to correspond to the videos in the course. The naming convention is `CHAPTER#_MOVIE#`. As an example, the branch named `02_03` corresponds to the second chapter and the third video in that chapter. 
Some branches will have a beginning and an end state. These are marked with the letters `b` for "beginning" and `e` for "end". The `b` branch contains the code as it is at the beginning of the movie. The `e` branch contains the code as it is at the end of the movie. The `master` branch holds the final state of the code when in the course.

## Running the App

Before running the App, ensure the migrations are created and applied.
To verify the migrations, use the following commands

python manage.py showmigrations

python manage.py makemigrations

python manage.py migrate

These commands ensure the necessary migration scripts are created in the migrations folder in the corresponding apps. This project has only one app wisdompets.

To browse through the schema, use SQLiteBrowser. Once its downloaded and installed, use Open Database option to select the db.sqlite3 file from the wisdompets root project folder.

Load the data into the tables using the management command thats created under the Adoptions app

python manage.py load_pet_data

Use the following command to create a super user for managing (Create/Update/Delete) the Pet/Vaccine data through the admin console
python manage.py createsuperuser

On windows, use python manage.py runserver
On Linux/Mac, python3 manage.py runserver

## Additional Useful Information and Commands

Querying the database interactively using the Django shell.

Run python manage.py shell to open up an interactive python shell

from adoptions.models import Pet

pets = Pet.objects.all() // this will return all the rows in the Pets table. Similar to findAll() in Spring Data JPA