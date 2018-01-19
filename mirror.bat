set t=t:
if exist %t%  subst %t% /d
if not exist %t%  subst %t%  %CD%
cd /d %t%
 





