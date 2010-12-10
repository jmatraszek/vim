" hints_man2.vim
"   Author: Charles E. Campbell, Jr.
"   Date:   Mar 13, 2007
"   Version: 1
" ---------------------------------------------------------------------
"  Load Once: {{{1
if &cp || exists("b:loaded_hints_man2")
 finish
endif
let b:loaded_hints_man2= "v1"
let s:keepcpo          = &cpo
set cpo&vim

" ---------------------------------------------------------------------
" Hints! {{{1
inorea accept	accept<c-o>:echoh HintHL<Bar>echo "int accept(int sockfd, struct sockaddr * addr, socklen_t * addrlen)"<Bar>echoh None<cr>
inorea access	access<c-o>:echoh HintHL<Bar>echo "int access(const char * pathname, int mode)"<Bar>echoh None<cr>
inorea acct	acct<c-o>:echoh HintHL<Bar>echo "int acct(const char * filename)"<Bar>echoh None<cr>
inorea adjtimex	adjtimex<c-o>:echoh HintHL<Bar>echo "int adjtimex(struct timex * buf)"<Bar>echoh None<cr>
inorea alarm	alarm<c-o>:echoh HintHL<Bar>echo "unsigned int alarm(unsigned int seconds)"<Bar>echoh None<cr>
inorea alloc_hugepages	alloc_hugepages<c-o>:echoh HintHL<Bar>echo "void *alloc_hugepages(int key, void * addr, size_t len, int prot, int flag)"<Bar>echoh None<cr>
inorea arch_prctl	arch_prctl<c-o>:echoh HintHL<Bar>echo "int arch_prctl(int code, unsigned long addr)"<Bar>echoh None<cr>
inorea bdflush	bdflush<c-o>:echoh HintHL<Bar>echo "int bdflush(int func, long * address)"<Bar>echoh None<cr>
inorea bdflush	bdflush<c-o>:echoh HintHL<Bar>echo "int bdflush(int func, long data)"<Bar>echoh None<cr>
inorea brk	brk<c-o>:echoh HintHL<Bar>echo "int brk(void * end_data_segment)"<Bar>echoh None<cr>
inorea cacheflush	cacheflush<c-o>:echoh HintHL<Bar>echo "int cacheflush(char * addr, int nbytes, int cache)"<Bar>echoh None<cr>
inorea capget	capget<c-o>:echoh HintHL<Bar>echo "int capget(cap_user_header_t header, cap_user_data_t data)"<Bar>echoh None<cr>
inorea capset	capset<c-o>:echoh HintHL<Bar>echo "int capset(cap_user_header_t header, const cap_user_data_t data)"<Bar>echoh None<cr>
inorea chdir	chdir<c-o>:echoh HintHL<Bar>echo "int chdir(const char * path)"<Bar>echoh None<cr>
inorea chmod	chmod<c-o>:echoh HintHL<Bar>echo "int chmod(const char * path, mode_t mode)"<Bar>echoh None<cr>
inorea chown	chown<c-o>:echoh HintHL<Bar>echo "int chown(const char * path, uid_t owner, gid_t group)"<Bar>echoh None<cr>
inorea chroot	chroot<c-o>:echoh HintHL<Bar>echo "int chroot(const char * path)"<Bar>echoh None<cr>
inorea clone	clone<c-o>:echoh HintHL<Bar>echo "int clone(int (* fn)(void *), void * child_stack, int flags, void * arg)"<Bar>echoh None<cr>
inorea close	close<c-o>:echoh HintHL<Bar>echo "int close(int fd)"<Bar>echoh None<cr>
inorea connect	connect<c-o>:echoh HintHL<Bar>echo "int connect(int sockfd, const struct sockaddr * serv_addr, socklen_t addrlen)"<Bar>echoh None<cr>
inorea creat	creat<c-o>:echoh HintHL<Bar>echo "int creat(const char * pathname, mode_t mode)"<Bar>echoh None<cr>
inorea dup2	dup2<c-o>:echoh HintHL<Bar>echo "int dup2(int oldfd, int newfd)"<Bar>echoh None<cr>
inorea dup	dup<c-o>:echoh HintHL<Bar>echo "int dup(int oldfd)"<Bar>echoh None<cr>
inorea epoll_create	epoll_create<c-o>:echoh HintHL<Bar>echo "int epoll_create(int size)"<Bar>echoh None<cr>
inorea epoll_ctl	epoll_ctl<c-o>:echoh HintHL<Bar>echo "int epoll_ctl(int epfd, int op, int fd, struct epoll_event * event)"<Bar>echoh None<cr>
inorea epoll_wait	epoll_wait<c-o>:echoh HintHL<Bar>echo "int epoll_wait(int epfd, struct epoll_event * events, int maxevents, int timeout)"<Bar>echoh None<cr>
inorea _exit	_exit<c-o>:echoh HintHL<Bar>echo "void _exit(int status)"<Bar>echoh None<cr>
inorea _Exit	_Exit<c-o>:echoh HintHL<Bar>echo "void _Exit(int status)"<Bar>echoh None<cr>
inorea exit_group	exit_group<c-o>:echoh HintHL<Bar>echo "void exit_group(int status)"<Bar>echoh None<cr>
inorea fchdir	fchdir<c-o>:echoh HintHL<Bar>echo "int fchdir(int fd)"<Bar>echoh None<cr>
inorea fchmod	fchmod<c-o>:echoh HintHL<Bar>echo "int fchmod(int fildes, mode_t mode)"<Bar>echoh None<cr>
inorea fchown	fchown<c-o>:echoh HintHL<Bar>echo "int fchown(int fd, uid_t owner, gid_t group)"<Bar>echoh None<cr>
inorea fcntl	fcntl<c-o>:echoh HintHL<Bar>echo "int fcntl(int fd, int cmd)"<Bar>echoh None<cr>
inorea fcntl	fcntl<c-o>:echoh HintHL<Bar>echo "int fcntl(int fd, int cmd, long arg)"<Bar>echoh None<cr>
inorea fcntl	fcntl<c-o>:echoh HintHL<Bar>echo "int fcntl(int fd, int cmd, struct flock * lock)"<Bar>echoh None<cr>
inorea fdatasync	fdatasync<c-o>:echoh HintHL<Bar>echo "int fdatasync(int fd)"<Bar>echoh None<cr>
inorea FD_CLR	FD_CLR<c-o>:echoh HintHL<Bar>echo "FD_CLR(int fd, fd_set * set)"<Bar>echoh None<cr>
inorea FD_ISSET	FD_ISSET<c-o>:echoh HintHL<Bar>echo "FD_ISSET(int fd, fd_set * set)"<Bar>echoh None<cr>
inorea FD_SET	FD_SET<c-o>:echoh HintHL<Bar>echo "FD_SET(int fd, fd_set * set)"<Bar>echoh None<cr>
inorea FD_ZERO	FD_ZERO<c-o>:echoh HintHL<Bar>echo "FD_ZERO(fd_set * set)"<Bar>echoh None<cr>
inorea fgetxattr	fgetxattr<c-o>:echoh HintHL<Bar>echo "ssize_t fgetxattr (int filedes, const char* name, \t\t\t\t void* value, size_t size)"<Bar>echoh None<cr>
inorea flistxattr	flistxattr<c-o>:echoh HintHL<Bar>echo "ssize_t flistxattr (int filedes, \t\t\t\t char* list, size_t size)"<Bar>echoh None<cr>
inorea flock	flock<c-o>:echoh HintHL<Bar>echo "int flock(int fd, int operation)"<Bar>echoh None<cr>
inorea fork	fork<c-o>:echoh HintHL<Bar>echo "pid_t fork(void)"<Bar>echoh None<cr>
inorea free_hugepages	free_hugepages<c-o>:echoh HintHL<Bar>echo "int free_hugepages(void * addr)"<Bar>echoh None<cr>
inorea fremovexattr	fremovexattr<c-o>:echoh HintHL<Bar>echo "int fremovexattr (int filedes, const char* name)"<Bar>echoh None<cr>
inorea fsetxattr	fsetxattr<c-o>:echoh HintHL<Bar>echo "int fsetxattr (int filedes, const char* name, \t\t\t const void* value, size_t size, int flags)"<Bar>echoh None<cr>
inorea fstatfs	fstatfs<c-o>:echoh HintHL<Bar>echo "int fstatfs(int fd, struct statfs * buf)"<Bar>echoh None<cr>
inorea fstat	fstat<c-o>:echoh HintHL<Bar>echo "int fstat(int filedes, struct stat * buf)"<Bar>echoh None<cr>
inorea fstatvfs	fstatvfs<c-o>:echoh HintHL<Bar>echo "int fstatvfs(int fd, struct statvfs * buf)"<Bar>echoh None<cr>
inorea fsync	fsync<c-o>:echoh HintHL<Bar>echo "int fsync(int fd)"<Bar>echoh None<cr>
inorea ftruncate	ftruncate<c-o>:echoh HintHL<Bar>echo "int ftruncate(int fd, off_t length)"<Bar>echoh None<cr>
inorea futex	futex<c-o>:echoh HintHL<Bar>echo "int futex (int * uaddr, int op, int val, const struct timespec * timeout, int * uaddr2, int val3)"<Bar>echoh None<cr>
inorea getcwd	getcwd<c-o>:echoh HintHL<Bar>echo "long getcwd(char * buf, unsigned long size)"<Bar>echoh None<cr>
inorea getdents	getdents<c-o>:echoh HintHL<Bar>echo "int getdents(unsigned int fd, struct dirent * dirp, unsigned int count)"<Bar>echoh None<cr>
inorea getdomainname	getdomainname<c-o>:echoh HintHL<Bar>echo "int getdomainname(char * name, size_t len)"<Bar>echoh None<cr>
inorea getdtablesize	getdtablesize<c-o>:echoh HintHL<Bar>echo "int getdtablesize(void)"<Bar>echoh None<cr>
inorea getegid	getegid<c-o>:echoh HintHL<Bar>echo "gid_t getegid(void)"<Bar>echoh None<cr>
inorea geteuid	geteuid<c-o>:echoh HintHL<Bar>echo "uid_t geteuid(void)"<Bar>echoh None<cr>
inorea getgid	getgid<c-o>:echoh HintHL<Bar>echo "gid_t getgid(void)"<Bar>echoh None<cr>
inorea getgroups	getgroups<c-o>:echoh HintHL<Bar>echo "int getgroups(int size, gid_t list [])"<Bar>echoh None<cr>
inorea gethostid	gethostid<c-o>:echoh HintHL<Bar>echo "long gethostid(void)"<Bar>echoh None<cr>
inorea gethostname	gethostname<c-o>:echoh HintHL<Bar>echo "int gethostname(char * name, size_t len)"<Bar>echoh None<cr>
inorea getpagesize	getpagesize<c-o>:echoh HintHL<Bar>echo "int getpagesize(void)"<Bar>echoh None<cr>
inorea getpeername	getpeername<c-o>:echoh HintHL<Bar>echo "int getpeername(int s, struct sockaddr * name, socklen_t * namelen)"<Bar>echoh None<cr>
inorea getpgid	getpgid<c-o>:echoh HintHL<Bar>echo "pid_t getpgid(pid_t pid)"<Bar>echoh None<cr>
inorea getpgrp	getpgrp<c-o>:echoh HintHL<Bar>echo "pid_t getpgrp(void)"<Bar>echoh None<cr>
inorea getpid	getpid<c-o>:echoh HintHL<Bar>echo "pid_t getpid(void)"<Bar>echoh None<cr>
inorea getppid	getppid<c-o>:echoh HintHL<Bar>echo "pid_t getppid(void)"<Bar>echoh None<cr>
inorea getpriority	getpriority<c-o>:echoh HintHL<Bar>echo "int getpriority(int which, int who)"<Bar>echoh None<cr>
inorea getresuid	getresuid<c-o>:echoh HintHL<Bar>echo "int getresuid(uid_t * ruid, uid_t * euid, uid_t * suid)"<Bar>echoh None<cr>
inorea getrlimit	getrlimit<c-o>:echoh HintHL<Bar>echo "int getrlimit(int resource, struct rlimit * rlim)"<Bar>echoh None<cr>
inorea getrusage	getrusage<c-o>:echoh HintHL<Bar>echo "int getrusage(int who, struct rusage * usage)"<Bar>echoh None<cr>
inorea getsid	getsid<c-o>:echoh HintHL<Bar>echo "pid_t getsid(pid_t pid)"<Bar>echoh None<cr>
inorea getsockname	getsockname<c-o>:echoh HintHL<Bar>echo "int getsockname(int s, struct sockaddr * name, socklen_t * namelen)"<Bar>echoh None<cr>
inorea getsockopt	getsockopt<c-o>:echoh HintHL<Bar>echo "int getsockopt(int s, int level, int optname, void * optval, socklen_t * optlen)"<Bar>echoh None<cr>
inorea get_thread_area	get_thread_area<c-o>:echoh HintHL<Bar>echo "int get_thread_area (struct user_desc * u_info)"<Bar>echoh None<cr>
inorea gettid	gettid<c-o>:echoh HintHL<Bar>echo "pid_t gettid(void)"<Bar>echoh None<cr>
inorea gettimeofday	gettimeofday<c-o>:echoh HintHL<Bar>echo "int gettimeofday(struct timeval * tv, struct timezone * tz)"<Bar>echoh None<cr>
inorea getuid	getuid<c-o>:echoh HintHL<Bar>echo "uid_t getuid(void)"<Bar>echoh None<cr>
inorea getxattr	getxattr<c-o>:echoh HintHL<Bar>echo "ssize_t getxattr (const char* path, const char* name, \t\t\t\t void* value, size_t size)"<Bar>echoh None<cr>
inorea idle	idle<c-o>:echoh HintHL<Bar>echo "int idle(void)"<Bar>echoh None<cr>
inorea intio_destroy	intio_destroy<c-o>:echoh HintHL<Bar>echo "intio_destroy(io_context_tctx)"<Bar>echoh None<cr>
inorea intio_setup	intio_setup<c-o>:echoh HintHL<Bar>echo "intio_setup(intmaxevents, io_context_t*ctxp)"<Bar>echoh None<cr>
inorea intppc_rtas	intppc_rtas<c-o>:echoh HintHL<Bar>echo "intppc_rtas(struct rtas_args*uargs)"<Bar>echoh None<cr>
inorea intsys_get_mempolicy	intsys_get_mempolicy<c-o>:echoh HintHL<Bar>echo "intsys_get_mempolicy(int*policy, unsigned long*nmask, unsigned longmaxnode, unsigned longaddr, unsigned longflags)"<Bar>echoh None<cr>
inorea intsys_swapcontext	intsys_swapcontext<c-o>:echoh HintHL<Bar>echo "intsys_swapcontext(structucontext*old_ctx, structucontext*new_ctx, intr5, intr6, intr7, intr8, structpt_regs*regs)"<Bar>echoh None<cr>
inorea ioctl	ioctl<c-o>:echoh HintHL<Bar>echo "int ioctl(int d, int request, ...)"<Bar>echoh None<cr>
inorea ioperm	ioperm<c-o>:echoh HintHL<Bar>echo "int ioperm(unsigned long from, unsigned long num, int turn_on)"<Bar>echoh None<cr>
inorea iopl	iopl<c-o>:echoh HintHL<Bar>echo "int iopl(int level)"<Bar>echoh None<cr>
inorea ipc	ipc<c-o>:echoh HintHL<Bar>echo "int ipc(unsigned int call, int first, int second, int third, void * ptr, long fifth)"<Bar>echoh None<cr>
inorea kill	kill<c-o>:echoh HintHL<Bar>echo "int kill(pid_t pid, int sig)"<Bar>echoh None<cr>
inorea killpg	killpg<c-o>:echoh HintHL<Bar>echo "int killpg(int pgrp, int sig)"<Bar>echoh None<cr>
inorea klogctl	klogctl<c-o>:echoh HintHL<Bar>echo "int klogctl(int type, char * bufp, int len)"<Bar>echoh None<cr>
inorea lchown	lchown<c-o>:echoh HintHL<Bar>echo "int lchown(const char * path, uid_t owner, gid_t group)"<Bar>echoh None<cr>
inorea lgetxattr	lgetxattr<c-o>:echoh HintHL<Bar>echo "ssize_t lgetxattr (const char* path, const char* name, \t\t\t\t void* value, size_t size)"<Bar>echoh None<cr>
inorea link	link<c-o>:echoh HintHL<Bar>echo "int link(const char * oldpath, const char * newpath)"<Bar>echoh None<cr>
inorea listen	listen<c-o>:echoh HintHL<Bar>echo "int listen(int sockfd, int backlog)"<Bar>echoh None<cr>
inorea listxattr	listxattr<c-o>:echoh HintHL<Bar>echo "ssize_t listxattr (const char* path, \t\t\t\t char* list, size_t size)"<Bar>echoh None<cr>
inorea llistxattr	llistxattr<c-o>:echoh HintHL<Bar>echo "ssize_t llistxattr (const char* path, \t\t\t\t char* list, size_t size)"<Bar>echoh None<cr>
inorea _llseek	_llseek<c-o>:echoh HintHL<Bar>echo "int _llseek(unsigned int fd, unsigned long offset_high, unsigned long offset_low, loff_t * result, unsigned int whence)"<Bar>echoh None<cr>
inorea longfstatfs64	longfstatfs64<c-o>:echoh HintHL<Bar>echo "longfstatfs64(unsignedintfd, size_tsz, structstatfs64*buf)"<Bar>echoh None<cr>
inorea longio_cancel	longio_cancel<c-o>:echoh HintHL<Bar>echo "longio_cancel(aio_context_tctx_id, structiocb*iocb, structio_event*result)"<Bar>echoh None<cr>
inorea longio_getevents	longio_getevents<c-o>:echoh HintHL<Bar>echo "longio_getevents(aio_context_tctx_id, longmin_nr, longnr, structio_event*events, structtimespec*timeout)"<Bar>echoh None<cr>
inorea longio_submit	longio_submit<c-o>:echoh HintHL<Bar>echo "longio_submit(aio_context_tctx_id, longnr, structiocb**iocbpp)"<Bar>echoh None<cr>
inorea longstatfs64	longstatfs64<c-o>:echoh HintHL<Bar>echo "longstatfs64(constchar*path, size_tsz, structstatfs64*buf)"<Bar>echoh None<cr>
inorea longsys_clock_getres	longsys_clock_getres<c-o>:echoh HintHL<Bar>echo "longsys_clock_getres(clockid_twhich_clock, structtimespec*tp)"<Bar>echoh None<cr>
inorea longsys_clock_gettime	longsys_clock_gettime<c-o>:echoh HintHL<Bar>echo "longsys_clock_gettime(clockid_twhich_clock, structtimespec*tp)"<Bar>echoh None<cr>
inorea longsys_clock_nanosleep	longsys_clock_nanosleep<c-o>:echoh HintHL<Bar>echo "longsys_clock_nanosleep(clockid_twhich_clock, intflags, conststructtimespec*rqtp, structtimespec*rmtp)"<Bar>echoh None<cr>
inorea longsys_clock_settime	longsys_clock_settime<c-o>:echoh HintHL<Bar>echo "longsys_clock_settime(clockid_twhich_clock, conststructtimespec*tp)"<Bar>echoh None<cr>
inorea longsys_delete_module	longsys_delete_module<c-o>:echoh HintHL<Bar>echo "longsys_delete_module(constchar*name_user, unsignedintflags, conststructtimespec*rqtp, structtimespec*rmtp)"<Bar>echoh None<cr>
inorea longsys_init_module	longsys_init_module<c-o>:echoh HintHL<Bar>echo "longsys_init_module(void*umod, unsignedlonglen, constchar*uargs)"<Bar>echoh None<cr>
inorea longsys_restart_syscall	longsys_restart_syscall<c-o>:echoh HintHL<Bar>echo "longsys_restart_syscall(void)"<Bar>echoh None<cr>
inorea longsys_rt_sigaction	longsys_rt_sigaction<c-o>:echoh HintHL<Bar>echo "longsys_rt_sigaction(intsig, conststructsigaction*act, structsigaction*oact, size_tsigsetsize)"<Bar>echoh None<cr>
inorea longsys_rt_sigpending	longsys_rt_sigpending<c-o>:echoh HintHL<Bar>echo "longsys_rt_sigpending(sigset_t*set, size_tsigsetsize)"<Bar>echoh None<cr>
inorea longsys_rt_sigprocmask	longsys_rt_sigprocmask<c-o>:echoh HintHL<Bar>echo "longsys_rt_sigprocmask(sigset_t*set, sigset_t*oset, size_tsigsetsize)"<Bar>echoh None<cr>
inorea longsys_rt_sigqueueinfo	longsys_rt_sigqueueinfo<c-o>:echoh HintHL<Bar>echo "longsys_rt_sigqueueinfo(intpid, intsig, siginfo_t*uinfo)"<Bar>echoh None<cr>
inorea longsys_rt_sigtimedwait	longsys_rt_sigtimedwait<c-o>:echoh HintHL<Bar>echo "longsys_rt_sigtimedwait(constsigset_t*uthese, siginfo_t*uinfo, conststructstructtimespec *uts, size_tsigsetsize)"<Bar>echoh None<cr>
inorea longsys_set_tid_address	longsys_set_tid_address<c-o>:echoh HintHL<Bar>echo "longsys_set_tid_address(int*tidptr)"<Bar>echoh None<cr>
inorea longsys_tgkill	longsys_tgkill<c-o>:echoh HintHL<Bar>echo "longsys_tgkill(inttgid, intpid, intsig)"<Bar>echoh None<cr>
inorea longsys_timer_create	longsys_timer_create<c-o>:echoh HintHL<Bar>echo "longsys_timer_create(clockid_twhich_clock, structsigevent*timer_event_spec, timer_t*created_timer_id)"<Bar>echoh None<cr>
inorea longsys_timer_delete	longsys_timer_delete<c-o>:echoh HintHL<Bar>echo "longsys_timer_delete(timertimer_id)"<Bar>echoh None<cr>
inorea longsys_timer_getoverrun	longsys_timer_getoverrun<c-o>:echoh HintHL<Bar>echo "longsys_timer_getoverrun(timer_ttimer_id)"<Bar>echoh None<cr>
inorea longsys_timer_gettime	longsys_timer_gettime<c-o>:echoh HintHL<Bar>echo "longsys_timer_gettime(timer_ttimer_id, structitimerspec*setting)"<Bar>echoh None<cr>
inorea longsys_timer_settime	longsys_timer_settime<c-o>:echoh HintHL<Bar>echo "longsys_timer_settime(timer_ttimer_id, intflags, conststructitimerspec *new_setting, structitimerspec *old_setting)"<Bar>echoh None<cr>
inorea lookup_dcookie	lookup_dcookie<c-o>:echoh HintHL<Bar>echo "int lookup_dcookie(u64 cookie, char * buffer, size_t len)"<Bar>echoh None<cr>
inorea lremovexattr	lremovexattr<c-o>:echoh HintHL<Bar>echo "int lremovexattr (const char* path, const char* name)"<Bar>echoh None<cr>
inorea lseek	lseek<c-o>:echoh HintHL<Bar>echo "off_t lseek(int fildes, off_t offset, int whence)"<Bar>echoh None<cr>
inorea lsetxattr	lsetxattr<c-o>:echoh HintHL<Bar>echo "int lsetxattr (const char* path, const char* name, \t\t\t const void* value, size_t size, int flags)"<Bar>echoh None<cr>
inorea lstat	lstat<c-o>:echoh HintHL<Bar>echo "int lstat(const char * path, struct stat * buf)"<Bar>echoh None<cr>
inorea madvise	madvise<c-o>:echoh HintHL<Bar>echo "int madvise(void * start, size_t length, int advice)"<Bar>echoh None<cr>
inorea mincore	mincore<c-o>:echoh HintHL<Bar>echo "int mincore(void * start, size_t length, unsigned char * vec)"<Bar>echoh None<cr>
inorea mkdir	mkdir<c-o>:echoh HintHL<Bar>echo "int mkdir(const char * pathname, mode_t mode)"<Bar>echoh None<cr>
inorea mknod	mknod<c-o>:echoh HintHL<Bar>echo "int mknod(const char * pathname, mode_t mode, dev_t dev)"<Bar>echoh None<cr>
inorea mlockall	mlockall<c-o>:echoh HintHL<Bar>echo "int mlockall(int flags)"<Bar>echoh None<cr>
inorea mlock	mlock<c-o>:echoh HintHL<Bar>echo "int mlock(const void *addr, size_t len)"<Bar>echoh None<cr>
inorea mmap2	mmap2<c-o>:echoh HintHL<Bar>echo "void * mmap2(void * start, size_t length, int prot, int flags, int fd, off_t pgoffset)"<Bar>echoh None<cr>
inorea mmap	mmap<c-o>:echoh HintHL<Bar>echo "void * mmap(void * start, size_t length, int prot, int flags, int fd, off_t offset)"<Bar>echoh None<cr>
inorea modify_ldt	modify_ldt<c-o>:echoh HintHL<Bar>echo "int modify_ldt(int func, void * ptr, unsigned long bytecount)"<Bar>echoh None<cr>
inorea mount	mount<c-o>:echoh HintHL<Bar>echo "int mount(const char * source, const char * target, const char * filesystemtype, unsigned long mountflags, const void * data)"<Bar>echoh None<cr>
inorea mprotect	mprotect<c-o>:echoh HintHL<Bar>echo "int mprotect(const void *addr, size_t len, int prot)"<Bar>echoh None<cr>
inorea msgctl	msgctl<c-o>:echoh HintHL<Bar>echo "int msgctl(int msqid, int cmd, struct msqid_ds * buf)"<Bar>echoh None<cr>
inorea msgget	msgget<c-o>:echoh HintHL<Bar>echo "int msgget(key_t key, int msgflg)"<Bar>echoh None<cr>
inorea msgrcv	msgrcv<c-o>:echoh HintHL<Bar>echo "ssize_t msgrcv(int msqid, struct msgbuf * msgp, size_t msgsz, long msgtyp, int msgflg)"<Bar>echoh None<cr>
inorea msgsnd	msgsnd<c-o>:echoh HintHL<Bar>echo "int msgsnd(int msqid, struct msgbuf * msgp, size_t msgsz, int msgflg)"<Bar>echoh None<cr>
inorea msync	msync<c-o>:echoh HintHL<Bar>echo "int msync(void * start, size_t length, int flags)"<Bar>echoh None<cr>
inorea munlockall	munlockall<c-o>:echoh HintHL<Bar>echo "int munlockall(void)"<Bar>echoh None<cr>
inorea munlock	munlock<c-o>:echoh HintHL<Bar>echo "int munlock(const void *addr, size_t len)"<Bar>echoh None<cr>
inorea munmap	munmap<c-o>:echoh HintHL<Bar>echo "int munmap(void * start, size_t length)"<Bar>echoh None<cr>
inorea nanosleep	nanosleep<c-o>:echoh HintHL<Bar>echo "int nanosleep(const struct timespec *req, struct timespec *rem)"<Bar>echoh None<cr>
inorea nfsservctl	nfsservctl<c-o>:echoh HintHL<Bar>echo "nfsservctl(int cmd, struct nfsctl_arg * argp, union nfsctl_res * resp)"<Bar>echoh None<cr>
inorea nice	nice<c-o>:echoh HintHL<Bar>echo "int nice(int inc)"<Bar>echoh None<cr>
inorea open	open<c-o>:echoh HintHL<Bar>echo "int open(const char * pathname, int flags)"<Bar>echoh None<cr>
inorea open	open<c-o>:echoh HintHL<Bar>echo "int open(const char * pathname, int flags, mode_t mode)"<Bar>echoh None<cr>
inorea pause	pause<c-o>:echoh HintHL<Bar>echo "int pause(void)"<Bar>echoh None<cr>
inorea pciconfig_read	pciconfig_read<c-o>:echoh HintHL<Bar>echo "int pciconfig_read(unsigned long bus, unsigned long dfn, unsigned long off, unsigned long len, void * buf)"<Bar>echoh None<cr>
inorea pciconfig_write	pciconfig_write<c-o>:echoh HintHL<Bar>echo "int pciconfig_write(unsigned long bus, unsigned long dfn, unsigned long off, unsigned long len, void * buf)"<Bar>echoh None<cr>
inorea personality	personality<c-o>:echoh HintHL<Bar>echo "int personality(unsigned long persona)"<Bar>echoh None<cr>
inorea pipe	pipe<c-o>:echoh HintHL<Bar>echo "int pipe(int filedes [2])"<Bar>echoh None<cr>
inorea pivot_root	pivot_root<c-o>:echoh HintHL<Bar>echo "int pivot_root(const char * new_root, const char * put_old)"<Bar>echoh None<cr>
inorea poll	poll<c-o>:echoh HintHL<Bar>echo "int poll(struct pollfd * ufds, nfds_t nfds, int timeout)"<Bar>echoh None<cr>
inorea posix_fadvise	posix_fadvise<c-o>:echoh HintHL<Bar>echo "int posix_fadvise(int fd, off_t offset, off_t len, int advice)"<Bar>echoh None<cr>
inorea pread	pread<c-o>:echoh HintHL<Bar>echo "ssize_t pread(int fd, void * buf, size_t count, off_t offset)"<Bar>echoh None<cr>
inorea pselect	pselect<c-o>:echoh HintHL<Bar>echo "int pselect(int n, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, const struct timespec *timeout, const sigset_t *sigmask)"<Bar>echoh None<cr>
inorea pselect	pselect<c-o>:echoh HintHL<Bar>echo "int pselect(int nfds, fd_set * readfds, fd_set * writefds, fd_set * exceptfds, const struct timespec * ntimeout, sigset_t * sigmask)"<Bar>echoh None<cr>
inorea ptrace	ptrace<c-o>:echoh HintHL<Bar>echo "long ptrace(enum __ptrace_request request, pid_t pid, void * addr, void * data)"<Bar>echoh None<cr>
inorea pwrite	pwrite<c-o>:echoh HintHL<Bar>echo "ssize_t pwrite(int fd, const void * buf, size_t count, off_t offset)"<Bar>echoh None<cr>
inorea quotactl	quotactl<c-o>:echoh HintHL<Bar>echo "long quotactl(int cmd, char \(**special, qid_t id, caddr_t addr)"<Bar>echoh None<cr>
inorea readahead	readahead<c-o>:echoh HintHL<Bar>echo "ssize_t readahead(int fd, off64_t * offset, size_t count)"<Bar>echoh None<cr>
inorea readdir	readdir<c-o>:echoh HintHL<Bar>echo "int readdir(unsigned int fd, struct dirent * dirp, unsigned int count)"<Bar>echoh None<cr>
inorea readlink	readlink<c-o>:echoh HintHL<Bar>echo "int readlink(const char * path, char * buf, size_t bufsiz)"<Bar>echoh None<cr>
inorea read	read<c-o>:echoh HintHL<Bar>echo "ssize_t read(int fd, void * buf, size_t count)"<Bar>echoh None<cr>
inorea readv	readv<c-o>:echoh HintHL<Bar>echo "ssize_t readv(int fd, const struct iovec * vector, int count)"<Bar>echoh None<cr>
inorea reboot	reboot<c-o>:echoh HintHL<Bar>echo "int reboot(int flag)"<Bar>echoh None<cr>
inorea reboot	reboot<c-o>:echoh HintHL<Bar>echo "int reboot(int magic, int magic2, int flag, void * arg)"<Bar>echoh None<cr>
inorea recvfrom	recvfrom<c-o>:echoh HintHL<Bar>echo "ssize_t recvfrom(int s, void * buf, size_t len, int flags, struct sockaddr * from, socklen_t * fromlen)"<Bar>echoh None<cr>
inorea recvmsg	recvmsg<c-o>:echoh HintHL<Bar>echo "ssize_t recvmsg(int s, struct msghdr * msg, int flags)"<Bar>echoh None<cr>
inorea recv	recv<c-o>:echoh HintHL<Bar>echo "ssize_t recv(int s, void * buf, size_t len, int flags)"<Bar>echoh None<cr>
inorea remap_file_pages	remap_file_pages<c-o>:echoh HintHL<Bar>echo "int remap_file_pages(void * start, size_t size, int prot, ssize_t pgoff, int flags)"<Bar>echoh None<cr>
inorea removexattr	removexattr<c-o>:echoh HintHL<Bar>echo "int removexattr (const char* path, const char* name)"<Bar>echoh None<cr>
inorea rename	rename<c-o>:echoh HintHL<Bar>echo "int rename(const char * oldpath, const char * newpath)"<Bar>echoh None<cr>
inorea rmdir	rmdir<c-o>:echoh HintHL<Bar>echo "int rmdir(const char * pathname)"<Bar>echoh None<cr>
inorea sbrk	sbrk<c-o>:echoh HintHL<Bar>echo "void *sbrk(intptr_t increment)"<Bar>echoh None<cr>
inorea sched_getaffinity	sched_getaffinity<c-o>:echoh HintHL<Bar>echo "int sched_getaffinity(pid_t pid, unsigned int len, unsigned long * mask)"<Bar>echoh None<cr>
inorea sched_getparam	sched_getparam<c-o>:echoh HintHL<Bar>echo "int sched_getparam(pid_t pid, struct sched_param *p)"<Bar>echoh None<cr>
inorea sched_get_priority_max	sched_get_priority_max<c-o>:echoh HintHL<Bar>echo "int sched_get_priority_max(int policy)"<Bar>echoh None<cr>
inorea sched_get_priority_min	sched_get_priority_min<c-o>:echoh HintHL<Bar>echo "int sched_get_priority_min(int policy)"<Bar>echoh None<cr>
inorea sched_getscheduler	sched_getscheduler<c-o>:echoh HintHL<Bar>echo "int sched_getscheduler(pid_t pid)"<Bar>echoh None<cr>
inorea sched_rr_get_interval	sched_rr_get_interval<c-o>:echoh HintHL<Bar>echo "int sched_rr_get_interval(pid_t pid, struct timespec *tp)"<Bar>echoh None<cr>
inorea sched_setaffinity	sched_setaffinity<c-o>:echoh HintHL<Bar>echo "int sched_setaffinity(pid_t pid, unsigned int len, unsigned long * mask)"<Bar>echoh None<cr>
inorea sched_setparam	sched_setparam<c-o>:echoh HintHL<Bar>echo "int sched_setparam(pid_t pid, const struct sched_param *p)"<Bar>echoh None<cr>
inorea sched_setscheduler	sched_setscheduler<c-o>:echoh HintHL<Bar>echo "int sched_setscheduler(pid_t pid, int policy, const struct sched_param * p)"<Bar>echoh None<cr>
inorea sched_yield	sched_yield<c-o>:echoh HintHL<Bar>echo "int sched_yield(void)"<Bar>echoh None<cr>
inorea select	select<c-o>:echoh HintHL<Bar>echo "int select(int n, fd_set *readfds, fd_set *writefds, fd_set *exceptfds, struct timeval *timeout)"<Bar>echoh None<cr>
inorea select	select<c-o>:echoh HintHL<Bar>echo "int select(int nfds, fd_set * readfds, fd_set * writefds, fd_set * exceptfds, struct timeval * utimeout)"<Bar>echoh None<cr>
inorea semctl	semctl<c-o>:echoh HintHL<Bar>echo "int semctl(int semid, int semnum, int cmd, ...)"<Bar>echoh None<cr>
inorea semget	semget<c-o>:echoh HintHL<Bar>echo "int semget(key_t key, int nsems, int semflg)"<Bar>echoh None<cr>
inorea semop	semop<c-o>:echoh HintHL<Bar>echo "int semop(int semid, struct sembuf * sops, unsigned nsops)"<Bar>echoh None<cr>
inorea semtimedop	semtimedop<c-o>:echoh HintHL<Bar>echo "int semtimedop(int semid, struct sembuf * sops, unsigned nsops, struct timespec * timeout)"<Bar>echoh None<cr>
inorea sendmsg	sendmsg<c-o>:echoh HintHL<Bar>echo "ssize_t sendmsg(int s, const struct msghdr * msg, int flags)"<Bar>echoh None<cr>
inorea send	send<c-o>:echoh HintHL<Bar>echo "ssize_t send(int s, const void * buf, size_t len, int flags)"<Bar>echoh None<cr>
inorea sendto	sendto<c-o>:echoh HintHL<Bar>echo "ssize_t sendto(int s, const void * buf, size_t len, int flags, const struct sockaddr * to, socklen_t tolen)"<Bar>echoh None<cr>
inorea setcontext	setcontext<c-o>:echoh HintHL<Bar>echo "int setcontext(const ucontext_t * ucp)"<Bar>echoh None<cr>
inorea setdomainname	setdomainname<c-o>:echoh HintHL<Bar>echo "int setdomainname(const char * name, size_t len)"<Bar>echoh None<cr>
inorea setegid	setegid<c-o>:echoh HintHL<Bar>echo "int setegid(gid_t egid)"<Bar>echoh None<cr>
inorea seteuid	seteuid<c-o>:echoh HintHL<Bar>echo "int seteuid(uid_t euid)"<Bar>echoh None<cr>
inorea setfsgid	setfsgid<c-o>:echoh HintHL<Bar>echo "int setfsgid(uid_t fsgid)"<Bar>echoh None<cr>
inorea setfsuid	setfsuid<c-o>:echoh HintHL<Bar>echo "int setfsuid(uid_t fsuid)"<Bar>echoh None<cr>
inorea setgid	setgid<c-o>:echoh HintHL<Bar>echo "int setgid(gid_t gid)"<Bar>echoh None<cr>
inorea setgroups	setgroups<c-o>:echoh HintHL<Bar>echo "int setgroups(size_t size, const gid_t * list)"<Bar>echoh None<cr>
inorea sethostid	sethostid<c-o>:echoh HintHL<Bar>echo "int sethostid(long hostid)"<Bar>echoh None<cr>
inorea sethostname	sethostname<c-o>:echoh HintHL<Bar>echo "int sethostname(const char * name, size_t len)"<Bar>echoh None<cr>
inorea setpgid	setpgid<c-o>:echoh HintHL<Bar>echo "int setpgid(pid_t pid, pid_t pgid)"<Bar>echoh None<cr>
inorea setpgrp	setpgrp<c-o>:echoh HintHL<Bar>echo "int setpgrp(void)"<Bar>echoh None<cr>
inorea setpriority	setpriority<c-o>:echoh HintHL<Bar>echo "int setpriority(int which, int who, int prio)"<Bar>echoh None<cr>
inorea setregid	setregid<c-o>:echoh HintHL<Bar>echo "int setregid(gid_t rgid, gid_t egid)"<Bar>echoh None<cr>
inorea setresuid	setresuid<c-o>:echoh HintHL<Bar>echo "int setresuid(uid_t ruid, uid_t euid, uid_t suid)"<Bar>echoh None<cr>
inorea setreuid	setreuid<c-o>:echoh HintHL<Bar>echo "int setreuid(uid_t ruid, uid_t euid)"<Bar>echoh None<cr>
inorea setrlimit	setrlimit<c-o>:echoh HintHL<Bar>echo "int setrlimit(int resource, const struct rlimit * rlim)"<Bar>echoh None<cr>
inorea setsid	setsid<c-o>:echoh HintHL<Bar>echo "pid_t setsid(void)"<Bar>echoh None<cr>
inorea setsockopt	setsockopt<c-o>:echoh HintHL<Bar>echo "int setsockopt(int s, int level, int optname, const void * optval, socklen_t optlen)"<Bar>echoh None<cr>
inorea set_thread_area	set_thread_area<c-o>:echoh HintHL<Bar>echo "int set_thread_area (struct user_desc * u_info)"<Bar>echoh None<cr>
inorea setuid	setuid<c-o>:echoh HintHL<Bar>echo "int setuid(uid_t uid)"<Bar>echoh None<cr>
inorea setup	setup<c-o>:echoh HintHL<Bar>echo "int setup(void)"<Bar>echoh None<cr>
inorea setxattr	setxattr<c-o>:echoh HintHL<Bar>echo "int setxattr (const char* path, const char* name, \t\t\t const void* value, size_t size, int flags)"<Bar>echoh None<cr>
inorea shmat	shmat<c-o>:echoh HintHL<Bar>echo "void *shmat(int shmid, const void * shmaddr, int shmflg)"<Bar>echoh None<cr>
inorea shmctl	shmctl<c-o>:echoh HintHL<Bar>echo "int shmctl(int shmid, int cmd, struct shmid_ds * buf)"<Bar>echoh None<cr>
inorea shmdt	shmdt<c-o>:echoh HintHL<Bar>echo "int shmdt(const void * shmaddr)"<Bar>echoh None<cr>
inorea shmget	shmget<c-o>:echoh HintHL<Bar>echo "int shmget(key_t key, size_t size, int shmflg)"<Bar>echoh None<cr>
inorea shutdown	shutdown<c-o>:echoh HintHL<Bar>echo "int shutdown(int s, int how)"<Bar>echoh None<cr>
inorea sigaction	sigaction<c-o>:echoh HintHL<Bar>echo "int sigaction(int signum, const struct sigaction * act, struct sigaction * oldact)"<Bar>echoh None<cr>
inorea signal	signal<c-o>:echoh HintHL<Bar>echo "sighandler_t signal(int signum, sighandler_t handler)"<Bar>echoh None<cr>
inorea sigpending	sigpending<c-o>:echoh HintHL<Bar>echo "int sigpending(sigset_t * set)"<Bar>echoh None<cr>
inorea sigprocmask	sigprocmask<c-o>:echoh HintHL<Bar>echo "int sigprocmask(int how, const sigset_t * set, sigset_t * oldset)"<Bar>echoh None<cr>
inorea sigqueue	sigqueue<c-o>:echoh HintHL<Bar>echo "int sigqueue(pid_t pid, int sig, const union sigval value)"<Bar>echoh None<cr>
inorea sigreturn	sigreturn<c-o>:echoh HintHL<Bar>echo "int sigreturn(unsigned long __unused)"<Bar>echoh None<cr>
inorea sigsuspend	sigsuspend<c-o>:echoh HintHL<Bar>echo "int sigsuspend(const sigset_t * mask)"<Bar>echoh None<cr>
inorea sigtimedwait	sigtimedwait<c-o>:echoh HintHL<Bar>echo "int sigtimedwait(const sigset_t * set, siginfo_t * info, const struct timespec * timeout)"<Bar>echoh None<cr>
inorea sigwaitinfo	sigwaitinfo<c-o>:echoh HintHL<Bar>echo "int sigwaitinfo(const sigset_t * set, siginfo_t * info)"<Bar>echoh None<cr>
inorea socketcall	socketcall<c-o>:echoh HintHL<Bar>echo "int socketcall(int call, unsigned long * args)"<Bar>echoh None<cr>
inorea socketpair	socketpair<c-o>:echoh HintHL<Bar>echo "int socketpair(int d, int type, int protocol, int sv [2])"<Bar>echoh None<cr>
inorea socket	socket<c-o>:echoh HintHL<Bar>echo "int socket(int domain, int type, int protocol)"<Bar>echoh None<cr>
inorea statfs	statfs<c-o>:echoh HintHL<Bar>echo "int statfs(const char * path, struct statfs * buf)"<Bar>echoh None<cr>
inorea stat	stat<c-o>:echoh HintHL<Bar>echo "int stat(const char * path, struct stat * buf)"<Bar>echoh None<cr>
inorea statvfs	statvfs<c-o>:echoh HintHL<Bar>echo "int statvfs(const char * path, struct statvfs * buf)"<Bar>echoh None<cr>
inorea stime	stime<c-o>:echoh HintHL<Bar>echo "int stime(time_t * t)"<Bar>echoh None<cr>
inorea swapoff	swapoff<c-o>:echoh HintHL<Bar>echo "int swapoff(const char * path)"<Bar>echoh None<cr>
inorea swapon	swapon<c-o>:echoh HintHL<Bar>echo "int swapon(const char * path, int swapflags)"<Bar>echoh None<cr>
inorea symlink	symlink<c-o>:echoh HintHL<Bar>echo "int symlink(const char * oldpath, const char * newpath)"<Bar>echoh None<cr>
inorea sync	sync<c-o>:echoh HintHL<Bar>echo "void sync(void)"<Bar>echoh None<cr>
inorea sys_alloc_hugepages	sys_alloc_hugepages<c-o>:echoh HintHL<Bar>echo "asmlinkage unsigned long sys_alloc_hugepages(int key, unsigned long addr, unsigned long len, int prot, int flag)"<Bar>echoh None<cr>
inorea _syscall0	_syscall0<c-o>:echoh HintHL<Bar>echo "_syscall0(int, setup)"<Bar>echoh None<cr>
inorea _syscall0	_syscall0<c-o>:echoh HintHL<Bar>echo "_syscall0(pid_t,gettid)"<Bar>echoh None<cr>
inorea _syscall1	_syscall1<c-o>:echoh HintHL<Bar>echo "_syscall1(int, _sysctl, struct __sysctl_args *, args)"<Bar>echoh None<cr>
inorea _syscall2	_syscall2<c-o>:echoh HintHL<Bar>echo "_syscall2(int, clone, int, flags, void *, child_stack)"<Bar>echoh None<cr>
inorea _syscall2	_syscall2<c-o>:echoh HintHL<Bar>echo "_syscall2(int,pivot_root,const char *,new_root,const char *,put_old)"<Bar>echoh None<cr>
inorea _syscall2	_syscall2<c-o>:echoh HintHL<Bar>echo "_syscall2(int, tkill, int, tid, int, sig)"<Bar>echoh None<cr>
inorea _syscall3	_syscall3<c-o>:echoh HintHL<Bar>echo "_syscall3(int, getdents, uint, fd, struct dirent *, dirp, uint, count)"<Bar>echoh None<cr>
inorea _syscall3	_syscall3<c-o>:echoh HintHL<Bar>echo "_syscall3(int, modify_ldt, int, func, void *, ptr, unsigned long, bytecount)"<Bar>echoh None<cr>
inorea _syscall3	_syscall3<c-o>:echoh HintHL<Bar>echo "_syscall3(int, readdir, unsigned int, fd, struct dirent *, dirp, unsigned int, count)"<Bar>echoh None<cr>
inorea _syscall3	_syscall3<c-o>:echoh HintHL<Bar>echo "_syscall3(int, syslog, int, type, char *, bufp, int, len)"<Bar>echoh None<cr>
inorea _syscall3	_syscall3<c-o>:echoh HintHL<Bar>echo "_syscall3(int, tgkill, int, tgid, int, tid, int, sig)"<Bar>echoh None<cr>
inorea _syscall5	_syscall5<c-o>:echoh HintHL<Bar>echo "_syscall5(int, clone, int, flags, void *, child_stack, int *, parent_tidptr, struct user_desc *, newtls, int *, child_tidptr)"<Bar>echoh None<cr>
inorea _syscall5	_syscall5<c-o>:echoh HintHL<Bar>echo "_syscall5(int, _llseek, unsigned int, fd, unsigned long, hi, unsigned long, lo, loff_t *, res, unsigned int, wh)"<Bar>echoh None<cr>
inorea _syscall6	_syscall6<c-o>:echoh HintHL<Bar>echo "_syscall6(void *, mmap2, void *, start, size_t, length, int, prot, int, flags, int, fd, off_t, pgoffset)"<Bar>echoh None<cr>
inorea _sysctl	_sysctl<c-o>:echoh HintHL<Bar>echo "int _sysctl(struct __sysctl_args * args)"<Bar>echoh None<cr>
inorea sys_free_hugepages	sys_free_hugepages<c-o>:echoh HintHL<Bar>echo "asmlinkage int sys_free_hugepages(unsigned long addr)"<Bar>echoh None<cr>
inorea sysfs	sysfs<c-o>:echoh HintHL<Bar>echo "int sysfs(int option)"<Bar>echoh None<cr>
inorea sysfs	sysfs<c-o>:echoh HintHL<Bar>echo "int sysfs(int option, const char * fsname)"<Bar>echoh None<cr>
inorea sysfs	sysfs<c-o>:echoh HintHL<Bar>echo "int sysfs(int option, unsigned int fs_index, char * buf)"<Bar>echoh None<cr>
inorea sysinfo	sysinfo<c-o>:echoh HintHL<Bar>echo "int sysinfo(struct sysinfo * info)"<Bar>echoh None<cr>
inorea syslog	syslog<c-o>:echoh HintHL<Bar>echo "int syslog(int type, char * bufp, int len)"<Bar>echoh None<cr>
inorea tgkill	tgkill<c-o>:echoh HintHL<Bar>echo "int tgkill(int tgid, int tid, int sig)"<Bar>echoh None<cr>
inorea times	times<c-o>:echoh HintHL<Bar>echo "clock_t times(struct tms * buf)"<Bar>echoh None<cr>
inorea time	time<c-o>:echoh HintHL<Bar>echo "time_t time(time_t * t)"<Bar>echoh None<cr>
inorea tkill	tkill<c-o>:echoh HintHL<Bar>echo "int tkill(int tid, int sig)"<Bar>echoh None<cr>
inorea truncate	truncate<c-o>:echoh HintHL<Bar>echo "int truncate(const char * path, off_t length)"<Bar>echoh None<cr>
inorea umask	umask<c-o>:echoh HintHL<Bar>echo "mode_t umask(mode_t mask)"<Bar>echoh None<cr>
inorea umount2	umount2<c-o>:echoh HintHL<Bar>echo "int umount2(const char * target, int flags)"<Bar>echoh None<cr>
inorea umount	umount<c-o>:echoh HintHL<Bar>echo "int umount(const char * target)"<Bar>echoh None<cr>
inorea uname	uname<c-o>:echoh HintHL<Bar>echo "int uname(struct utsname * buf)"<Bar>echoh None<cr>
inorea unlink	unlink<c-o>:echoh HintHL<Bar>echo "int unlink(const char * pathname)"<Bar>echoh None<cr>
inorea uselib	uselib<c-o>:echoh HintHL<Bar>echo "int uselib(const char * library)"<Bar>echoh None<cr>
inorea ustat	ustat<c-o>:echoh HintHL<Bar>echo "int ustat(dev_t dev, struct ustat * ubuf)"<Bar>echoh None<cr>
inorea utimes	utimes<c-o>:echoh HintHL<Bar>echo "int utimes(const char * filename, const struct timeval tv [2])"<Bar>echoh None<cr>
inorea utime	utime<c-o>:echoh HintHL<Bar>echo "int utime(const char * filename, const struct utimbuf * buf)"<Bar>echoh None<cr>
inorea vfork	vfork<c-o>:echoh HintHL<Bar>echo "pid_t vfork(void)"<Bar>echoh None<cr>
inorea vhangup	vhangup<c-o>:echoh HintHL<Bar>echo "int vhangup(void)"<Bar>echoh None<cr>
inorea vm86old	vm86old<c-o>:echoh HintHL<Bar>echo "int vm86old(struct vm86_struct * info)"<Bar>echoh None<cr>
inorea vm86	vm86<c-o>:echoh HintHL<Bar>echo "int vm86(unsigned long fn, struct vm86plus_struct * v86)"<Bar>echoh None<cr>
inorea void	void<c-o>:echoh HintHL<Bar>echo "typedef void (*sighandler_t)(int)"<Bar>echoh None<cr>
inorea wait3	wait3<c-o>:echoh HintHL<Bar>echo "pid_t wait3(int * status, int options, struct rusage * rusage)"<Bar>echoh None<cr>
inorea wait4	wait4<c-o>:echoh HintHL<Bar>echo "pid_t wait4(pid_t pid, int * status, int options, struct rusage * rusage)"<Bar>echoh None<cr>
inorea waitpid	waitpid<c-o>:echoh HintHL<Bar>echo "pid_t waitpid(pid_t pid, int * status, int options)"<Bar>echoh None<cr>
inorea wait	wait<c-o>:echoh HintHL<Bar>echo "pid_t wait(int * status)"<Bar>echoh None<cr>
inorea writev	writev<c-o>:echoh HintHL<Bar>echo "ssize_t writev(int fd, const struct iovec * vector, int count)"<Bar>echoh None<cr>
inorea write	write<c-o>:echoh HintHL<Bar>echo "ssize_t write(int fd, const void * buf, size_t count)"<Bar>echoh None<cr>

" ---------------------------------------------------------------------
"  Highlighting Control: {{{1
" if the "HintHL" highlighting group hasn't been defined, then this function will define it
fun! s:HLTEST(hlname)
  let id_hlname= hlID(a:hlname)
  let fg_hlname= string(synIDattr(synIDtrans(hlID(a:hlname)),"fg"))
  if id_hlname == 0 || fg_hlname == "0" || fg_hlname == "-1"
   return 0
  endif
  return 1
endfun
if !s:HLTEST("HintHL")
 if &bg == "dark"
  hi HintHL ctermfg=blue ctermbg=white guifg=blue3 guibg=white
 else
  hi HintHL ctermfg=white ctermbg=blue guifg=white guibg=blue3
 endif
endif
delf s:HLTEST

" ---------------------------------------------------------------------
"  Restore: {{{1
let &cpo= s:keepcpo
unlet s:keepcpo
" vim: ts=4 fdm=marker
