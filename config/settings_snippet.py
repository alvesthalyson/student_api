# Em config/settings.py (gerado pelo startproject):
# 1) Adicione "rest_framework" e "students" ao INSTALLED_APPS.
# 2) Troque DATABASES por:
DATABASES = {
    "default": {
        "ENGINE": "django.db.backends.postgresql",
        "NAME": "student_api_db",
        "USER": "student_api_user",
        "PASSWORD": "Classroom2026!",
        "HOST": "127.0.0.1",
        "PORT": "5432",
    }
}
