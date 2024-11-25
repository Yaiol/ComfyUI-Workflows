set d1=01 txt2img
set d2=00 txt2img-basic

pushd "%d1%"
pushd "%d2%"
for %%d in (sdxl,pyxl,sdlt,sdtr,sdca,sd30,sd35,fx10,kl10) do ( 
  for /F %%f in ('dir /b *-%%d*.*') do (
    move "%%f" "..\..\%%d\%d1%\%d2%"
  )
)
popd
popd
