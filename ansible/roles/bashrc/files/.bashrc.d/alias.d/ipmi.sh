alias phelp="psol pstatus pup pdown preset"
alias psol="ipmitool -I lanplus -U ADMIN -P ADMIN sol activate -H"
alias pstatus="ipmitool -I lanplus -U ADMIN -P ADMIN power -H"
alias pup="ipmitool -I lanplus -U ADMIN -P ADMIN power up -H"
alias pdown="ipmitool -I lanplus -U ADMIN -P ADMIN power down -H"
alias preset="ipmitool -I lanplus -U ADMIN -P ADMIN power reset -H"