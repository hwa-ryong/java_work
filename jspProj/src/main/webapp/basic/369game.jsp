<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>369</title>
</head>
<body>
<h1>369 게임 입니다.</h1>
<%
	/* for(int i=1; i<=20; i++) {
	 	if(i==3) {
	 		out.println("짝");
	 	}else if(i==6){
	 		out.println("짝");
	 	}else if(i==9){
	 		out.println("짝");
	 	}else if(i==13){
	 		out.println("짝");
	 	}else if(i==16){
	 		out.println("짝");
	 	}else if(i==19){
	 		out.println("짝");
	 	}else {
	 		out.println(i);
	 	}
	} */
		
		System.out.print("1>>>>>>>>>>>>20");
		for (int i=1; i<=20; i++) {
			int one = i % 10;
			if(one % 3 == 0 && one != 0) {
				System.out.println("짝");
			}else {
				System.out.println(i);
			}
			
		}
		
		/*
		System.out.println("1>>>>>>>>>>100");
		for (int i=1; i<=100; i++) {
			int one = i % 10;
			int ten = i / 10;
			
			String ttt = "";
			if(one % 3 == 0 && one != 0) {
				ttt += "짝";
			}
			if(ten % 3 == 0 && ten != 0) {
				ttt += "짝";
			}
			if(ttt.equals("")) {
				ttt += i;
			}
			System.out.println(ttt);
		}
		
		int no = 1245;
		System.out.println("1 ->  "+no+" >>>>>>>>>>>>> ");
		
		for (int i = 1; i <= no; i++) {
					
					int buf = i;
					String ttt = "";
					
					while(true) {
						
						System.out.println("buf:"+buf);
						int one = buf % 10;
						buf = buf/10;
						
						if(one%3==0 && one!=0) {
							ttt += "짝";
						}
						
						if(buf == 0) {
							break;
						}
						
					}
					
					if(ttt.equals("")) {
						ttt += i;
					}
					
					System.out.println(ttt);
				}
		*/
			
%>
</body>
</html>