//Z81187A JOB ,NOTIFY=&SYSUID,
// MSGCLASS=H,MSGLEVEL=(1,1),REGION=144M
//****************************************************************
//* LICENSED MATERIALS - PROPERTY OF IBM
//* "RESTRICTED MATERIALS OF IBM"
//* (C) COPYRIGHT IBM CORPORATION 2018, 2019. ALL RIGHTS RESERVED
//*
//*  US GOVERNMENT USERS RESTRICTED RIGHTS - USE, DUPLICATION,
//*  OR DISCLOSURE RESTRICTED BY GSA ADP SCHEDULE
//*  CONTRACT WITH IBM CORPORATION
//*
//*
//* THE FOLLOWING HLQ SYMBOLIC MUST CONTAIN THE HIGH LEVEL
//* QUALIFIER UNDER WHICH THE &PROJECT. DATASETS MAY RESIDE.
//*
//    SET HLQ='Z81187'                        *TSO USER ID
//    SET PROJECT='SIMRPT'                    *PROJECT ID
//*************************
//* CLEAN UP DATASETS
//*************************
//DELETE   EXEC PGM=IEFBR14
//SYSPRINT DD SYSOUT=*
//SYSOUT   DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
//DD1      DD DSN=&HLQ..&PROJECT..OBJ,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD2      DD DSN=&HLQ..&PROJECT..LOAD,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD3      DD DSN=&HLQ..&PROJECT..COBOL,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD4      DD DSN=&HLQ..&PROJECT..COBCOPY,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//DD5      DD DSN=&HLQ..&PROJECT..MEMBERS,
//            DISP=(MOD,DELETE,DELETE),
//            UNIT=SYSDA,SPACE=(CYL,(0))
//*
//*************************
//* ALLOCATE DATASETS
//*************************
//ALLOCAT EXEC PGM=IEFBR14,COND=(8,LT)
//SYSOUT   DD SYSOUT=*
//SYSPRINT DD SYSOUT=*
//SYSUDUMP DD SYSOUT=*
/*
//DD1      DD DSN=&HLQ..&PROJECT..OBJ,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD2      DD DSN=&HLQ..&PROJECT..LOAD,
//            DISP=(NEW,CATLG),LRECL=0,RECFM=U,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD3      DD DSN=&HLQ..&PROJECT..COBOL,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD4      DD DSN=&HLQ..&PROJECT..COBCOPY,
//            DISP=(NEW,CATLG),LRECL=80,RECFM=FB,DSORG=PO,
//            SPACE=(TRK,(100,10),RLSE),
//            BLKSIZE=(32720),DSNTYPE=LIBRARY
/*
//DD5      DD DSN=&HLQ..&PROJECT..MEMBERS,
//            DCB=(BLKSIZE=0,LRECL=27,RECFM=FB,DSORG=PS),
//            DISP=(NEW,CATLG),
//            SPACE=(TRK,(100,10),RLSE)
/*
//*
