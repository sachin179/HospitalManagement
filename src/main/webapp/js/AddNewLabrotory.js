function checkPhone() {
	
	var phone = document.getElementById("phone").value;
	
	
	if(phone.length == 10) {
		
		document.getElementById("check_phone").innerText = "";
        document.getElementById("submit").disabled = false;
        
	} else {
		
		document.getElementById("check_phone").innerText = "Invalid phone number...!!!";
        document.getElementById("submit").disabled = true;
        
	}
}

function checkusage() {
	
	var usage = document.getElementById("usage").value;
	
	
	
	if(usage <= 0) {
		
		document.getElementById("check_usage").innerText = "Invalid Quntity...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_usage").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
	
}


function checkprice() {
	
	var price = document.getElementById("price").value;
	
	
	
	if(price <= 0) {
		
		document.getElementById("check_price").innerText = "Invalid Price...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_price").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
	
}


function checkdescription() {
	
	var description = document.getElementById("description").value;
	
	
	
	if(description.length < 10) {
		
		document.getElementById("check_description").innerText = "Enter More Details...!!!";
        document.getElementById("submit").disabled = true;
        
	} else {
		
		document.getElementById("check_description").innerText = "";
        document.getElementById("submit").disabled = false;
        
	}
	
}