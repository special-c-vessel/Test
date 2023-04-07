#include <iostream>
#include <random>

int main()
{
    // 시드값을 얻기 위한 random_device 생성.
    std::random_device rd;

    // random_device 를 통해 난수 생성 엔진을 초기화 한다.
    std::mt19937 gen(rd());

    // 0 부터 99 까지 균등하게 나타나는 난수열을 생성하기 위해 균등 분포 정의.
    std::uniform_int_distribution<int> dis(0, 99);

    //for (int i = 0; i < 5; i++)
        //std::cout << "난수 : " << dis(gen) << std::endl;

    int tempnum = dis(gen);
    std::cout << "난수 : " << tempnum << std::endl;

    if(tempnum > 50)
    {
        std::cout << "upper 50!  성공 예제  \n" << std::endl;
        
    }
    else
    {
        std::cout << "under 50..  실패 예제\n" << std::endl;
    }


    return 0;
}