function tablogin(){
	$("#tablogin").addClass("tabactive");
	$("#tablogin").find("a").addClass("active");
	$("#tabregistr").removeClass("tabactive");
	$("#tabregistr").find("a").removeClass("active");
}
function tabregistr(){
	$("#tabregistr").addClass("tabactive");
	$("#tabregistr").find("a").addClass("active");
	$("#tablogin").removeClass("tabactive");
	$("#tablogin").find("a").removeClass("active");
}