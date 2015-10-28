#include <stdio.h>
#include <sys/types.h>
#include <sys/socket.h>
#include <netinet/in.h>
#include <netdb.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>

#define oops(msg)	{ perror(msg); exit(1); }
#define PORTNUM	13000

int main(int ac, char *av[])
{
	struct sockaddr_in servadd;
	int sockfd;
	int lenAddr;

	lenAddr = sizeof(struct sockaddr_in);
	if(ac != 2) { fprintf(stderr, "Usage(example): sim3dStart-client 127.0.0.1\n"); exit(1); }
	printf("%s\n", av[1]);

	sockfd = socket(AF_INET, SOCK_STREAM, 0);
	if(sockfd == -1) oops("socket");
	bzero((void*)&servadd, lenAddr);
	servadd.sin_family = AF_INET;
	// servadd.sin_addr.s_addr = inet_addr(av[1]);
	servadd.sin_addr.s_addr = inet_addr(av[1]);
	servadd.sin_port = htons(PORTNUM);

	if(connect(sockfd, (struct sockaddr *)&servadd, lenAddr) != 0) oops("connect");
	close(sockfd);
	return 0;
}
