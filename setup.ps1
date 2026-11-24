# Windows PowerShell - execute em uma pasta nova
mkdir student_api
cd student_api
python -m venv venv
.\venv\Scripts\Activate.ps1
python -m pip install "Django>=5.2,<5.3" "djangorestframework>=3.16,<3.17" "psycopg[binary]>=3.2,<4"
django-admin startproject config .
python manage.py startapp students
# Depois copie os arquivos de students/ e config/urls.py deste projeto
# e edite config/settings.py (veja config/settings_snippet.py)

# psql como administrador postgres:
# CREATE USER student_api_user WITH PASSWORD 'Classroom2026!';
# CREATE DATABASE student_api_db OWNER student_api_user;

python manage.py makemigrations students
python manage.py migrate
python manage.py runserver
