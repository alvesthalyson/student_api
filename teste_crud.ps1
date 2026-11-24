# Terminal 2 (servidor rodando no Terminal 1)
$student = @{name="Juan Dela Cruz"; email="juan@example.com";
age=21; course="Full-Stack"} | ConvertTo-Json
$result = Invoke-RestMethod -Uri "http://127.0.0.1:8000/api/students/" `
-Method POST -ContentType "application/json" -Body $student
$id = $result.id
Invoke-RestMethod "http://127.0.0.1:8000/api/students/"
Invoke-RestMethod "http://127.0.0.1:8000/api/students/$id/"
$full = @{name="Juan Dela Cruz"; email="juan@example.com";
age=22; course="Advanced Full-Stack"} | ConvertTo-Json
Invoke-RestMethod "http://127.0.0.1:8000/api/students/$id/" `
-Method PUT -ContentType "application/json" -Body $full
$partial = @{course="Backend Development"} | ConvertTo-Json
Invoke-RestMethod "http://127.0.0.1:8000/api/students/$id/" `
-Method PATCH -ContentType "application/json" -Body $partial
Invoke-RestMethod "http://127.0.0.1:8000/api/students/$id/" -Method DELETE
