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

// CART
function cartLength() { // update number of items in cart
	let cart = parseCookie();
	$("#lblCart").html(`Cart (${cart.length})`);
}

function addCart(productID) {

  let cart = parseCookie();

  let update = false;

  for (var i = 0; i < cart.length; i++) {
    if (cart[i].productID == productID) {
      cart[i].antall = cart[i].antall + 1;
      update = true;
    }
  }

  if (!update) {
    cart.push({productID: productID, antall: 1});
  }

  var json_str = JSON.stringify(cart);
  createCookie('cart', json_str);

  alert("Product added to cart!");
  $("#lblCart").html(`Cart (${cart.length})`);
}

// COOKIE
function parseCookie() {
    const json = getCookie('cart');
    if (json != "") {
        // hvis cookie cart ikke er tom
        return JSON.parse(json);
    } else {
      return [];
    }
}

function createCookie(name, value, days) {
  var expires;
  if (days) {
    var date = new Date();
    date.setTime(date.getTime() + (days * 24 * 60 * 60 * 1000));
    expires = "; expires=" + date.toGMTString();
  } else {
  expires = "";
  }
  document.cookie = name + "=" + value + expires + "; path=/; SameSite=Lax";
}


function getCookie(c_name) {
if (document.cookie.length > 0) {
c_start = document.cookie.indexOf(c_name + "=");
if (c_start != -1) {
  c_start = c_start + c_name.length + 1;
  c_end = document.cookie.indexOf(";", c_start);
  if (c_end == -1) {
      c_end = document.cookie.length;
  }
  return unescape(document.cookie.substring(c_start, c_end));
}
}
return "";
}