#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

void selection_sort(int *arr, int n);

int main()
{
    int i, choice = 4, size = 100;

    // 함수를 가리키는 포인터
    void (*func_ptr)(int *arr, int n);

    // choice가 4 이므로 func_ptr은 아무것도 가리키지 않는다.
    if (choice == 1)
    {
        func_ptr = selection_sort;
        printf("Selection sort - size : %d\n", size);
    }

    int *array = (int *)malloc(sizeof(int) * size);
    for (i = 0; i < size; i++)
    {
        array[i] = (rand() % 1000) + 1;
    }
    // func_ptr이 초기화 되지 않은 상태에서 실행 (Segmentation fault 발생!)
    // 아무것도 가리키지 않는 func_ptr을 실행하면 오류 발생(NULL 메모리에 접근하려 하므로 오류 발생)
    func_ptr(array, size);
}

void selection_sort(int *arr, int n)
{
    int i, j, least, temp;

    for (i = 0; i < n - 1; i++)
    {
        least = i;
        for (j = i + 1; j < n; j++)
        {
            if (arr[j] < arr[least])
            {
                least = j;
            }
        }
        temp = arr[i];
        arr[i] = arr[least];
        arr[least] = temp;
    }
}