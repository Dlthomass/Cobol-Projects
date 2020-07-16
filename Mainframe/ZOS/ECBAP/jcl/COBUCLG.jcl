//USER21G JOB ,MSGCLASS=H,MSGLEVEL=(1,1),TIME=(,4),
//    REGION=144M,COND=(16,LT)
//*
//    SET COBPGM='FAVS'
//**** Compile JCL ******
//STP0000 EXEC PROC=ELAXFCOC,
//    CICS=,
//    DB2=,
//    COMP=
//COBOL.SYSPRINT DD SYSOUT=*
//SYSLIN         DD DISP=SHR,
//    DSN=&SYSUID..COBOBJS.OBJ(&COBPGM.)
//COBOL.SYSLIB   DD DISP=SHR,
//    DSN=&SYSUID..COBOL.COPYLIB
//COBOL.SYSXMLSD DD DUMMY
//COBOL.SYSIN    DD DISP=SHR,
//    DSN=&SYSUID..LEARN.COBOL(&COBPGM.)
//****Link/Edit Step ******
//LKED EXEC PROC=ELAXFLNK
//LINK.SYSLIB    DD DISP=SHR,
//    DSN=CEE.SCEELKED
//               DD DISP=SHR,
//    DSN=&SYSUID..LEARN.LOAD
//LINK.OBJ0000   DD DISP=SHR,
//    DSN=&SYSUID..COBOBJS.OBJ(&COBPGM.)
//LINK.SYSLIN    DD *
     INCLUDE OBJ0000
/*
//LINK.SYSLMOD   DD DISP=SHR,
//    DSN=&SYSUID..LEARN.LOAD(&COBPGM.)
//*
//** Go (Run) Step. Add //DD cards when needed ******
//GO    EXEC   PROC=ELAXFGO,GO=&COBPGM.,
//        LOADDSN=&SYSUID..LEARN.LOAD
//******* ADDITIONAL RUNTIME JCL HERE ******
//PAYROLL   DD DISP=SHR,DSN=DDS0001.LEARN.PAYROL01
//PAYROL3A  DD DISP=SHR,DSN=DDS0001.LEARN.PAYROL3A
//PAYCHECK  DD SYSOUT=*
//ACCTREC   DD DISP=SHR,DSN=DDS0001.LEARN.ACCT.DATA
//INFILE    DD DISP=SHR,DSN=DDS0001.LEARN.ACCT.DATA
//OUTFILE   DD DISP=SHR,DSN=DDS0001.LEARN.OUTFILE
//INVALS    DD DISP=SHR,DSN=DDS0001.LEARN.INVALS
//FAVIN     DD DISP=SHR,DSN=DDS0001.LEARN.FAVIN
//*FAVIN     DD DISP=SHR,DSN=&SYSUID..LEARN.FAVIN
//PRTLINE   DD SYSOUT=*
//B37       DD DISP=SHR,DSN=DDS0001.LEARN.B37
//CLAIM     DD DISP=SHR,DSN=DDS0001.LEARN.INSCLAIM
//*RFPIN     DD DISP=SHR,DSN=&SYSUID..LEARN.FAVRFP
//RFPIN     DD *
11111111111111111111111111111111111111111111111111111111111111111111111
22222222222222222222222222222222222222222222222222222222222222222222222
33333333333333333333333333333333333333333333333333333333333333333333333
44444444444444444444444444444444444444444444444444444444444444444444444
//PROPOSAL  DD SYSOUT=*
//CLAIMRPT  DD SYSOUT=*
