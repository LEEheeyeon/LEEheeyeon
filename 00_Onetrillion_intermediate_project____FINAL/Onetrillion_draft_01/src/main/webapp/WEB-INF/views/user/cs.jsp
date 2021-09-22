<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script
	src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<style>
#maPageDiv01>div>table {
	margin: auto;
}

#maPageDiv01>div>table:nth-child(1)>tbody>tr>th {
	height: 100px;
	width: 33%;
	border-right: 2px solid #F8F8FA;
}

#maPageDiv01>div>table:nth-child(1)>tbody>tr>th:hover {
	cursor: pointer;
	color: red;
}

#maPageDiv01>div>table:nth-child(4)>tbody>tr>th {
	height: 250px;
	width: 33%;
	background-color: #F8F8FA;
}

#maPageDiv01>div>table:nth-child(4)>tbody>tr>td {
	height: 100px;
	background-color: #F8F8FA;
}

#csTab001 {
	margin: auto;
	text-align: center;
	width: 1000px;
	height: 700px;
	border-collapse: collapse;
}

#csTab002 {
	margin: auto;
	text-align: center;
	width: 1000px;
	height: 700px;
	border-collapse: collapse;
}

#csDiv01 {
	display: block;
	width: 1000px;
	height: auto;

}

#csDiv02 {
	display: none;
	width: 1000px;
	height: auto;
}

#csTab001 td, th {
	height: 40px;
	border: 1px solid;
}

#csTab002 td,th{
height: 40px;
border: 1px solid;
}

#mypageWishDiv01 td {
	height: 40px;
}

#csTab001 td:hover {
	color: red;
	cursor: pointer;
}

#csTab002 td:hover {
	color: red;
	cursor: pointer;
}
</style>
</head>

<body>
	<jsp:include page="../include/header2.jsp"></jsp:include>
	<%
// 로그인 처리 -> 로그인 x (로그인페이지 이동)
String u_id = (String) session.getAttribute("u_id");
if( u_id != null ){
}else{%>
	<script> alert('로그인이 필요합니다.'); window.location.href="http://localhost:8088/trip/user/login.do"; </script>
	<%}%>
	<div id="maPageDiv01"
		style="margin: auto; width: 1100px; height: 100%;">
		<br />
		<h1>여기는 고객센터 입니다</h1>
		<br />
		<div style="margin-top: 10px;">
			<table width="1000px">
				<tr>
					<th id="csTab01" style="border-bottom: 3px solid red;">공지사항</th>
					<th id="csTab02">자주하는 질문</th>
					<th id="csTab03"><a href="<%=request.getContextPath() %>/user/myPage.do?u_id=${member.u_id}">1:1문의 &nbsp;</a></th>
				</tr>
				<script>
						$(document).ready(function(){
							$("#csTab01").on("click", function(){
								$(this).css("border-bottom","3px solid red")
							$($(this).next()).css("border-bottom","0")
							$("#csDiv01").css("display", "block")
							$("#csDiv02").css("display", "none")
								console.log("aaaaaaa");
							})
							$("#csTab02").on("click", function(){
								$(this).css("border-bottom","3px solid red")
								$($(this).prev()).css("border-bottom","0")
								$("#csDiv02").css("display", "block")
								$("#csDiv01").css("display", "none")
								console.log("bbbbbbbbb");
							})
						
						})
						$("#csTab03").on("click", function(){
							location.href="http://localhost:8088/trip/user/myPage.do?u_id=${member.u_id}"
						});
				</script>
				<tr>
					<td colspan="3" height="700px" style="background-color: #F8F8FA;">
						<div id="csDiv01">
							<table id="csTab001">
								<tr>
									<th style="width: 5%">NO</th>
									<th style="width: 95%">제목</th>
								</tr>
								<tr>
									<td class="csTd01">1</td>
									<td class="csTd01">개인정보 처리방침</td>

								</tr>
								<tr class="csTr0" id="csTr01" style="display: none;">
									<td colspan="2"><br /> ① ㈜Trillion(이하 ‘회사’)은 이용자의 개인정보보호를 매우 중요시하며<br>
										 『개인정보보호법』 등 개인정보보호 관련 법률 및 하위 법령들을 준수하고 있습니다.<br>
										② 회사는 개인정보 처리방침을 통하여 이용자의 개인정보를 이용하는 목적과 방법 <br>
										이용자의 개인정보 보호를 위해 취하는 조치를 알려드립니다.<br>
										 회사는 개인정보 처리방침을 홈페이지 첫 화면에 공개함으로써 언제나 용이하게 보실 수 있습니다.<br>
										  ③ 본 개인정보 처리방침은 정부의 법령 및 지침의 변경 또는 <br>
										  보다 나은 서비스의 제공을 위하여 그 내용이 변경될 수 있으며,<br> 
										  회사는 개인정보 처리방침을 개정하는 경우 이용자가 개정된 사항을 쉽게 알아볼 수 있도록 공지하고 있습니다.<br>
										2. 개인정보의 수집항목 및 이용목적 <br>
										 ①회사는 회원가입 또는 상품의 예약 및 관련 서비스 이용 시 아래의 개인정보 항목을 다음과 같은 목적으로 수집하고 있습니다.<br>
										  이용자의 개인정보를 수집하는 경우에는 그 목적에 필요한 최소한의 개인정보를 수집하고 있습니다. <br>
										   <br> <br>
										</td>
								</tr>

								<tr>
									<td class="csTd02">2</td>
									<td class="csTd02">여행시 안전수칙</td>

								</tr>
								<tr class="csTr0" id="csTr02" style="display: none">
									<td colspan="2"><br /><p style="font-size: 120%">1. 인적이 드문 곳에 혼자 가지 않고 가급적 2인 이상 동행</p>
										인적이 드문 곳은 반드시 믿을만한 사람과 동행하는 것이 좋다.<br>
										 인적이 드문 곳은 비상 상황이 생겼을 때 대응할 수 있는 방법이 많지 않기 때문이다.<br>
										  특히, 야간에 인적이 드문 곳에 혼자 가는 것은 절대 금지다.<br>
										   또한 길을 걸을 때 이어폰으로 음악을 듣는 것은 자제하자. <br>
										   외부로부터의 소리가 차단되어 주위에 무슨 일이 일어나고 있는지 파악하지 못할 경우가 많아 위험에 대비할 수가 없다.<br><br><br>
										  <p style="font-size: 120%"> 2. 반드시 여행지에 대해 사전조사를 한다</p>
										   사람들이 많이 모이는 여행지나 관광지 이외에 트레킹을 하거나 알려지지 않은 해변이나 오름 등을 여행할 경우에는<br>
										    반드시 사전에 조사하여 위험 요소가 없는지 확인하는 것이 좋다. <br>
										    포털사이트에는 로드뷰 같은 프로그램이 있으므로 가고자 하는 곳을 미리 살펴보는 것도 좋다.<br><br><br>
										    <p style="font-size: 120%">3. 캠핑은 지정된 곳에서만, ‘낭만캠핑’은 없다</p>
										    허가된 야영장이 아닌, 방파제나 바닷가 등 아무 곳에서 캬라반 등을 이용한 ‘낭만캠핑’을 하지 않는다. <br>
										    캠핑을 하고 싶다면 지정된 곳을 이용, 스스로 안전을 챙기자 <br><br><br>
										<p style="font-size: 120%">4. 지나친 음주를 하지 않는다</p>
										음주는 크고 많은 사고를 불러온다. <br>
										여행지에 와서 음주를 즐기며 스트레스를 풀고 자유로움을 만끽하는 것은 좋지만 술은 늘 사건사고의 원인이 된다는 점을 명심하자. <br>
										홀로 떨어진 여행지에서 당신을 보호해야할 책임이 가장 큰 사람은 바로 당신이다. 모르는 사람들과의 술자리를 피하고<br>
										꼭 하고 싶다면 적당히 마실 것.<br><br><br>
										<p style="font-size: 120%">5. 자신의 위치를 가족들이나 지인에게 알린다</p>
										지인이나 가족들과 문자나 모바일 메신저 등을 사용해 지속적으로 소통하는 것이 좋다.<br>
										 여행하며 찍은 사진도 보여주니 풍경의 즐거움을 나눌 수 있어 좋고<br>
										  또 가족들이나 지인들은 어디서 어떻게 여행하고 있다는 것을 보고 안심할 수 있으니 좋다.<br>
										   또는 여행하고 있는 곳을 SNS에 사진을 찍어 올리는 것도 추천한다. <br>
										   조심해서 여행하고 있더라도 언제 어떤 일이 일어날지 예측할 수 없기 때문에<br>
										    이렇게 올린 사진 한 장이 만약의 상황에서 중요한 역할을 할 수 있기 때문이다.<br><br><br>
										   
								
										   
										   <br>
										 <br /> <br />
										</td>
								</tr>
								<tr>
									<td class="csTd03">3</td>
									<td class="csTd03">사회적 거리두기 격상에 따른 국내선 취소/환불 지침 안내</td>

								</tr>
								<tr class="csTr0" id="csTr03" style="display: none">
									<td colspan="2"><br /> Trillion 국내항공을 이용해주신 고객님들께 감사드립니다.<br>
									 사회적 거리두기 단계 격상에 따른 국내선 항공권 환불 관련하여 안내드립니다.<br> 
									 거리두기단계(3단계 / 4단계) 로 취소 수수료 면제 요청 시 반드시 국내팀 유선(☎ 02-2222-2222)으로 문의주시기 바랍니다. <br />
										<br />
										</td>
								</tr>
								<tr>
									<td class="csTd04">4</td>
									<td class="csTd04">코로나19 관련 전화상담 및 업무처리 안내</td>

								</tr>
								<tr class="csTr0" id="csTr04" style="display: none">
									<td colspan="2"><br /> 고객님, 안녕하십니까?  Trillion 입니다.<br>
										먼저, 코로나19 사태로 인해 부득이 한시적으로 전화상담을 중단하고 있습니다.<br>
										 문의 사항은 마이페이지내 [온라인 상담요청]을 이용하시면 영업일 기준 순차적으로 답변드리겠습니다.<br>
										  이용에 불편을드려 대단히 죄송하며 양해 부탁드립니다.<br>
										   고객님들의 요청사항에 대해 총력을 다해 최대한 빨리 처리할 수 있도록 노력하겠습니다. <br />
										<br />
									</td>
								</tr>
								<tr>
									<td class="csTd05">5</td>
									<td class="csTd05">만 14세 미만 회원 서비스 중단 안내</td>

								</tr>
								<tr class="csTr0" id="csTr05" style="display: none">
									<td colspan="2"><br /> 안녕하세요. 항상 저희 Trillion을 이용해 주셔서 진심으로
										감사드립니다.<br>
										‘22년 9월 28일부터 개정된 이용약관이 시행되어<br> 만 14세 미만 회원가입이 제한됨에 따라
										Trillion에서는 기존 만 14세 미만 회원 서비스를 중단하고<br>회원정보를 삭제하고자 합니다.<br> 아래 내용을
										확인하시어 서비스 이용에 불편 없으시길 바랍니다. <br /></td>
								</tr>
								<tr>
									<td class="csTd06">6</td>
									<td class="csTd06">회원정보 정제공지</td>

								</tr>
								<tr class="csTr0" id="csTr06" style="display: none">
									<td colspan="2"><br /> 회원님들의 편리하고 안전한 서비스 이용을 위하여<br>
									 아래와 같은 형태의 유효하지 않은 것으로 판단된 회원 정보를 <br>
									 2020.02 내 삭제함을 안내 드립니다. 홈페이지 로그인 후 <br>
									  마이페이지에서 고객님의 정확한 정보로 변경하여 주시면 이후 보다 원활한 회원 서비스 이용이 가능합니다.<br> 
									  1) 1글자의 한글이름 올바르지 않은 형태의 한글이름 - 예 : 홍 <br>
									  2) 1900.01.01 이전의 생년월일 올바르지 않은 형태의 생년월일 <br> 
									  3) 존재하지 않는 휴대번호 올바르지 않은 형태의 휴대번호 예: 010-000-0000 / 010-0000-0000<br>
									   4) 올바르지 않은 형태의 이메일주소<br>
									    5) 올바르지 않은 로그인 ID ( 2020.01.14 추가 )<br>
									     문의사항이 있거나 불편사항이 있으시면
									     <br> 고객센터 1577-1233 으로 연락주시면 도움을 드리도록 하겠습니다. 감사합니다.</td>
								</tr>
								<tr>
									<td class="csTd07">7</td>
									<td class="csTd07">NH농협카드 결제서비스 일시중단 안내</td>

								</tr>
								<tr class="csTr0" id="csTr07" style="display: none">
									<td colspan="2"><br />NH농협카드 전산 시스템 개편에 따른 온라인 결제서비스가 일시
										중단될 예정입니다.<br>
										 ■ 작업일시 - 2019년 9월 13일(금) 21:20 ~ 2019년 09월 14일(토) 05:00<br>
										  ■ 사유 - 전산 시스템 개편 적용에 따른 온라인(인터넷/모바일 결제) 일시중단 <br>
										  감사합니다. <br />
									</td>
								</tr>
								<tr>
									<td class="csTd08">8</td>
									<td class="csTd08">사칭 문자 주의경보 안내</td>

								</tr>
								<tr class="csTr0" id="csTr08" style="display: none">
									<td colspan="2"><br /> 최근 Trillion를 사칭하여 Trillion 상품권 승인완료 문자를
										발송하는 사례가 발생하고 있습니다. <br>
										현재 Trillion에서는 상품권 이용 결제 시 문자메시지(SMS)를 제공하고 있지 않습니다.<br>
										 이점 유념하시어 사칭 문자 관련 피해가 생기지 않도록 유의 부탁드리겠습니다.<br> ​ 
										 Trillion 여행상품권 489,900원 승인 완료 이용문의 : 02-761-6462<br>
										  승인금액 및 이용문의 전화번호는 다를 수 있습니다.<br>
										  해당 문자를 받으셨다면 해당 번호로 전화 및 문자메시지에 포함된 URL주소를 클릭하지 마시고<br> 
										  해당 전화번호는 수신차단을 하시고<br> 
										  피해 발생 시 관련 기관(한국인터넷진흥원-국번없이 118)로 즉시 신고해 주시기 바랍니다.<br>
										고객님의 안전한 여행을 위해 최선을 다하는 Trillion가 되겠습니다. <br /></td>
								</tr>
								<tr>
									<td class="csTd09">9</td>
									<td class="csTd09">OK캐쉬백 포인트사용 제휴종료 안내</td>

								</tr>
								<tr class="csTr0" id="csTr09" style="display: none">
									<td colspan="2"><br /> 안녕하세요. Trillion 입니다.<br>
									 Trillion와 OK캐쉬백 사용 제휴가 종료 될 예정 입니다.<br>
									  이에 따라 Trillion에서 OK캐쉬백 서비스(포인트 사용)를 이용하실 수 없게 되는점 <br>
									   진심으로 양해 부탁 드리며, 앞으로 더욱 좋은 서비스로 보답해드리겠습니다.<br> 
									   - 서비스 종료 제휴사 :OK캐쉬백 - 서비스 종료 내용 : OK캐쉬백 포인트 사용 -<br>
									    서비스 종료 일자 : 2022년 2월 22일() 감사합니다. <br /></td>
								</tr>

							</table>
						</div>
						<div id="csDiv02">
							<table id="csTab002">
								 
								 <tr>
									<th style="width: 5%" >NO</th>
									<th style="width: 95%">제목</th>
								</tr>
								<tr>
									<td class="csTd11">1</td>
									<td class="csTd11">개인정보 처리방침</td>
								</tr>
								<tr class="csTr1" id="csTr11" style="display: none">
									<td colspan="2"><br /> 지역에 따라 상이하나, 보통 세분이 함께 여행하실 경우 다음과 같이 방을 사용하실 수 있습니다.<br>
													1. 세분이 함께 쓰시는 방(트리플 룸)<br>
													2. 일반 2인실 룸에 보조 침대를 놓는 경우<br>
													3. 일반 2인실 룸과 싱글 차지를 지불한 싱글룸, 또는 홀로 여행을 하는 다른 분과 함께 방 배정<br>
													
													기본적인 조건은 위와 같이 나누어 볼 수 있습니다만, 지역이나 도시에 따라 상황이 많이 다를 수 있습니다.<br>
													예를 들어 작은 방을 사용하는 동유럽의 프라하, 일본 같은 곳에서는 보조 침대를 이용하여 세분이 사용하시기에 불편할 수도 있습니다.<br>
													따라서 상품 예약시 원하는 룸의 타입의 예약이 가능한지 확인이 필요하며 자세한 사항은 담당자 확인이 필요합니다.<br>
													    <br />
														<br />
									</td>
								</tr>
								<tr>
									<td class="csTd12">2</td>
									<td class="csTd12">여행지에 대한 정보를 알고 싶습니다.</td>
								</tr>
								<tr class="csTr1" id="csTr12" style="display: none">
									<td colspan="2"><br /> trillion홈페이지()의 원하시는 지역의 상품<br>
									 상세페이지에서 여행지 정보 확인하실 수 있습니다.
									    <br />
								   </td>
								</tr>	
								<tr>
									<td class="csTd13">3</td>
									<td class="csTd13">여행 중 몸이 아프면 어떻게 해야 하나요?</td>
								</tr>
								<tr class="csTr1" id="csTr13" style="display: none">
									<td colspan="2"><br /> 우선 가이드나 인솔자의 도움을 받아 재빨리 응급조치를 하고 난 뒤<br>
									 의료기관의 도움을 받는 것이 좋습니다.<br>
                                      평소 지병이 있으신 분들은 미리 필요한 약을 준비해 오시는 편이 좋습니다.<br>
									<br />
									</td>
								</tr>	
								<tr>
									<td class="csTd14">4</td>
									<td class="csTd14">신혼여행은 언제쯤 예약하는 게 좋을까요?</td>
								</tr>
								<tr class="csTr1" id="csTr14" style="display: none">
									<td colspan="2"><br /> 일반적으로 4, 5월과 9, 10월이 대한민국에서 가장 선호하는 결혼 시즌입니다.<br>
                                      이때 결혼을 하신다면 최소한 1개월 전에 예약하시는 것이 좋습니다.<br>
                                      특정 인기 상품은 조기에 예약 마감이 될 수 있으며<br>
                                      교통편이나 숙소 확보가 어렵기 때문입니다.<br>
                                      시간적 여유가 있으시면 4~5개월 전부터 준비하시길 권해드립니다.<br>
                                      허니문 박람회나 홈페이지의 이벤트를 통해 할인이나 경품 등 알찬 혜택을 누리실 수 있습니다.<br>
									       <br />
								    </td>
								 </tr>		
								<tr>
									<td class="csTd15">5</td>
									<td class="csTd15">여행 경비는 얼마 정도 가져가야 할까요?</td>
								</tr>
								<tr class="csTr1" id="csTr15" style="display: none">
									<td colspan="2"><br /> 패키지 여행일 경우 대개 공동경비(가이드, 인솔자, 버스기사, 식당 팁) 등 포함되어 있지 않은 사항을 확인하시어<br>
									 여행일수별로 개인 경비를 준비하시면 됩니다.<br>
											또한,상품가에 포함되어 있지 않은 선택 관광이나 쇼핑을 하시고자 할 경우 그 비용을 추가하시어 준비하시면 되겠습니다.<br>
											쇼핑의 경우에는 대부분 카드로 결제 가능하니 카드로 지불하는 것이 안전하고 편리한 방법일 수 있습니다.<br> 
											보다 자세한 문의는 상품 담당직원과 상담 부탁드립니다.<br>
									<br />
									</td>
								</tr>		
								<tr>
									<td class="csTd16">6</td>
									<td class="csTd16">예약을 취소할 경우 환불을 받을 수 있나요?</td>
								</tr>
								<tr class="csTr1" id="csTr16" style="display: none">
									<td colspan="2"><br />예약을 취소하시는 경우는 출발일 기준으로 언제 취소를 하는지에 따라 다르게 적용되므로<br>
										패키지 여행상품의 경우에는 [일반약관]의 취소 규정을 참고해주시면 됩니다.<br>
									    ■ 여행약관<br>
										♣ 여행출발일 30일전까지(~30) 취소 요청 시 : 계약금 환급 <br>
										♣ 여행출발일 20일전까지(29~20) 취소 요청 시 :여행 경비의 10% 배상<br>
										♣ 여행출발일 10일전까지(19~10) 취소 요청 시 : 여행 경비의 15% 배상<br>
										♣ 여행출발일 8일전까지( 9~ 8) 취소 요청 시 : 여행 경비의 20% 배상<br>
										♣ 여행출발일 1일전까지(7~ 1) 취소 요청 시 : 여행 경비의 30% 배상<br>
										♣ 여행출발 당일 취소 통보 시 : 여행경비 50% 배상<br>
										단, 상품에 따라 특별 약관이 적용되는 경우도 있으며, 이 경우 특별 약관이 우선 적용됩니다.<br>
										
									     <br />
									</td>
								</tr>
								<tr>
									<td class="csTd17">7</td>
									<td class="csTd17">환불 절차를 알려 주세요.</td>
								</tr>
								<tr class="csTr1" id="csTr17" style="display: none">
									<td colspan="2"><br /> 예약하신 상품을 취소하시면 환불 절차가 진행이 됩니다.<br>
											취소를 원하실 경우에는 담당 직원에게 유선상으로 요청을 하시거나 홈페이지에 글을 남겨주시면 연락을 드립니다.<br>
											각 상품의 규정 및 취소 시점에 따라서 환불 금액이 다르며, 취소 시 담당 직원이 안내해 드립니다.<br>
											현금 결제하셨을 경우에는 입금자와 동일한 고객님의 계좌번호를 알려주셔야 하며, 카드 결제 시에는 승인취소 처리를 해드리는데 다소 시일이 소요됩니다.<br>
									       <br />
									</td>
								</tr>		
								 <tr>
									<td class="csTd18">8</td>
									<td class="csTd18">탈퇴 후 재가입 할 수 있나요?</td>
								 </tr>
								<tr class="csTr1" id="csTr18" style="display: none">
									<td colspan="2"><br />탈퇴 후 탈퇴 아이디로 재가입은 가능합니다.<br>
										다만, 탈퇴 전의 회원정보, 예약정보, 포인트 등의 정보 데이터는 복구가 불가하오니 신중하게 결정해주세요.<br />
									</td>
								</tr>		
								<tr>
									<td class="csTd19">9</td>
									<td class="csTd19">회원가입을 여러 번 할 수 있나요?</td>
								</tr>
								<tr class="csTr1" id="csTr19" style="display: none">
									<td colspan="2"><br /> 복수의 아이디를 생성할 수 있으나, 아이디(회원계정) 간 회원정보, 구매정보, 포인트정보 등 정보 통합 관리가 불가능하기 때문에<br> 
									1개의 회원 계정을 생성하시는 것을 권장합니다.<br>
												<br />
									</td>
								</tr>		
								
								 


							</table>
						</div>
					</td>
				</tr>
			</table>
			<br />
		<div style="margin:auto; width:1000px;  margin-bottom:10px;">
			<h3 style="float:left">추천상품</h3><p style="float:right" >더보기</p>
		</div>
		<table style="clear:both;" width="1000px">
			<tr>
				<th>이미지</th>
				<th>여긴 이미지</th>
				<th>여긴 이미지</th>
			</tr>
			<tr>
				<td>여긴 텍스트</td>
				<td>여긴 텍스트</td>
				<td>여긴 텍스트</td>
			</tr>
		</table>
		</div>
	</div>
	
	<jsp:include page="../include/footer.jsp"></jsp:include>
</body>

<script>
$(".csTd01").on("click",function() {
	 if ($("#csTr01").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr01").css("display","table-row")} else {
		$("#csTr01").css("display","none")}
		 })
 $(".csTd02").on("click",function() {
	 if ($("#csTr02").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr02").css("display","table-row")} else {
		$("#csTr02").css("display","none")}
		 })
 $(".csTd03").on("click",function() {
	 if ($("#csTr03").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr03").css("display","table-row")} else {
		$("#csTr03").css("display","none")}
		 })
 $(".csTd04").on("click",function() {
	 if ($("#csTr04").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr04").css("display","table-row")} else {
		$("#csTr04").css("display","none")}
		 })
 $(".csTd05").on("click",function() {
	 if ($("#csTr05").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr05").css("display","table-row")} else {
		$("#csTr05").css("display","none")}
		 })
 $(".csTd06").on("click",function() {
	 if ($("#csTr06").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr06").css("display","table-row")} else {
		$("#csTr06").css("display","none")}
		 })
$(".csTd07").on("click",function() {
	 if ($("#csTr07").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr07").css("display","table-row")} else {
		$("#csTr07").css("display","none")}
		 })
 $(".csTd08").on("click",function() {
	 if ($("#csTr08").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr08").css("display","table-row")} else {
		$("#csTr08").css("display","none")}
		 })
 $(".csTd09").on("click",function() {
	 if ($("#csTr09").css("display") == "none") {
		 $(".csTr0").css("display", "none")
		 $("#csTr09").css("display","table-row")} else {
		$("#csTr09").css("display","none")}
		 })



$(".csTd11").on("click",function() {
	 if ($("#csTr11").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr11").css("display","table-row")} else {
		$("#csTr11").css("display","none")}
		 })
$(".csTd12").on("click",function() {
	 if ($("#csTr12").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr12").css("display","table-row")} else {
		$("#csTr12").css("display","none")}
		 })
$(".csTd13").on("click",function() {
	 if ($("#csTr13").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr13").css("display","table-row")} else {
		$("#csTr13").css("display","none")}
		 })
$(".csTd14").on("click",function() {
	 if ($("#csTr14").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr14").css("display","table-row")} else {
		$("#csTr14").css("display","none")}
		 })
$(".csTd15").on("click",function() {
	 if ($("#csTr15").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr15").css("display","table-row")} else {
		$("#csTr15").css("display","none")}
		 })
$(".csTd16").on("click",function() {
	 if ($("#csTr16").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr16").css("display","table-row")} else {
		$("#csTr16").css("display","none")}
		 })
$(".csTd17").on("click",function() {
	 if ($("#csTr17").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr17").css("display","table-row")} else {
		$("#csTr17").css("display","none")}
		 })
$(".csTd18").on("click",function() {
	 if ($("#csTr18").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr18").css("display","table-row")} else {
		$("#csTr18").css("display","none")}
		 })
$(".csTd19").on("click",function() {
	 if ($("#csTr19").css("display") == "none") {
		 $(".csTr1").css("display", "none")
		 $("#csTr19").css("display","table-row")} else {
		$("#csTr19").css("display","none")}
		 })

		 </script>
</html>