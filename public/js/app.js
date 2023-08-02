
$(document).ready(function() {
  $("#delete-cart").click(function() {
    Swal.fire({
      title: "Xóa giỏ hàng",
      text: "Bạn có chắc chắn muốn xóa toàn bộ sản phẩm khỏi giỏ hàng không?",
      icon: "question",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Đồng ý",
      cancelButtonText: "Hủy",
    }).then((result) => {
      if (result.isConfirmed) {
        $.ajax({
          url: "?mod=shoppingcart&controllers=index&action=delete_all_cart",
          method: 'GET',
          success: function() {
            Swal.fire({
              title: "Đã xóa giỏ hàng",
              text: "Toàn bộ sản phẩm trong giỏ hàng đã được xóa",
              icon: "success"
            }).then(() => {
              window.location.href = "?mod=home&controllers=index&action=home"// Tải lại trang
            });
          },
          error: function() {
            Swal.fire("Lỗi", "Đã xảy ra lỗi khi xóa giỏ hàng", "error");
          }
        });
      }
    });
  });
  

  $(".add-cart").click(function(e) {
    e.preventDefault(); // Ngăn chặn hành động mặc định của liên kết

    Swal.fire({
      title: "Thêm giỏ hàng",
      text: "Bạn có tới trang giỏ hàng hay tiếp tục mua sắm",
      icon: "question",
      showCancelButton: true,
      confirmButtonColor: "#3085d6",
      cancelButtonColor: "#d33",
      confirmButtonText: "Tới giỏ hàng",
      cancelButtonText: "Tiếp tục mua sắm",
    }).then((result) => {
      if (result.isConfirmed) {
        // Chuyển hướng tới trang giỏ hàng
        window.location.href = $(this).attr('href');
      } else {
        // Thêm sản phẩm vào giỏ hàng
        var url = $(this).attr('href');
        $.ajax({
          url: url,
          method: 'GET',
          success: function() {
            Swal.fire("Thêm giỏ hàng", "Sản phẩm đã được thêm vào giỏ hàng", "success").then((result) => {
              if (result.isConfirmed) {
                window.location.reload(); // Tải lại trang
              }
            });
          },
          error: function() {
            Swal.fire("Lỗi", "Đã xảy ra lỗi khi thêm sản phẩm vào giỏ hàng", "error");
          }
        });
        
      }
    });
  });
  $('.num-order').change( function() {
    var qty = $(this).val();
    var id = $(this).attr('data-id');
    
    if (qty === '') {
      alert("Số bạn nhập không hợp lệ");
      window.location.href = "?mod=shoppingcart&controllers=index&action=cart";
      return;
    }
    
    var value = parseInt(qty);
    var lowerLimit = 1;
    var upperLimit = 10;
  
    if (isNaN(value) || value < lowerLimit) {
      value = lowerLimit;
    } else if (value > upperLimit) {
      value = upperLimit;
    }
    
    $(this).val(value);
    
    var data = { id: id, qty: value };
    
    $.ajax({
      url: "?mod=shoppingcart&controllers=index&action=ChangeValueCartAjax",
      method: 'POST',
      data: data,
      dataType: 'json',
      success: function(data) {
        $("#total_price-" + id).text(data.total);
        $("#total-price span").text(data.total_price);
      },
    });
  });

  var inputs = document.querySelectorAll('.num-order');

  inputs.forEach(function(input) {
    var id = input.dataset.id;
    var lowerLimit = 1;
    var upperLimit = 10;

    input.addEventListener('input', function() {
      var value = parseInt(input.value);

      if (isNaN(value) || value < lowerLimit) {
        input.value = '';
      } else if (value > upperLimit) {
        input.value = upperLimit;
      }
    });

    input.addEventListener('blur', function() {
      var value = parseInt(input.value);

      if (isNaN(value) || value < lowerLimit) {
        input.value = lowerLimit;
      } else if (value > upperLimit) {
        input.value = upperLimit;
      }
    });
  });
});