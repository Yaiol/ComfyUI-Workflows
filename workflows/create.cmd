for %%d in (fx10,kl10,sdxl,pyxl,sdlt,sdtr,sdca,sd30,sd35) do ( 
  mkdir %%d
  pushd %%d
  
  mkdir "01 txt2img"
  pushd "01 txt2img"
  mkdir "00 txt2img-basic"
  mkdir "01 txt2img-hires"
  mkdir "02 txt2img-cond"
  mkdir "20 txt2img-ipa"
  popd

  mkdir "02 img2img"
  pushd "02 img2img"
  popd

  mkdir "03 inpaint"
  pushd "03 inpaint"
  popd
  
  popd  
)
