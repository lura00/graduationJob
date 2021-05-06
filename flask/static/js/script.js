// FRONT PAGE
// snippet from https://stackoverflow.com/a/7385673
$(document).mouseup(function(e) {
	var container = $("#resultData");

	// if the target of the click isn't the container nor a descendant of the container
	if (!container.is(e.target) && container.has(e.target).length === 0) {
		container.hide();
	}
});

function orderProducts() {
	const index = document.getElementById("selectOrder").selectedIndex;
	view(index);
}

// show all products
function view(order) {

	$.get("/api/product/get", {
		order: order
	}, function(data) {
		console.log(data);

		$("#tblProducts").html(`<h4>Displaying ${data.length} products.</h4>`);
		for (var i = 0; i < data.length; i++) {
			const product = parseJSON(data[i]);

			if ((i % 5) === 0) {
				$("#tblProducts").append("</tr><tr>");
			}

			$("#tblProducts").append(`<td onclick="showProduct(${product.id})" class="product" style="width: 20%"><div style="text-align: center"><img src='static/media/${product.img}' class='listImg'></div><br>
                                      <h4>${product.name}</h4><p>${product.short_desc}</p>${product.price} kr<br></td>`);
		}
	})
}

// parse JSON to JS object
function parseJSON(data) {
	return {
		id: data[0],
		name: data[1],
		short_desc: data[2],
		long_desc: data[3],
		price: data[4],
		img: data[5]
	};
}

// show specific product
function showProduct(id) {
	$("#headerSort").css("display", "none");
	$("#resultData").css("display", "none");
	$("#tblProducts").css("display", "none");
	$("#selectOrder").css("opacity", "0");
	$("#selectOrder").css("pointer-events", "none");
	$("#product").css("display", "block");

	$.get("/api/product/get/" + id, {}, function(data) {
		const product = parseJSON(data[0]);

		$("#product").html(`<h2>${product.name}</h2>
                            <h4>${product.price} kr</h4>
                            <p style="font-size: 1.2em"><i>${product.short_desc}</i></p>
                            <table id="producttbl">
                                <tr>
                                    <td><img style="width: 20em; height: 20em; margin-top: 1.5em" src='/static/media/${product.img}'></td>
                                    <td style="width: 20em">
                                    <p style="font-size: 1.2em; margin-left: 3em">${product.long_desc}</p>
                                    <div style="text-align: center; width: 108%"><button class="btn btn-primary" style="font-size: 1.7em; margin-top: .5em; width: 7em">Add to cart</button></div>
                                    </td>
                                </tr>
                                <tr>
                                    <td ></td>
                                </tr>
                            </table>`);
	})
}

// search products
function search(val) {

	if (val != "" && val != " ") {
		$("#resultData").css("display", "block");

		$.get("/api/product/search", {
			keyword: val
		}, function(data) {
			// search db
			console.log(data);

			if (data.length > 0) { // match
				$("#resultData").html(`<tr style="white-space: nowrap; font-weight: bold;"><td>${data.length} results.</td><td style="text-decoration: underline; color: blue;" onclick=search("")> Cancel.</td></tr>`);
				for (var i = 0; i < data.length; i++) {
					const product = parseJSON(data[i]);

					$("#resultData").append(`<tr onclick="showProduct(${product.id})" class="productSearch"><td><img class="searchImg" src='static/media/${product.img}'></td>
                                         <td width="100%" style="text-align: left; padding-left: 1em"><h5>${product.name}, ${product.price} kr.</h5><i>${product.short_desc}</i></td>
                                         </tr>`);
				}
			} else { // no match
				$("#resultData").html("No match for: " + val);
			}
		})
	} else { // no input
		$("#resultData").css("display", "none");
	}
}

// ADMIN PAGE
let filename = "placeholder.jpg";

function login() {
	$.post("/api/auth/admin", {
		username: $("#inpUsername").val(),
		pwd: $("#inpPassword").val()
	}, function(data) {
		console.log(data);
		if (data.length === 0) {
			// login failed
			alert("Login failed.")
		} else {
			// login ok
			$("#frmLogin").css("display", "none");
			$("#frmProduct").css("display", "block");
		}
	})
}

function uploadMedia() {
	$.ajax({
		url: '/api/media/upload',
		type: 'POST',

		data: new FormData($('#frmProduct')[0]),
		cache: false,
		contentType: false,
		processData: false,
		success: function(data) {
			$("#error").css("display", "none");
			filename = data;
			$("#preview").attr('src', "static/media/" + filename);
		},
		error: function(XMLHttpRequest, textStatus, errorThrown) {
			$("#error").css("display", "block");
			$("#file").val("");
			filename = "placeholder.jpg";
			$("#preview").attr('src', "static/media/" + filename);
		}
	});
}

document.getElementById("frmProduct").onsubmit = function(evt) { // submit form
	evt.preventDefault();

	$.post("/api/product/add", {
		name: $("#inpName").val(),
		short_desc: $("#inpShortDesc").val(),
		long_desc: $("#inpLongDesc").val(),
		price: $("#inpPrice").val(),
		img: filename
	}, function(data) {
		alert("New product added!");
		// reset form
		$("#file").val("");
		$("#inpName").val("");
		$("#inpShortDesc").val("");
		$("#inpLongDesc").val("");
		$("#inpPrice").val("");
		filename = "placeholder.jpg";
		$("#preview").attr('src', "static/media/" + filename);
	})
}