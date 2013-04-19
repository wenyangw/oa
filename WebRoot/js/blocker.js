
// �赲��DIV��ID��blockerDiv���������������
function getBlocker()
{
	var blockerDiv = document.getElementById("blockerDiv");
	if (!blockerDiv) {
		blockerDiv = document.createElement('div');
      	blockerDiv.setAttribute('id', 'blockerDiv');
      	//blockerDiv.setAttribute('class', 'blockerDiv');
      	blockerDiv.className = "blockerDiv";
      	document.body.appendChild(blockerDiv);
	}
	return blockerDiv;
}

/**
 * author ������ 2009-11-27 (���ֲο�������ԭ��)
 * ����inPopupID��inPopupVisible��������Ҫ�����Ĵ�����ʾ������
 * ���õ�ʱ��ֱ�ӵ��ü���:showDialog('Ҫ������DIV��ID',true|false);
 * @inPopupID Ҫ�������ڵ�ID
 * @inPopupVisible ���������Ƿ���������trueΪ��ʾ��falseΪ����
 * @popupTitle �������ڵı���
 */
function showBlocker(inPopupID, inPopupVisible, popupTitle) {

	var blocker = getBlocker();
  // When true, popup is being shown...
  if (inPopupVisible) {

    // Get reference to popup to avoid multiple DOM lookups.
    var popupDiv = document.getElementById(inPopupID);
	document.getElementById("dialogTitleStrSpan").innerHTML = popupTitle;// ���ڵı���
    // Show the blocker div.
    blocker.style.display = "block";

    // Hide scrollbars.  Need to record scrollTop because Firefox insists
    // on resetting it to zero when you set overflow to "hidden", so we
    // immediately set it to what it was, so to the user, it looks like
    // no scrolling happened.
    var st = document.body.scrollTop;
    document.body.style.overflow = "hidden";
    document.body.scrollTop = st;

    // Center the popup.  First, some variables we'll need along the way.
    var lca = null;
    var lcb = null;
    var lcx = null;
    var lcy = null;
    var iebody = null;
    var dsoctop = null;

    // Popup needs to be shown before it can be properly centered.
    popupDiv.style.display = "block";

    // We will control the vertical...
    if (window.innerHeight) {
      lca = window.innerHeight;
    } else {
      lca = document.body.clientHeight;
    }
    lcb = popupDiv.offsetHeight;
    lcy = (Math.round(lca / 2)) - (Math.round(lcb / 2));
    iebody = (document.compatMode &&
      document.compatMode != "BackCompat") ?
      document.documentElement : document.body;
    dsoctop = document.all ? iebody.scrollTop : window.pageYOffset;
    popupDiv.style.top = ((lcy + dsoctop) + 10) + "px";

    // We will control the horizontal...
    if (window.innerWidth) {
      lca = window.innerWidth;
    } else {
      lca = document.body.clientWidth;
    }
    lcb = popupDiv.offsetWidth;
    lcx = (Math.round(lca / 2)) - (Math.round(lcb / 2));
    iebody = (document.compatMode &&
      document.compatMode != "BackCompat") ?
      document.documentElement : document.body;
    dsocleft = document.all ? iebody.scrollLeft : window.pageXOffset;
    popupDiv.style.left = lcx + dsocleft + "px";
    
  // When false, lightbox is being hidden...
  } else {

    // Hide popup and blocker div and reset body scrolling.
    document.getElementById(inPopupID).style.display = "none";
    blocker.style.display = "none";
    document.body.style.overflow = "";
  }
}

/** ʹĳ���������б�ʧЧ */
function disabledSelect(selecid,disabled){
	var selectObj = document.getElementById(selecid);
	if(disabled)
	{
		selectObj.style.visibility = "hidden";
	}else{
		selectObj.style.visibility = "visible";
	}
}
/** ʹ���е������б�ʧЧ */
function disabledSelects(disabled){
	var selects = document.all.tags("select");
	if(disabled)
	{
		for(var i = 0;i < selects.length;i++)
		{
			selects[i].style.visibility = "hidden";
		}
	}else{
		for(var i = 0;i < selects.length;i++)
		{
			selects[i].style.visibility = "visible";
		}
	}
}