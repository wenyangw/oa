function show(){
	var mydate = new Date();
	var str = "" + mydate.getFullYear() + "��";
	str += (mydate.getMonth() + 1) + "��";
	str += mydate.getDate() + "�� <br/>";
	str += mydate.toLocaleTimeString();
	str += ":" + mydate.toLocaleTimeString();
	str += ":" + mydate.getMilliseconds() + " <br/>����";
	str += "��һ����������".charAt(mydate.getDay()) + "<br/>������������?:";
	str += isLeapYear(mydate) ? "��" : "����"; 
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
	var str = "" + cstDate.getFullYear() + "��";
	str += (cstDate.getMonth() + 1) + "��";
	str += cstDate.getDate() + "�� ����";
	str += "��һ����������".charAt(cstDate.getDay());
	return str
}



