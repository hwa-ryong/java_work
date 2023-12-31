package basic_p;

import java.util.Arrays;

public class ArgsMain {

	public static void main(String[] args) {
		System.out.println("내가 argsMain 이다 : "+args.length);
		
		System.out.println(Arrays.toString(args));  // 배열 다 나옴
		
		int sum = 0;
		int avg = 0;
		int length = 0;
		int max = Integer.MIN_VALUE;
		int min = Integer.MAX_VALUE;
		
		for(String str : args) {
			try {
				int abc = Integer.parseInt(str);
				
				//짝수냐??
				if(abc % 2 == 0) {
					System.out.println("짝수: " + str);
					sum += abc;
					length++;
					avg = sum / length;
				
					if (abc > max) {
						max = abc;
					}
					
					if (abc < min) {
						min = abc;
					}	
				
			}
				
			}catch (Exception e) {
				System.out.println("숫자를 입력해주세요." + str);

			}
				
		}
		System.out.println("합계: " + sum);
		System.out.println("평균: " + avg);
		System.out.println("최대값: " + max);
		System.out.println("최소값: " + min);
	}
}


