# Exercício individual: 3 alunos, PATCH, DELETE, conferir 2 restantes
$base = "http://127.0.0.1:8000/api/students/"
$alunos = @(
  @{name="Maria Santos"; email="maria@example.com"; age=22; course="Frontend"},
  @{name="Ken Suzuki";   email="ken@example.com";   age=20; course="Backend"},
  @{name="Ana Reyes";    email="ana@example.com";   age=23; course="Full-Stack"}
)
$ids = @()
foreach ($a in $alunos) {
  $r = Invoke-RestMethod $base -Method POST -ContentType "application/json" -Body ($a | ConvertTo-Json)
  $ids += $r.id
}
Invoke-RestMethod $base
$p = @{course="Full-Stack"} | ConvertTo-Json
Invoke-RestMethod "$base$($ids[0])/" -Method PATCH -ContentType "application/json" -Body $p
Invoke-RestMethod "$base$($ids[2])/" -Method DELETE
Invoke-RestMethod $base   # deve mostrar 2 alunos
