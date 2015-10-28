#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <time.h>
#include <strings.h>
#include <pthread.h>
#include <stdlib.h>
#include <signal.h>
#include <wait.h>

#define PORTNUM	13000
#define LISTENNUM 1
#define oops(msg) { perror(msg); exit(1); }

int main(int ac, char *av[])
{
	struct sockaddr_in saddr;
	int listenFd, acceptFd, lenAddr;
	FILE *sock_fp;
	pid_t Pid = 0;

	lenAddr = sizeof(struct sockaddr_in);
	listenFd = socket(AF_INET, SOCK_STREAM, 0);
	if(listenFd == -1) oops("Socket created failed!");
	bzero((void *)&saddr, lenAddr);

	saddr.sin_family = AF_INET;
	saddr.sin_addr.s_addr = htonl(INADDR_ANY);
	saddr.sin_port = htons(PORTNUM);

	if(bind(listenFd, (struct sockaddr *)&saddr, lenAddr) != 0) oops("Bind error!");

	if(listen(listenFd, LISTENNUM) != 0) oops("Listen error!");

	while(1)
	{
		acceptFd = accept(listenFd, NULL, NULL);
		printf("Got a request\n");
		if(acceptFd == -1) oops("accept");
		if(Pid != 0) 
		{
			kill(Pid, SIGKILL);
			wait(NULL);
		}
		Pid = fork();
		if(Pid == 0)
		{
			execlp("rcssserver3d", "rcssserver3d", (char *)0);
			oops("execlp");
		}
	}

	return 0;
}
