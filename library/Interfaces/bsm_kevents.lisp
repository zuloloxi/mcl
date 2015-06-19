(in-package :TRAPS)
; Generated from #P"macintosh-hd:hd3:CInterface Translator:Source Interfaces:bsm_kevents.h"
; at Sunday July 2,2006 7:27:11 pm.
; 
;  * Copyright (c) 2003 Apple Computer, Inc. All rights reserved.
;  *
;  * @APPLE_LICENSE_HEADER_START@
;  * 
;  * The contents of this file constitute Original Code as defined in and
;  * are subject to the Apple Public Source License Version 1.1 (the
;  * "License").  You may not use this file except in compliance with the
;  * License.  Please obtain a copy of the License at
;  * http://www.apple.com/publicsource and read it before using this file.
;  * 
;  * This Original Code and all software distributed under the License are
;  * distributed on an "AS IS" basis, WITHOUT WARRANTY OF ANY KIND, EITHER
;  * EXPRESS OR IMPLIED, AND APPLE HEREBY DISCLAIMS ALL SUCH WARRANTIES,
;  * INCLUDING WITHOUT LIMITATION, ANY WARRANTIES OF MERCHANTABILITY,
;  * FITNESS FOR A PARTICULAR PURPOSE OR NON-INFRINGEMENT.  Please see the
;  * License for the specific language governing rights and limitations
;  * under the License.
;  * 
;  * @APPLE_LICENSE_HEADER_END@
;  
; #ifndef _BSM_KEVENTS_H_
; #define _BSM_KEVENTS_H_
;  
;  * Values marked as AUE_NULL are not required to be audited as per CAPP 
;  *  
;  * The second value within comments is the syscall number in Darwin
;  *
;  * Values in the third column are the values assigned by BSM for obsolete 
;  * or old system calls   
;  *
;  * Values marked as XXX in the third column do not have an 
;  * event number assigned as yet, and have (temporarily) been assigned 
;  * value of AUE_NULL 
;  
(defconstant $AUE_NULL 0)
; #define	AUE_NULL        0
(defconstant $AUE_EXIT 1)
; #define	AUE_EXIT        1               /*1*/	
(defconstant $AUE_FORK 2)
; #define	AUE_FORK        2               /*2*/
; #define	AUE_READ        AUE_NULL        /*3*/
; #define	AUE_WRITE       AUE_NULL        /*4*/
(defconstant $AUE_OPEN_R 72)
; #define	AUE_OPEN_R      72              /*5*/
(defconstant $AUE_OPEN_RC 73)
; #define	AUE_OPEN_RC     73              /*5*/
(defconstant $AUE_OPEN_RTC 75)
; #define	AUE_OPEN_RTC    75              /*5*/
(defconstant $AUE_OPEN_RT 74)
; #define	AUE_OPEN_RT     74              /*5*/
(defconstant $AUE_OPEN_RW 80)
; #define	AUE_OPEN_RW     80              /*5*/
(defconstant $AUE_OPEN_RWC 81)
; #define	AUE_OPEN_RWC    81              /*5*/
(defconstant $AUE_OPEN_RWTC 83)
; #define	AUE_OPEN_RWTC   83              /*5*/
(defconstant $AUE_OPEN_RWT 82)
; #define	AUE_OPEN_RWT    82              /*5*/
(defconstant $AUE_OPEN_W 76)
; #define	AUE_OPEN_W      76              /*5*/
(defconstant $AUE_OPEN_WC 77)
; #define	AUE_OPEN_WC     77              /*5*/
(defconstant $AUE_OPEN_WTC 79)
; #define	AUE_OPEN_WTC    79              /*5*/
(defconstant $AUE_OPEN_WT 78)
; #define	AUE_OPEN_WT	78              /*5*/
(defconstant $AUE_CLOSE 112)
; #define	AUE_CLOSE       112              /*6*/
; #define	AU_WAIT4        AUE_NULL        /*7*/	
; #define	AUE_O_CREAT     AUE_NULL        /*8*/     /*4*/
(defconstant $AUE_LINK 5)
; #define	AUE_LINK        5               /*9*/	
(defconstant $AUE_UNLINK 6)
; #define	AUE_UNLINK      6               /*10*/	
; #define AUE_O_EXECV     AUE_NULL        /*11*/
(defconstant $AUE_CHDIR 8)
; #define	AUE_CHDIR       8               /*12*/
(defconstant $AUE_FCHDIR 68)
; #define	AUE_FCHDIR      68              /*13*/
(defconstant $AUE_MKNOD 9)
; #define	AUE_MKNOD       9               /*14*/	
(defconstant $AUE_CHMOD 10)
; #define	AUE_CHMOD       10              /*15*/
(defconstant $AUE_CHOWN 11)
; #define	AUE_CHOWN       11              /*16*/
; #define AUE_O_SBREAK    AUE_NULL        /*17*/
(defconstant $AUE_GETFSSTAT 301)
; #define	AUE_GETFSSTAT   301		/*18*/
; #define	AUE_O_LSEEK     AUE_NULL        /*19*/
; #define AUE_GETPID      AUE_NULL        /*20*/
; #define	AUE_O_MOUNT     AUE_NULL        /*21*/
; #define	AUE_O_UMOUNT    AUE_NULL        /*22*/
(defconstant $AUE_SETUID 200)
; #define	AUE_SETUID      200             /*23*/	
; #define AUE_GETUID      AUE_NULL        /*24*/
; #define AUE_GETEUID	AUE_NULL	/*25*/
(defconstant $AUE_PTRACE 302)
; #define AUE_PTRACE      302		/*26*/
(defconstant $AUE_RECVMSG 190)
; #define	AUE_RECVMSG     190             /*27*/	
(defconstant $AUE_SENDMSG 188)
; #define	AUE_SENDMSG     188             /*28*/
(defconstant $AUE_RECVFROM 191)
; #define	AUE_RECVFROM    191             /*29*/
(defconstant $AUE_ACCEPT 33)
; #define	AUE_ACCEPT      33              /*30*/
; #define AUE_GETPEERNAME AUE_NULL        /*31*/
; #define AUE_GETSOCKNAME AUE_NULL        /*32*/
(defconstant $AUE_ACCESS 14)
; #define	AUE_ACCESS      14              /*33*/
(defconstant $AUE_CHFLAGS 303)
; #define AUE_CHFLAGS     303		/*34*/
(defconstant $AUE_FCHFLAGS 304)
; #define AUE_FCHFLAGS    304		/*35*/
; #define AUE_SYNC        AUE_NULL        /*36*/				
(defconstant $AUE_KILL 15)
; #define	AUE_KILL        15              /*37*/	
; #define	AUE_O_STAT      AUE_NULL        /*38*/
; #define AUE_GETPPID     AUE_NULL	/*39*/
; #define	AUE_O_LSTAT     AUE_NULL	/*40*/
; #define AUE_DUP         AUE_NULL        /*41*/
(defconstant $AUE_PIPE 185)
; #define	AUE_PIPE        185             /*42*/
; #define AUE_GETEGID     AUE_NULL        /*43*/
(defconstant $AUE_PROFILE 305)
; #define AUE_PROFILE     305		/*44*/
(defconstant $AUE_KTRACE 306)
; #define AUE_KTRACE      306		/*45*/
(defconstant $AUE_REBOOT 308)
; #define AUE_REBOOT      308
; #define AUE_SIGACTION   AUE_NULL        /*46*/    /*XXX*/
; #define AUE_GETGID	AUE_NULL		/*47*/
; #define AUE_SIGPROCMASK AUE_NULL        /*48*/    /*XXX*/
; #define AUE_GETLOGIN    AUE_NULL        /*49*/
(defconstant $AUE_SETLOGIN 307)
; #define AUE_SETLOGIN    307		/*50*/
(defconstant $AUE_ACCT 18)
; #define	AUE_ACCT        18              /*51*/	
; #define AUE_SIGPENDING  AUE_NULL        /*52*/    /*XXX*/
; #define AUE_SIGALTSTACK AUE_NULL        /*53*/    /*XXX*/
(defconstant $AUE_IOCTL 158)
; #define AUE_IOCTL       158             /*54*/
(defconstant $AUE_SYSTEMBOOT 113)
; #define AUE_SYSTEMBOOT  113				/*55*/
(defconstant $AUE_REVOKE 309)
; #define AUE_REVOKE      309		/*56*/
(defconstant $AUE_SYMLINK 21)
; #define AUE_SYMLINK     21              /*57*/
(defconstant $AUE_READLINK 22)
; #define AUE_READLINK    22              /*58*/
(defconstant $AUE_EXECVE 23)
; #define AUE_EXECVE      23              /*59*/
(defconstant $AUE_UMASK 310)
; #define AUE_UMASK       310		/*60*/
(defconstant $AUE_CHROOT 24)
; #define AUE_CHROOT      24              /*61*/ 
; #define	AUE_O_FSTAT     AUE_NULL        /*62*/
; #define AUE_O_GETPAGESIZE AUE_NULL      /*64*/
; #define AUE_MSYNC       AUE_NULL        /*65*/
(defconstant $AUE_VFORK 25)
; #define AUE_VFORK       25              /*66*/
; #define AUE_O_VREAD     AUE_NULL        /*67*/
; #define AUE_O_VWRITE    AUE_NULL        /*68*/
; #define AUE_SBRK        AUE_NULL        /*69*/    /*EOPNOTSUP*/
; #define AUE_SSTK        AUE_NULL        /*70*/    /*EOPNOTSUP*/
; #define AUE_O_MMAN      AUE_NULL        /*71*/
; #define AUE_O_VADVISE   AUE_NULL        /*72*/
(defconstant $AUE_MUNMAP 213)
; #define AUE_MUNMAP      213             /*73*/
(defconstant $AUE_MPROTECT 311)
; #define AUE_MPROTECT    311		/*74*/
; #define AUE_MADVISE     AUE_NULL        /*75*/
; #define AUE_O_VHANGUP   AUE_NULL        /*76*/
; #define AUE_O_VLIMIT    AUE_NULL        /*77*/
; #define AUE_MINCORE     AUE_NULL        /*78*/	
; #define AUE_GETGROUPS   AUE_NULL        /*79*/
(defconstant $AUE_SETGROUPS 26)
; #define AUE_SETGROUPS   26              /*80*/
; #define AUE_GETPGRP     AUE_NULL        /*81*/
(defconstant $AUE_SETPGRP 27)
; #define AUE_SETPGRP     27		/*82*/
; #define AUE_SETITIMER   AUE_NULL        /*83*/    /*XXX*/
; #define AUE_O_WAIT      AUE_NULL        /*84*/
; #define AUE_SWAPON      AUE_NULL        /*85*/    /*EOPNOTSUP*/
; #define AUE_GETITIMER   AUE_NULL        /*86*/
; #define AUE_O_GETHOSTNAME AUE_NULL      /*87*/
; #define AUE_O_SETHOSTNAME AUE_NULL      /*88*/
; #define AUE_GETDTABLESIZE AUE_NULL      /*89*/
; #define AUE_DUP2        AUE_NULL        /*90*/
; #define AUE_O_GETDOPT   AUE_NULL        /*91*/
(defconstant $AUE_FCNTL 30)
; #define AUE_FCNTL       30              /*92*/
; #define AUE_SELECT      AUE_NULL        /*93*/
; #define AUE_O_SETDOPT   AUE_NULL        /*94*/
; #define AUE_FSYNC       AUE_NULL        /*95*/
(defconstant $AUE_SETPRIORITY 312)
; #define AUE_SETPRIORITY 312		/*96*/
(defconstant $AUE_SOCKET 183)
; #define AUE_SOCKET      183             /*97*/
(defconstant $AUE_CONNECT 32)
; #define AUE_CONNECT     32              /*98*/
; #define AUE_O_ACCEPT    AUE_NULL        /*99*/
; #define AUE_GETPRIORITY AUE_NULL        /*100*/
; #define AUE_O_SEND      AUE_NULL        /*101*/
; #define AUE_O_RECV      AUE_NULL        /*102*/
; #define AUE_SIGRETURN   AUE_NULL        /*103*/   /*XXX*/
(defconstant $AUE_BIND 34)
; #define AUE_BIND        34              /*104*/
(defconstant $AUE_SETSOCKOPT 35)
; #define AUE_SETSOCKOPT  35              /*105*/
; #define AUE_LISTEN      AUE_NULL        /*106*/
; #define AUE_O_VTIMES    AUE_NULL        /*107*/
; #define AUE_O_SIGVEC    AUE_NULL        /*108*/
; #define AUE_O_SIGBLOCK  AUE_NULL        /*109*/
; #define AUE_O_SIGSETMASK AUE_NULL       /*110*/
; #define AUE_SIGSUSPEND  AUE_NULL        /*111*/   /*XXX*/
; #define AUE_O_SIGSTACK  AUE_NULL        /*112*/
; #define AUE_O_RECVMSG   AUE_NULL        /*113*/
; #define AUE_O_SENDMSG   AUE_NULL        /*114*/
; #define AUE_O_VTRACE    AUE_NULL        /*115*/   /*36*/
; #define AUE_GETTIMEOFDAY AUE_NULL       /*116*/
; #define AUE_GETRUSAGE   AUE_NULL        /*117*/
; #define AUE_GTSOCKOPT   AUE_NULL        /*118*/
; #define AUE_O_RESUBA    AUE_NULL        /*119*/
; #define AUE_READV       AUE_NULL        /*120*/      
; #define AUE_WRITEV      AUE_NULL        /*121*/
(defconstant $AUE_SETTIMEOFDAY 313)
; #define AUE_SETTIMEOFDAY 313		/*122*/
(defconstant $AUE_FCHOWN 38)
; #define AUE_FCHOWN      38              /*123*/
(defconstant $AUE_FCHMOD 39)
; #define AUE_FCHMOD      39              /*124*/
; #define AUE_O_RECVFROM  AUE_NULL        /*125*/
; #define AUE_O_SETREUID  AUE_NULL        /*126*/   /*40*/
; #define AUE_O_SETREGID  AUE_NULL        /*127*/   /*41*/
(defconstant $AUE_RENAME 42)
; #define AUE_RENAME      42              /*128*/
; #define AUE_O_TRUNCATE  AUE_NULL        /*129*/
; #define AUE_O_FTRUNCATE AUE_NULL        /*130*/
(defconstant $AUE_FLOCK 314)
; #define AUE_FLOCK       314		/*131*/
(defconstant $AUE_MKFIFO 315)
; #define AUE_MKFIFO      315		/*132*/
(defconstant $AUE_SENDTO 184)
; #define AUE_SENDTO      184             /*133*/
(defconstant $AUE_SHUTDOWN 46)
; #define AUE_SHUTDOWN    46              /*134*/
(defconstant $AUE_SOCKETPAIR 317)
; #define AUE_SOCKETPAIR  317		/*135*/
(defconstant $AUE_MKDIR 47)
; #define AUE_MKDIR       47              /*136*/
(defconstant $AUE_RMDIR 48)
; #define AUE_RMDIR       48              /*137*/
(defconstant $AUE_UTIMES 49)
; #define AUE_UTIMES      49              /*138*/
(defconstant $AUE_FUTIMES 318)
; #define AUE_FUTIMES     318		/*139*/
(defconstant $AUE_ADJTIME 50)
; #define AUE_ADJTIME     50              /*140*/
; #define AUE_O_GETPEERNAME AUE_NULL      /*141*/
; #define AUE_O_GETHOSTID AUE_NULL        /*142*/
; #define AUE_O_SETHOSTID AUE_NULL        /*143*/
; #define AUE_O_GETRLIMIT AUE_NULL        /*144*/
; #define AUE_O_SETRLIMIT AUE_NULL        /*145*/ 
; #define AUE_O_KILLPG    AUE_NULL        /*146*/
(defconstant $AUE_SETSID 319)
; #define AUE_SETSID      319		/*147*/
; #define AUE_O_SETQUOTA  AUE_NULL        /*148*/
; #define AUE_O_QUOTA     AUE_NULL        /*149*/
; #define AUE_O_GETSOCKNAME AUE_NULL      /*150*/
; #define AUE_GETPGID     AUE_NULL        /*151*/
(defconstant $AUE_SETPRIVEXEC 320)
; #define AUE_SETPRIVEXEC 320		/*152*/
; #define AUE_PREAD       AUE_NULL        /*153*/
; #define AUE_PWRITE      AUE_NULL        /*154*/
(defconstant $AUE_NFSSVC 321)
; #define AUE_NFSSVC      321		/*155*/
; #define AUE_O_GETDIRENTRIES	AUE_NULL    /*156*/
(defconstant $AUE_STATFS 54)
; #define AUE_STATFS      54              /*157*/
(defconstant $AUE_FSTATFS 55)
; #define AUE_FSTATFS     55              /*158*/
(defconstant $AUE_UMOUNT 12)
; #define AUE_UMOUNT      12              /*159*/
; #define AUE_O_ASYNCDAEMON AUE_NULL      /*160*/
(defconstant $AUE_GETFH 322)
; #define AUE_GETFH       322		/*161*/
; #define AUE_O_GETDOMAINNAME AUE_NULL    /*162*/
; #define AUE_O_SETDOMAINNAME	AUE_NULL    /*163*/
; #define AUE_O_PCFS_MOUNT AUE_NULL       /*164*/
(defconstant $AUE_QUOTACTL 323)
; #define AUE_QUOTACTL    323		/*165*/
; #define AUE_O_EXPORTFS  AUE_NULL        /*166*/
(defconstant $AUE_MOUNT 62)
; #define AUE_MOUNT       62              /*167*/
; #define AUE_O_USTATE    AUE_NULL        /*168*/
; #define AUE_TABLE       AUE_NULL        /*170*/   /*ENOSYS*/
; #define AUE_O_WAIT3     AUE_NULL        /*171*/
; #define AUE_O_RPAUSE    AUE_NULL        /*172*/
; #define AUE_O_GETDENTS  AUE_NULL        /*174*/
; #define AUE_GCCONTROL   AUE_NULL        /*175*/   /*ENOSYS*/
(defconstant $AUE_ADDPROFILE 324)
; #define AUE_ADDPROFILE  324		/*176*/
(defconstant $AUE_KDBUGTRACE 325)
; #define AUE_KDBUGTRACE  325		/*180*/
(defconstant $AUE_SETGID 205)
; #define AUE_SETGID      205             /*181*/
(defconstant $AUE_SETEGID 214)
; #define AUE_SETEGID     214             /*182*/
(defconstant $AUE_SETEUID 215)
; #define AUE_SETEUID     215             /*183*/
(defconstant $AUE_STAT 16)
; #define AUE_STAT        16              /*188*/
(defconstant $AUE_FSTAT 326)
; #define AUE_FSTAT       326		/*189*/
(defconstant $AUE_LSTAT 17)
; #define AUE_LSTAT       17              /*190*/
(defconstant $AUE_PATHCONF 71)
; #define AUE_PATHCONF    71              /*191*/
(defconstant $AUE_FPATHCONF 327)
; #define AUE_FPATHCONF   327		/*192*/
; #define AUE_GETRLIMIT   AUE_NULL        /*194*/
(defconstant $AUE_SETRLIMIT 51)
; #define AUE_SETRLIMIT   51              /*195*/
(defconstant $AUE_GETDIRENTRIES 328)
; #define AUE_GETDIRENTRIES 328		/*196*/
(defconstant $AUE_MMAP 210)
; #define AUE_MMAP        210             /*197*/
; #define AUE_SYSCALL     AUE_NULL        /*198*/   /*ENOSYS*/
; #define AUE_LSEEK       AUE_NULL        /*199*/
(defconstant $AUE_TRUNCATE 329)
; #define AUE_TRUNCATE    329		/*200*/
(defconstant $AUE_FTRUNCATE 330)
; #define AUE_FTRUNCATE   330		/*201*/
(defconstant $AUE_SYSCTL 331)
; #define AUE_SYSCTL      331		/*202*/
(defconstant $AUE_MLOCK 332)
; #define AUE_MLOCK       332		/*203*/
(defconstant $AUE_MUNLOCK 333)
; #define AUE_MUNLOCK     333		/*204*/
(defconstant $AUE_UNDELETE 334)
; #define AUE_UNDELETE    334		/*205*/
; #define AUE_MKCOMPLEX   AUE_NULL        /*216*/   /*XXX*/
; #define AUE_STATV       AUE_NULL        /*217*/   /*EOPNOTSUPP*/
; #define AUE_LSTATV      AUE_NULL        /*218*/   /*EOPNOTSUPP*/
; #define AUE_FSTATV      AUE_NULL        /*219*/   /*EOPNOTSUPP*/
(defconstant $AUE_GETATTRLIST 335)
; #define AUE_GETATTRLIST 335		/*220*/
(defconstant $AUE_SETATTRLIST 336)
; #define AUE_SETATTRLIST 336		/*221*/ 
(defconstant $AUE_GETDIRENTRIESATTR 337)
; #define AUE_GETDIRENTRIESATTR 337	/*222*/
(defconstant $AUE_EXCHANGEDATA 338)
; #define AUE_EXCHANGEDATA 338		/*223*/
; #define AUE_CHECKUSERACCESS	AUE_NULL    /*224*/   /* To Be Removed */
(defconstant $AUE_SEARCHFS 339)
; #define AUE_SEARCHFS    339		/*225*/
; #define AUE_DELETE      AUE_NULL        /*226*/   /* reserved */
; #define AUE_COPYFILE    AUE_NULL        /*227*/   /* reserved */
; #define AUE_WATCHEVENT  AUE_NULL        /*231*/   /* reserved */
; #define AUE_WAITEVENT   AUE_NULL        /*232*/   /* reserved */
; #define AUE_MODWATCH    AUE_NULL        /*233*/   /* reserved */
; #define AUE_FSCTL       AUE_NULL        /*242*/   /* reserved */
(defconstant $AUE_MINHERIT 340)
; #define AUE_MINHERIT    340		/*250*/
; #define AUE_SEMSYS      AUE_NULL        /*251*/   /* To Be Removed */
; #define AUE_MSGSYS      AUE_NULL        /*252*/   /* To Be Removed */
; #define AUE_SHMSYS      AUE_NULL        /*253*/
(defconstant $AUE_SEMCTL 98)
; #define AUE_SEMCTL      98              /*254*/
(defconstant $AUE_SEMCTL_GETALL 105)
; #define AUE_SEMCTL_GETALL  105          /*254*/
(defconstant $AUE_SEMCTL_GETNCNT 102)
; #define AUE_SEMCTL_GETNCNT 102          /*254*/
(defconstant $AUE_SEMCTL_GETPID 103)
; #define AUE_SEMCTL_GETPID  103          /*254*/
(defconstant $AUE_SEMCTL_GETVAL 104)
; #define AUE_SEMCTL_GETVAL  104          /*254*/
(defconstant $AUE_SEMCTL_GETZCNT 106)
; #define AUE_SEMCTL_GETZCNT 106          /*254*/
(defconstant $AUE_SEMCTL_RMID 99)
; #define AUE_SEMCTL_RMID    99           /*254*/
(defconstant $AUE_SEMCTL_SET 100)
; #define AUE_SEMCTL_SET     100          /*254*/
(defconstant $AUE_SEMCTL_SETALL 108)
; #define AUE_SEMCTL_SETALL  108          /*254*/
(defconstant $AUE_SEMCTL_SETVAL 107)
; #define AUE_SEMCTL_SETVAL  107          /*254*/
(defconstant $AUE_SEMCTL_STAT 101)
; #define AUE_SEMCTL_STAT	   101          /*254*/
(defconstant $AUE_SEMGET 109)
; #define AUE_SEMGET      109             /*255*/
(defconstant $AUE_SEMOP 110)
; #define AUE_SEMOP       110             /*256*/
(defconstant $AUE_SEMCONFIG 341)
; #define AUE_SEMCONFIG   341		/*257*/
; #define AUE_MSGCL       AUE_NULL        /*258*/   /*EOPNOTSUPP*/
(defconstant $AUE_MSGGET 88)
; #define AUE_MSGGET      88              /*259*/   /*88-EOPNOTSUPP*/
(defconstant $AUE_MSGRCV 89)
; #define AUE_MSGRCV      89              /*261*/   /*89-EOPNOTSUPP*/
(defconstant $AUE_MSGSND 90)
; #define AUE_MSGSND      90              /*260*/   /*90-EOPNOTSUPP*/
(defconstant $AUE_SHMAT 96)
; #define AUE_SHMAT       96              /*262*/
(defconstant $AUE_SHMCTL 91)
; #define AUE_SHMCTL      91              /*263*/
(defconstant $AUE_SHMCTL_RMID 92)
; #define AUE_SHMCTL_RMID 92              /*263*/
(defconstant $AUE_SHMCTL_SET 93)
; #define AUE_SHMCTL_SET  93              /*263*/
(defconstant $AUE_SHMCTL_STAT 94)
; #define AUE_SHMCTL_STAT 94              /*263*/
(defconstant $AUE_SHMDT 97)
; #define AUE_SHMDT       97              /*264*/
(defconstant $AUE_SHMGET 95)
; #define AUE_SHMGET      95              /*265*/
(defconstant $AUE_SHMOPEN 345)
; #define AUE_SHMOPEN     345		/*266*/
(defconstant $AUE_SHMUNLINK 346)
; #define AUE_SHMUNLINK   346		/*267*/
(defconstant $AUE_SEMOPEN 342)
; #define AUE_SEMOPEN     342		/*268*/
(defconstant $AUE_SEMCLOSE 343)
; #define AUE_SEMCLOSE    343		/*269*/
(defconstant $AUE_SEMUNLINK 344)
; #define AUE_SEMUNLINK   344		/*270*/
; #define AUE_SEMWAIT     AUE_NULL        /*271*/
; #define AUE_SEMTRYWAIT  AUE_NULL        /*272*/
; #define AUE_SEMPOST     AUE_NULL        /*273*/
; #define AUE_SEMGETVALUE AUE_NULL        /*274*/   /*ENOSYS*/
; #define AUE_SEMINIT     AUE_NULL        /*275*/   /*ENOSYS*/
; #define AUE_SEMDESTROY  AUE_NULL        /*276*/   /*ENOSYS*/
(defconstant $AUE_LOADSHFILE 347)
; #define AUE_LOADSHFILE  347		/*296*/
(defconstant $AUE_RESETSHFILE 348)
; #define AUE_RESETSHFILE 348		/*297*/
(defconstant $AUE_NEWSYSTEMSHREG 349)
; #define AUE_NEWSYSTEMSHREG 349		/*298*/
; #define AUE_GETSID      AUE_NULL        /*310*/
; #define AUE_MLOCKALL    AUE_NULL        /*324*/   /*ENOSYS*/
; #define AUE_MUNLOCKALL  AUE_NULL        /*325*/   /*ENOSYS*/
; #define AUE_ISSETUGID   AUE_NULL        /*327*/
(defconstant $AUE_PTHREADKILL 350)
; #define AUE_PTHREADKILL 350		/*328*/
(defconstant $AUE_PTHREADSIGMASK 351)
; #define AUE_PTHREADSIGMASK 351		/*329*/
; #define AUE_SIGWAIT     AUE_NULL        /*330*/   /*XXX*/
;  BSM events - Have to identify which ones are relevant to MacOSX
(defconstant $AUE_ACLSET 251)
; #define AUE_ACLSET                      251
(defconstant $AUE_AUDIT 211)
; #define AUE_AUDIT                       211
(defconstant $AUE_AUDITON_GETCAR 224)
; #define AUE_AUDITON_GETCAR              224
(defconstant $AUE_AUDITON_GETCLASS 231)
; #define AUE_AUDITON_GETCLASS            231
(defconstant $AUE_AUDITON_GETCOND 229)
; #define AUE_AUDITON_GETCOND             229
(defconstant $AUE_AUDITON_GETCWD 223)
; #define AUE_AUDITON_GETCWD              223
(defconstant $AUE_AUDITON_GETKMASK 221)
; #define AUE_AUDITON_GETKMASK            221
(defconstant $AUE_AUDITON_GETSTAT 225)
; #define AUE_AUDITON_GETSTAT             225
(defconstant $AUE_AUDITON_GPOLICY 114)
; #define AUE_AUDITON_GPOLICY             114
(defconstant $AUE_AUDITON_GQCTRL 145)
; #define AUE_AUDITON_GQCTRL              145
(defconstant $AUE_AUDITON_SETCLASS 232)
; #define AUE_AUDITON_SETCLASS            232
(defconstant $AUE_AUDITON_SETCOND 230)
; #define AUE_AUDITON_SETCOND             230
(defconstant $AUE_AUDITON_SETKMASK 222)
; #define AUE_AUDITON_SETKMASK            222
(defconstant $AUE_AUDITON_SESKMASK 228)
; #define AUE_AUDITON_SESKMASK            228
(defconstant $AUE_AUDITON_SETSTAT 226)
; #define AUE_AUDITON_SETSTAT             226
(defconstant $AUE_AUDITON_SETUMASK 227)
; #define AUE_AUDITON_SETUMASK            227
(defconstant $AUE_AUDITON_SPOLICY 147)
; #define AUE_AUDITON_SPOLICY             147
(defconstant $AUE_AUDITON_SQCTRL 146)
; #define AUE_AUDITON_SQCTRL              146
(defconstant $AUE_AUDITSVC 136)
; #define AUE_AUDITSVC                    136
(defconstant $AUE_DOORFS_DOOR_BIND 260)
; #define AUE_DOORFS_DOOR_BIND            260
(defconstant $AUE_DOORFS_DOOR_CALL 254)
; #define AUE_DOORFS_DOOR_CALL            254
(defconstant $AUE_DOORFS_DOOR_CREATE 256)
; #define AUE_DOORFS_DOOR_CREATE          256
(defconstant $AUE_DOORFS_DOOR_CRED 259)
; #define AUE_DOORFS_DOOR_CRED            259
(defconstant $AUE_DOORFS_DOOR_INFO 258)
; #define AUE_DOORFS_DOOR_INFO            258
(defconstant $AUE_DOORFS_DOOR_RETURN 255)
; #define AUE_DOORFS_DOOR_RETURN          255
(defconstant $AUE_DOORFS_DOOR_REVOKE 257)
; #define AUE_DOORFS_DOOR_REVOKE          257
(defconstant $AUE_DOORFS_DOOR_UNBIND 261)
; #define AUE_DOORFS_DOOR_UNBIND          261
(defconstant $AUE_ENTERPROM 153)
; #define AUE_ENTERPROM                   153
(defconstant $AUE_EXEC 7)
; #define AUE_EXEC                        7
(defconstant $AUE_EXITPROM 154)
; #define AUE_EXITPROM                    154
(defconstant $AUE_FACLSET 252)
; #define	AUE_FACLSET                     252
(defconstant $AUE_FCHROOT 69)
; #define AUE_FCHROOT                     69
(defconstant $AUE_FORK1 241)
; #define AUE_FORK1                       241
(defconstant $AUE_GETAUDIT 132)
; #define AUE_GETAUDIT                    132
(defconstant $AUE_GETAUDIT_ADDR 267)
; #define AUE_GETAUDIT_ADDR               267	
(defconstant $AUE_GETAUID 130)
; #define AUE_GETAUID                     130
(defconstant $AUE_GETMSG 217)
; #define AUE_GETMSG                      217
(defconstant $AUE_SOCKACCEPT 247)
; #define AUE_SOCKACCEPT                  247
(defconstant $AUE_SOCKRECEIVE 250)
; #define AUE_SOCKRECEIVE                 250
(defconstant $AUE_GETPMSG 219)
; #define AUE_GETPMSG                     219
(defconstant $AUE_GETPORTAUDIT 149)
; #define AUE_GETPORTAUDIT                149
(defconstant $AUE_INST_SYNC 264)
; #define AUE_INST_SYNC                   264
(defconstant $AUE_LCHOWN 237)
; #define AUE_LCHOWN                      237
(defconstant $AUE_LXSTAT 236)
; #define AUE_LXSTAT                      236
(defconstant $AUE_MEMCNTL 238)
; #define AUE_MEMCNTL                     238
(defconstant $AUE_MODADDMAJ 246)
; #define AUE_MODADDMAJ                   246
(defconstant $AUE_MODCONFIG 245)
; #define AUE_MODCONFIG                   245
(defconstant $AUE_MODLOAD 243)
; #define AUE_MODLOAD                     243
(defconstant $AUE_MODUNLOAD 244)
; #define AUE_MODUNLOAD                   244
(defconstant $AUE_MSGCTL 84)
; #define AUE_MSGCTL                      84
(defconstant $AUE_MSGCTL_RMID 85)
; #define AUE_MSGCTL_RMID                 85
(defconstant $AUE_MSGCTL_SET 86)
; #define AUE_MSGCTL_SET                  86
(defconstant $AUE_MSGCTL_STAT 87)
; #define AUE_MSGCTL_STAT                 87
(defconstant $AUE_NICE 203)
; #define AUE_NICE                        203
(defconstant $AUE_P_ONLINE 262)
; #define AUE_P_ONLINE                    262
(defconstant $AUE_PRIOCNTLSYS 212)
; #define AUE_PRIOCNTLSYS                 212
(defconstant $AUE_CORE 111)
; #define AUE_CORE                        111
(defconstant $AUE_PROCESSOR_BIND 263)
; #define AUE_PROCESSOR_BIND              263
(defconstant $AUE_PUTMSG 216)
; #define AUE_PUTMSG                      216
(defconstant $AUE_SOCKCONNECT 248)
; #define AUE_SOCKCONNECT                 248
(defconstant $AUE_SOCKSEND 249)
; #define AUE_SOCKSEND                    249
(defconstant $AUE_PUTPMSG 218)
; #define AUE_PUTPMSG                     218
(defconstant $AUE_SETAUDIT 133)
; #define AUE_SETAUDIT                    133
(defconstant $AUE_SETAUDIT_ADDR 266)
; #define AUE_SETAUDIT_ADDR               266
(defconstant $AUE_SETAUID 131)
; #define AUE_SETAUID                     131
(defconstant $AUE_SOCKCONFIG 183)
; #define AUE_SOCKCONFIG                  183
(defconstant $AUE_STATVFS 234)
; #define AUE_STATVFS                     234
(defconstant $AUE_STIME 201)
; #define AUE_STIME                       201
(defconstant $AUE_SYSINFO 39)
; #define AUE_SYSINFO                     39
(defconstant $AUE_UTIME 202)
; #define AUE_UTIME                       202
(defconstant $AUE_UTSYS 233)
; #define AUE_UTSYS                       233
(defconstant $AUE_XMKNOD 240)
; #define AUE_XMKNOD                      240
(defconstant $AUE_XSTAT 235)
; #define AUE_XSTAT                       235

; #endif /* !_BSM_KEVENTS_H_ */


(provide-interface "bsm_kevents")