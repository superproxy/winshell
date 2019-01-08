rem npm install -g pkg

path=%node_home%;%path%
call pkg  -t win   package.json

move /Y winpm.exe  ..\winpm.exe