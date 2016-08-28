$(function(){
	$('#center_area').tabs('add',{
		title:'首页',
		href:"meituan.html"
	});
	
	
	$('#menu_tree').tree({
		onClick:function(node){
			var text=node.text;//获取选中节点的文本值
			var tabs=$('#center_area');
			if(text=="店铺管理"){
				if(tabs.tabs('exists',"店铺管理")){
					tabs.tabs('select',"店铺管理");
				}else{
					tabs.tabs('add',{
						title:"店铺管理",
						href:"store.html",
						closable:true
					});
				}
			}else if(text=="商品管理"){
				if(tabs.tabs('exists',"商品管理")){
					tabs.tabs('select',"商品管理");
				}else{
					tabs.tabs('add',{
						title:"商品管理",
						href:"commodity.html",
						closable:true
					});
				}
			}else if(text=="订单管理"){
				if(tabs.tabs('exists',"订单管理")){
					tabs.tabs('select',"订单管理");
				}else {
					
					tabs.tabs('add',{
						title:"订单管理",
						href:"order.html",
						closable:true
					});
				}
			}else if(text=="基本资料"){
				if(tabs.tabs('exists',"基本资料")){
					tabs.tabs('select',"基本资料");
				}else {
					tabs.tabs('add',{
						title:"基本资料",
						href:"basicInfo.html",
						closable:true
					});
				}
			}else if(text=="修改密码"){
				if(tabs.tabs('exists',"修改密码")){
					tabs.tabs('select',"修改密码");
				}else {
					tabs.tabs('add',{
						title:"修改密码",
						href:"updatePassword.html",
						closable:true
					});
				}
			}
			
		}
	});
	
	
	
});