
// 阻挡层DIV的ID：blockerDiv，并返回这个对象
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
 * author 覃潘勇 2009-11-27 (部分参考，部分原创)
 * 根据inPopupID，inPopupVisible参数设置要弹出的窗口显示与隐藏
 * 调用的时候直接调用即可:showDialog('要弹出的DIV的ID',true|false);
 * @inPopupID 要弹出窗口的ID
 * @inPopupVisible 弹出窗口是否隐藏属性true为显示，false为隐藏
 * @popupTitle 弹出窗口的标题
 */
function showBlocker(inPopupID, inPopupVisible, popupTitle) {

	var blocker = getBlocker();
  // When true, popup is being shown...
  if (inPopupVisible) {

    // Get reference to popup to avoid multiple DOM lookups.
    var popupDiv = document.getElementById(inPopupID);
	document.getElementById("dialogTitleStrSpan").innerHTML = popupTitle;// 窗口的标题
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

/** 使某个的下拉列表失效 */
function disabledSelect(selecid,disabled){
	var selectObj = document.getElementById(selecid);
	if(disabled)
	{
		selectObj.style.visibility = "hidden";
	}else{
		selectObj.style.visibility = "visible";
	}
}
/** 使所有的下拉列表失效 */
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