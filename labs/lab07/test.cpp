#include <iostream>
using namespace std;

class A{

    public:
        virtual void display() const{
            cout << "a";
        }
};

class B: public A{

    public:
    virtual void display() const{
        cout << "B";
    }

};

class C: public B{

    public:
        void display() const{
            cout << "C";
        }

};

void print(A& a, C& c){
    a.display();
    c.display();
}

int main(){

    A a;
    B b;
    C c;

    print(b, c);
    
}