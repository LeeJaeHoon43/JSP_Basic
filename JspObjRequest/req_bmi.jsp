<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <%-- 
    	# bmi지수 계산 공식 = [체중(kg) / 신장(m) * 신장(m)]
    	- bmi지수가 23을 초과한다면 "당신은 과체중입니다."를 출력.
    	- 18.5 미만이라면 "당신은 저체중입니다."를 출력.
    	- 나머지는 "당신은 정상 체중입니다." 를 출력하세요
    	
    	* 문자열 내부에  들어있는 데이터를 기본 데이터 타입으로 변환하는 방법.
    	- 포장(wrapper) 클래스에 있는 parse + 기본타입이름() 메서드를 활용.
    	- request.getParameter()리턴 타입이 String이기 때문에 bmi지수를 계산하려면 실수나 정수로 변환을 해야 한다.
    	- Integer.parseInt(변환하고 싶은 문자열)
     --%>
     <%
     double height = Double.parseDouble(request.getParameter("cm"));
  	 double weight = Double.parseDouble(request.getParameter("kg"));
     
  	 double bmi = weight / (height/100 * height/100);
  	 bmi = Math.round(bmi*100) / 100.0;
  	
     %>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>체질량 지수(BMI) 계산</h1>
	<hr>
	<p>
		- 신장 : <%= height %>cm <br>
		- 체중 : <%= weight %>kg <br>
	</p>
		BMI 지수 : <strong><%= bmi %></strong><br>
		<% if(bmi > 23){ %>
			당신은 과체중입니다.
		<% }else if(bmi < 18.5){ %>
			당신은 정상체중입니다.
		<% }else{ %>
			당신은 정상체중입니다.
		<% }  %>
</body>
</html>