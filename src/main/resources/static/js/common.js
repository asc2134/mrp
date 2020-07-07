/**
 * 
 */

function historyBack(){

	window.history.back();

}
// 확인필요 data = 체크값 checkNum 검사항목
function validation(data, checkNum){
	
	for(var j = 0 ; j <checkNum.length; j++){
		for(var i = 0; i<Object.keys(data).length; i++){
			if(checkNum[j] == i){
				if(data[Object.keys(data)[i]] === ''){
					alert('데이터입력이 필수입니다.');
					$("#" + Object.keys(data)[i] + "").focus();
					return false;
				}
			}
		}
	}
	return true;
}