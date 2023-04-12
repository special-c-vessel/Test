#include <stdio.h>
#include <stdlib.h>
#include <arpa/inet.h>
#include <sys/socket.h>
#include <unistd.h>
#include <string.h>
#include <time.h>
#include <pthread.h>
#include <errno.h>

int my_sock;
struct sockaddr_in serv_addr;
char message[100];
// timeWait();

int str_len;

void testfunc()
{
    int tempnum;

    printf("It is work\n");

    return;
}

void error(char *msg)
{
    fprintf(stderr, "%s: %s\n", msg, strerror(errno));
    exit(1);
}

void *timeCount(void *a)
{
    printf("aaa\n");

    int cnt = 0;

    while (1)
    {
        // connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
        if (connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1)
        {
            char message[100];

            str_len = read(my_sock, message, sizeof(message)); // 3번

            if (str_len == -1)
                printf("read error\n");

            printf("%d 서버에서 : %s \n", cnt++, message);
        }
    }

    close(my_sock); // 4번
    printf("close client\n");

    return NULL;
}

void *exeTestFunc(void *a)
{
    while (1)
    {
        char tempstr[50];
        const char *boot = "boot";

        scanf("%s", tempstr);
        sleep(1);

        if (!strcmp(tempstr, boot))
        //if(message[0] == '1')
        {
            printf("입력된 값: %s\n", tempstr);
            printf("성공한 예제\n");
            testfunc();
        }
        else
        {
            printf("실패한 예제 aaa \n");
        }
    }

    return NULL;
}

int main(int argc, char *argv[])
{
    pthread_t t0;
    pthread_t t1;

    if (argc != 3)
    {
        printf("%s <IP> <PORT>\n", argv[0]);
        exit(1);
    }
    my_sock = socket(PF_INET, SOCK_STREAM, 0); // 1번
    if (my_sock == -1)
        printf("socket error \n");
    memset(&serv_addr, 0, sizeof(serv_addr));
    serv_addr.sin_family = AF_INET;
    serv_addr.sin_addr.s_addr = inet_addr(argv[1]);
    serv_addr.sin_port = htons(atoi(argv[2]));

    // if (pthread_create(&t0, NULL, timeCount, NULL) == -1)
    //     error("timeCount thread create failed\n");

    if (pthread_create(&t1, NULL, exeTestFunc, NULL) == -1)
        error("exeTestFunc thread create failed\n");

    // if (connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1) // 2번
    //     printf("connect error\n");

    // char message[15];

    // str_len = read(my_sock, message, sizeof(message)); // 3번

    // if (str_len == -1)
    //     printf("read error\n");

    // printf("%d 서버에서 : %s \n", i, message);

    int cnt = 0;

    while (1)
    {
        // connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr));
        if (connect(my_sock, (struct sockaddr *)&serv_addr, sizeof(serv_addr)) == -1)
        {
            

            str_len = read(my_sock, message, sizeof(message)); // 3번

            if (str_len == -1)
                printf("read error\n");

            printf("%d 서버에서 : %s \n", cnt++, message);
        }
    }

    close(my_sock); // 4번
    printf("close client\n");

    return 0;
}