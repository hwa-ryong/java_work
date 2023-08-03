package oops_p;

abstract class AbsPar{ //abstract 추상화를 포함하고 있는 클래스야!
	
	int a = 10, b = 20;
	
	void meth_1() {  //선언하고
		System.out.println("부모 meth_1()");  // 정의했음
	}
	
	abstract void meth_2(); //선언만 했음
}

class AbsChild extends AbsPar{
	
	int c = 3000;
	
	void meth_3() {
		System.out.println("자식 meth_3()");
	}

	void meth_2() {
		System.out.println("자식 meth_2()");
		
	}
}

public class AbstractMain {

	public static void main(String[] args) {
		
		AbsChild cc = new AbsChild();
		cc.meth_1();
		cc.meth_2();
		cc.meth_3();
	}

}
