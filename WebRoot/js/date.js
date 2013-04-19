function show(){
	var mydate = new Date();
	var str = "" + mydate.getFullYear() + "年";
	str += (mydate.getMonth() + 1) + "月";
	str += mydate.getDate() + "日 <br/>";
	str += mydate.toLocaleTimeString();
	str += ":" + mydate.toLocaleTimeString();
	str += ":" + mydate.getMilliseconds() + " <br/>星期";
	str += "天一二三四五六".charAt(mydate.getDay()) + "<br/>今年是闰年吗?:";
	str += isLeapYear(mydate) ? "是" : "不是"; 
}
	
function flush(){
	$("#btnShow").click(show);
}
	
function isLeapYear(){
	var cstDate = new Date();
	if (cstDate.getFullYear() % 4 == 0  && (cstDate.getFullYear() % 100 != 0 || cstDate.getFullYear() % 400 == 0)){
		return true;
	}else{
		return false;
	}	
}


function getDate(){
	var cstDate = new Date();
	var str = "" + cstDate.getFullYear() + "年";
	str += (cstDate.getMonth() + 1) + "月";
	str += cstDate.getDate() + "日 星期";
	str += "天一二三四五六".charAt(cstDate.getDay());
	return str
}



