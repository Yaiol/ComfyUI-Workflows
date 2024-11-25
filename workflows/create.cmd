for %%d in (sdxl,pyxl,sdlt,sdtr,sdca,sd30,sd35,fx10,kl10) do ( 
  mkdir %%d
  pushd %%d
  mkdir "01 txt2img"
  pushd "01 txt2img"
  mkdir "00 txt2img-basic"
  popd
  mkdir "02 img2img"
  pushd "02 img2img"
  mkdir "00 txt2img-basic"
  popd
  popd
)
