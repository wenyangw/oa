var xmlhttp;
function verify(){
    //��ȡҳ����idΪaccountname���ı����ֵ
    var username=document.getElementById("username").value;
   
   
    //����XMLHttpRequest����
   
    if(window.XMLHttpRequest){
      //���FireFox,Mozillar,Opera,Safari,IE7,IE8
       xmlhttp = new XMLHttpRequest();
      
       //��ĳЩ�ض��汾��mozillar�������bug��������
       if(xmlhttp.overrideMineType){
          xmlhttp.overrideMineType("text/xml");
       }
    }else if(window.ActiveXObject){
       //���IE5��IE5.5��IE6
      
       //�����������ڴ���XMLHTTPRequest����Ŀؼ����ơ�������һ��JS�����С�
       var activexName = ["MSXML2.XMLHTTP","Microsoft.XMLHTTP"];
       for(var i = 0; i<activeName.length; i++){
           //ȡ��һ���ؼ������д���������ɹ�����ֹѭ��
           try{
              xmlhttp = new ActiveXObject(activexName[i]);
              break;
           }catch(e){}
       }      
      
    }
   
    if(xmlhttp){
    //   alert("XMLHttpRequest���󴴽��ɹ���");
      // return;
    }else{
     //  alert("XMLHttpRequest���󴴽�ʧ�ܣ�");
    }
   
   
    //ע��ص�����,ֻд������������д���ţ�д���ű�ʾ���ú�����
    xmlhttp.onreadystatechange = callback;
   
    //����������Ϣ(����ʽ�������url,true��ʾ�첽��ʽ����,�����checkaccountname.do������������û����Ƿ���õ�servlet�࣬û��仰���޷�����Ч��)
    xmlhttp.open("post","check.action?username=" + username, true);
     
    //�������ݣ���ʼ�ͷ��������н�����
    xmlhttp.send();
  //  alert(xmlhttp.responseText);
   // alert(xmlhttp.status);
   // alert(xmlhttp.readyState);
   
    //ʹ��POST��ʽ������Ҫ�ֶ�����http������ͷ
    //xmlhttp.setRequestHeader("Content-Type","aplication/x-www-form-urlencoded");
    //xmlhttp.send("name=" + username);
   
}
//�ص�����
function callback(){
   //�ж϶����״̬�Ƿ񽻻����
   if(xmlhttp.readyState == 4){
      //�ж�http�Ľ����Ƿ�ɹ�
      if(xmlhttp.status == 200){
         //��ȡ�������˷��ص����ݣ��ı���
         var responseText = xmlhttp.responseText;
        
         //��������ʾ��ҳ����
         //var divNode = document.getElementByIdx_x("result");
        
         //����Ԫ�ؽڵ��е�html����
         //divNode.innerHTML = xmlhttp.responseText;
         
         if(responseText == '0'){
        	 alert("�û��������ڣ�����ϸ�˶ԣ�");
         }
      }

   }
}