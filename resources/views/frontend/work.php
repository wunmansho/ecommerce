<script type="text/javascript">
    $.ajaxSetup({
        headers:{
            'X-CSRF-TOKEN':$('meta[name="csrf-token"]').attr('content')
        }
    })

// Start Product View with Modal 

function productView(id){
    // alert(id)
    $.ajax({
        type: 'GET',
        url: '/product/view/modal/'+id,
        dataType:'json',
        success:function(data){
            // console.log(data)
            $('#pname').text(data.product.product_name_en);
            $('#price').text(data.product.selling_price);
            $('#pcode').text(data.product.product_code);
            $('#pcategory').text(data.product.category.category_name_en);
            $('#pbrand').text(data.product.brand.brand_name_en);
            $('#pimage').attr('src','/'+data.product.product_thumbnail);

            $('#product_id').val(id);
            $('#qty').val(1);

            // Product Price 
            if (data.product.discount_price == null) {
                $('#pprice').text('');
                $('#oldprice').text('');
                $('#pprice').text(data.product.selling_price);


            }else{
                $('#pprice').text(data.product.discount_price);
                $('#oldprice').text(data.product.selling_price);

            } // end prodcut price 

            // Start Stock opiton

            if (data.product.product_qty > 0) {
                $('#aviable').text('');
                $('#stockout').text('');
                $('#aviable').text('aviable');

            }else{
                $('#aviable').text('');
                $('#stockout').text('');
                $('#stockout').text('stockout');
            } // end Stock Option 

            // Color
    $('select[name="color"]').empty();        
    $.each(data.color,function(key,value){
        $('select[name="color"]').append('<option value=" '+value+' ">'+value+' </option>')
    }) // end color

     // Size
    $('select[name="size"]').empty();        
    $.each(data.size,function(key,value){
        $('select[name="size"]').append('<option value=" '+value+' ">'+value+' </option>')
        if (data.size == "") {
            $('#sizeArea').hide();
        }else{
            $('#sizeArea').show();
        }

    }) // end size
 

        }

    })
 

}
// Eend Product View with Modal 


 // Start Add To Cart Product 

    function addToCart(){
        var product_name = $('#pname').text();
        var id = $('#product_id').val();
        var color = $('#color option:selected').text();
        var size = $('#size option:selected').text();
        var quantity = $('#qty').val();
        $.ajax({
            type: "POST",
            dataType: 'json',
            data:{
                color:color, size:size, quantity:quantity, product_name:product_name
            },
            url: "/cart/data/store/"+id,
            success:function(data){

                miniCart()
                $('#closeModel').click();
                // console.log(data)

                // Start Message 
                const Toast = Swal.mixin({
                      toast: true,
                      position: 'top-end',
                      icon: 'success',
                      showConfirmButton: false,
                      timer: 3000
                    })
                if ($.isEmptyObject(data.error)) {
                    Toast.fire({
                        type: 'success',
                        title: data.success
                    })

                }else{
                    Toast.fire({
                        type: 'error',
                        title: data.error
                    })

                }

                // End Message 
            }
        })

    }
  
// End Add To Cart Product 

</script>

<script type="text/javascript">
     function miniCart(){
        $.ajax({
            type: 'GET',
            url: '/product/mini/cart',
            dataType:'json',
            success:function(response){

                $('span[id="cartSubTotal"]').text(response.cartTotal);
                $('#cartQty').text(response.cartQty);
                var miniCart = ""

                $.each(response.carts, function(key,value){
                    miniCart += `<div class="cart-item product-summary">
          <div class="row">
            <div class="col-xs-4">
              <div class="image"> <a href="detail.html"><img src="/${value.options.image}" alt=""></a> </div>
            </div>
            <div class="col-xs-7">
              <h3 class="name"><a href="index.php?page-detail">${value.name}</a></h3>
              <div class="price"> ${value.price} * ${value.qty} </div>
            </div>
            <div class="col-xs-1 action"> <a href="#"><i class="fa fa-trash"></i></a> </div>
          </div>
        </div>
        <!-- /.cart-item -->
        <div class="clearfix"></div>
        <hr>`
        });
                
                $('#miniCart').html(miniCart);
            }
        })

     }
 miniCart();

</script>