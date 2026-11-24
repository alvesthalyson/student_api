# student_api

Django REST Framework + PostgreSQL: Serializer e APIView (CRUD de alunos).

```powershell
git clone https://github.com/alvesthalyson/student_api
cd student_api
python -m venv venv
.\venv\Scripts\Activate.ps1
python -m pip install "Django>=5.2,<5.3" "djangorestframework>=3.16,<3.17" "psycopg[binary]>=3.2,<4"
```

No `psql` (usuario postgres):

```sql
CREATE USER student_api_user WITH PASSWORD 'Classroom2026!';
CREATE DATABASE student_api_db OWNER student_api_user;
```

```powershell
python manage.py makemigrations students
python manage.py migrate
python manage.py runserver
```

Abra http://127.0.0.1:8000/api/students/ (deve mostrar `[]`).
Em outro PowerShell: `.\teste_crud.ps1` e `.\exercicio_individual.ps1`.
