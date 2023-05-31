#include <stdio.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <stdbool.h>

int serv_sock;
int clint_sock;

struct sockaddr_in serv_addr;
struct sockaddr_in clint_addr;
socklen_t clnt_addr_size;

bool returnTrue = false;

void timeCount()
{
    clock_t t1, t2;
    int count = 0;
    //char message[] = "123456789";

    clnt_addr_size = sizeof(clint_addr);
    clint_sock = accept(serv_sock, (struct sockaddr *)&clint_addr, &clnt_addr_size); // 4번
    if (clint_sock == -1)
        printf("accept error\n");

    t1 = clock();

    for (;;)
    {
        sleep(1);   // 1초마다 신호 송진
        printf("waiting... %d\n", count++);

        t2 = clock();
      
        if (count % 2 == 0) //d
        {
            write(clint_sock, "0", sizeof("0")); // 5번
        }
        else
        {
            write(clint_sock, "1", sizeof("1")); // 5번
        }
    }

    close(serv_sock); // 6번
    close(clint_sock);

    printf("server closed\n");
    return;
}

int main(int argc, char *argv[])
{
    if (argc != 2)
    {
        printf("%s <port>\n", argv[0]);
        exit(1);
    }
    serv_sock = socket(PF_INET, SOCK_STREAM, 0); // 1번
    if (serv_sock == -1)
        printf("socket error\n");

    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = htonl(INADDR_ANY);
    serv_addr.sin_port = htons(atoi(argv[1]));

    if (bind(serv_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1) // 2번
        printf("bind error\n");
    if (listen(serv_sock, 5) == -1) // 3번
        printf("listen error\n");

    timeCount();

    // char message[] = "123456789";
    // for (int i = 0; i < 10; i++)
    // {

    //     write(clint_sock, message, sizeof(message)); // 5번
    // }

    close(serv_sock); // 6번
    close(clint_sock);

    printf("server closed\n");
    return 0;
}