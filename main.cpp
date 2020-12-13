#include <iostream>
#include "string"
#include <thread>
#include <mutex>

/*
 * Горбач Илья Вадимович
 * БПИ 194
 * Вариант №7
 * 7. Военная задача. Анчуария и Тарантерия – два крохотных
латиноамериканских государства, затерянных в южных Андах. Диктатор
Анчуарии, дон Федерико, объявил войну диктатору Тарантерии, дону
Эрнандо. У обоих диктаторов очень мало солдат, но очень много снарядов
для минометов, привезенных с последней американской гуманитарной
помощью. Поэтому армии обеих сторон просто обстреливают наугад
территорию противника, надеясь поразить что-нибудь ценное. Стрельба
ведется по очереди до тех пор, пока либо не будут уничтожены все цели,
либо стоимость потраченных снарядов не превысит суммарную стоимость
всего того, что ими можно уничтожить. Создать многопоточное приложение,
моделирующее военные действия.

 */
using namespace std;

mutex mtx;
const unsigned int dim_1=5; //количество клеток по вертикали
const unsigned int dim_2=5; //количество клеток по горизонтали

///
/// \param min нижнее значение
/// \param max верхнее значение
/// \return рандомное число между мин и макс
int getRandomNumber(int min, int max)
{
    static const double fraction = 1.0 / (static_cast<double>(RAND_MAX) + 1.0);
    // Равномерно распределяем рандомное число в нашем диапазоне
    return static_cast<int>(rand() * fraction * (max - min + 1) + min);
}
//Класс город
class City{
public:
    string name;//Название города
    string name_of_dictator; //имя диктатор
    int territory[dim_1][dim_2];//территория города - матрица по дефолту 10 на 10
    int cost_summ=0; //общая сумма клеток города
    //конструктор класса с параметром имени диктатора
    City(string city_name,string dict_name);//инициализатор конструктора
    ~City();//иниц деструктора

    void Create_Territory(){
        for (auto & i : territory) {
            for (int & j : i) {
                int cost=getRandomNumber(0,100);
                j=cost;// rand mod 100 for creating normal values
                cost_summ+=cost; //и в сумму тоже добавляем ранд
            }
        }
        Print_Territory();
    }
    void Print_Territory(){
        cout<< "territory: "<< this->name<<endl << "Current cost of territory= "<< cost_summ << endl;
        for (auto & i : territory) {
            for (int j : i) {
                cout << j << " ";
            }
            cout << endl;
        }
    }
};
///
/// \param city_name название города
/// \param dict_name имя диктатора
City::City(string city_name, string dict_name) {
    this->name_of_dictator=dict_name;
    this->name=city_name;
    this->Create_Territory();
}

City::~City() {
}
void MakeMove(City& other, int first_rand,int second_rand,thread& thread){
    mtx.lock();//блокируем мьютекс
    cout <<"----------------------------------------------------------------------------------" << endl;
    cout <<"id потоковой пушки, стреляющей в : "<<other.name<<" равен: "<<thread.get_id()<<endl;//выводим значение текущего потока
    mtx.unlock();//разблокируем мьютекс
    mtx.lock();//блокируем мьютекс
    cout<<other.name << " под огнем! Атакована территория: "<<first_rand+1<<" "<<second_rand+1 << endl;//вывод атакованного города
    if (other.territory[first_rand][second_rand]==0){
        cout << "Здесь было пусто, возможно сюда уже стреляли"<< endl;
    }
    else {
        cout << "Территория была обстрелена, стоимость ущерба составила: "<<other.territory[first_rand][second_rand]<<endl;
        other.cost_summ-=other.territory[first_rand][second_rand];
        other.territory[first_rand][second_rand] = 0;
    }
    this_thread::sleep_for(chrono::milliseconds(200));//засыпаем на 200 миллисекунд
    other.Print_Territory();
    cout <<"Охлаждаем пушки!" << endl;
    mtx.unlock();//разблокируем мьютекс
}

int main() {
        cout<<"MAIN TREAD ID:"<<this_thread::get_id()<<endl;//номер мэйн потока
        system("chcp 65001");
        int bullet_cost = 5;//стоимость 1 пули
        City Anchyuria = *new City("Anchyuria","Don Federico");//создание анчурии
        City Taranteria = *new City("Taranteria","Don Hernando");//создание тарантерии
        //создание треда анчурии и треда тарантерии, на онове MakeMove
        while (Anchyuria.cost_summ > bullet_cost&&Anchyuria.cost_summ>0&& Taranteria.cost_summ>0 && Taranteria.cost_summ > bullet_cost) {
            thread anch(MakeMove,ref(Taranteria),getRandomNumber(0,dim_1-1),getRandomNumber(0,dim_2-1),ref(anch));
            thread taran(MakeMove, ref(Anchyuria),getRandomNumber(0,dim_1-1),getRandomNumber(0,dim_2-1),ref(taran));
            anch.join();
            taran.join();
        }
        if (Anchyuria.cost_summ<0||Anchyuria.cost_summ<bullet_cost){
            cout<<"В ВОЙНЕ НЕ БЫВАЕТ ПОБЕДИТЕЛЕЙ, НО В ЭТОЙ ВОЙНЕ ПРОИГРАЛА:"<<Anchyuria.name<<endl;
        }
        else if (Taranteria.cost_summ<0||Taranteria.cost_summ<bullet_cost){
            cout<<"В ВОЙНЕ НЕ БЫВАЕТ ПОБЕДИТЕЛЕЙ, НО В ЭТОЙ ВОЙНЕ ПРОИГРАЛА:"<<Taranteria.name<<endl;
        }
        system("exit");
    return 0;
}

