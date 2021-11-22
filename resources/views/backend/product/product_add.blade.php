@extends('admin.admin_master')
@section('admin')
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>


    <div class="container-full">
        <!-- Content Header (Page header) -->

        <!-- Main content -->
        <section class="content">

            <!-- Basic Forms -->
            <div class="box">
                <div class="box-header with-border">
                    <h4 class="box-title">Add Product</h4>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col">
                            <form method="post" action="{{ route('product-store') }}" enctype="multipart/form-data">
                                @csrf
                                <div class="row">
                                    <div class="col-12">
                                        <!-- 1st row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Brand Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="brand_id" id="brand_id" class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select Brand</option>
                                                            @foreach ($brands as $brand)
                                                                <option value="{{ $brand->id }}">
                                                                    {{ $brand->brand_name_en }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('brand_id')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Category Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="category_id" id="category_id" class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select Category
                                                            </option>
                                                            @foreach ($categories as $category)
                                                                <option value="{{ $category->id }}">
                                                                    {{ $category->category_name_en }}</option>
                                                            @endforeach
                                                        </select>
                                                        @error('category_id')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>SubCategory Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="subcategory_id" id="subcategory_id"
                                                            class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select SubCategory
                                                            </option>

                                                        </select>
                                                        @error('subcategory_id')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 1st Row -->


                                        <!-- 2nd row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>SubSubCategory Select <span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <select name="subsubcategory_id" id="subsubcategory_id"
                                                            class="form-control" required="">
                                                            <option value="" selected="" disabled="">Select SubSubCategory
                                                            </option>

                                                        </select>
                                                        @error('subsubcategory_id')
                                                            <span class="text-danger">{{ $message }}</span>
                                                        @enderror
                                                    </div>
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Name En<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_en" id="product_name_en"
                                                            class="form-control" required="">
                                                    </div>
                                                    @error('product_name_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Name Hin<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_hin" id="product_name_hin"
                                                            class="form-control" required="" value="यह सिर्फ डेमो डेटा है इससे कोई फर्क नहीं पड़ता">
                                                    </div>
                                                    @error('product_name_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 2nd Row -->

                                        <!-- 3rd row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Code<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_code" id="product_code"
                                                            class="form-control" required="">
                                                    </div>
                                                    @error('product_code')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Qty<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_qty" id="product_qty"
                                                            class="form-control" required="">
                                                    </div>
                                                    @error('product_qty')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Tags En<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_en" id="product_tags_en"
                                                            class="form-control" value=""
                                                            data-role="tagsinput" required="">
                                                    </div>
                                                    @error('product_tags_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 3rd Row -->

                                        <!-- 4th row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Tags Hin<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_hin" id="product_tags_hin"
                                                            class="form-control" value=""
                                                            data-role="tagsinput" required="">
                                                    </div>
                                                    @error('product_tags_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Size En<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_en" id="product_size_en"
                                                            class="form-control" value="Small,Medium,Large"
                                                            data-role="tagsinput">
                                                    </div>
                                                    @error('product_size_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Size Hin<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_hin" id="product_size_hin"
                                                            class="form-control" value="Small,Medium,Large"
                                                            data-role="tagsinput">
                                                    </div>
                                                    @error('product_size_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 4th Row -->

                                        <!-- 5th row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Color En<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_en" id="product_color_en"
                                                            class="form-control" value="Red,Black,White" data-role="tagsinput">
                                                    </div>
                                                    @error('product_color_en')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Color Hin<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_hin" id="product_color_hin"
                                                            class="form-control" value="Red,Black,White" data-role="tagsinput">
                                                    </div>
                                                    @error('product_color_hin')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Selling Price<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="selling_price" id="selling_price"
                                                            class="form-control" required="">
                                                    </div>
                                                    @error('selling_price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 5th Row -->

                                        <!-- 6th row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Discount Price<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="text" name="discount_price" id="discount_price"
                                                            class="form-control" required="">
                                                    </div>
                                                    @error('discount_price')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Main Thumbnail<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="file" name="product_thumbnail" id="product_thumbnail"
                                                            class="form-control" onChange="mainThumbUrl(this)"  required="">
                                                    </div>
                                                    @error('product_thumbnail')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <img src="" id="mainThmb">
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Multiple Image<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <input type="file" name="multi_img[]" class="form-control" multiple=""  id="multiImg" required="">
                                                    </div>
                                                    @error('multi_img')
                                                        <span class="text-danger">{{ $message }}</span>
                                                    @enderror
                                                    <div class="row" id="preview_img"></div>
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 6th Row -->

                                        <!-- 7th row -->
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Short Description English<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea name="short_desc_en" id="short_desc_en"
                                                            class="form-control" required="" >Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.
                                                        </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Short Description Hindi<span class="text-danger">*</span>
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="short_desc_hin" id="short_desc_hin"
                                                            class="form-control" required="">दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता. 
                                                        </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- End 7th Row -->

                                        <!-- 8th row -->
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Long Description English<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea id="editor1" name="long_desc_en" rows="10" cols="80">
                                                            Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
                                                        </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Long Description Hindi<span class="text-danger">*</span></h5>
                                                    <div class="controls">
                                                        <textarea id="editor2" name="long_desc_hin" rows="10" cols="80" >
                                                            दर्द ही दर्द का प्यार है, मुख्य पारिस्थितिक समस्याएं हैं, लेकिन मैं इस तरह के समय को नीचे गिरने के लिए देता हूं, ताकि कुछ महान दर्द और दर्द हो। कम से कम आने के उद्देश्य से हममें से कौन किसी रोजगार का प्रयोग करे सिवाय उसके परिणाम का लाभ उठाने के। लेकिन फिल्म में जो दर्द है, उसकी निंदा करना लाजमी है, जिस खुशी में वह दर्द में अनाड़ी होने के दर्द से बचना चाहती है, उसका कोई नतीजा नहीं निकलता. वे अपवाद हैं जिनके लिए अंधे तरसते हैं, वे नहीं देखते हैं, वे वही हैं जो अपनी जिम्मेदारियों को उस गलती के लिए छोड़ देते हैं जो आत्मा की कठिनाइयों को शांत कर रही है।
                                                            </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                        </div>
                                        <!-- End 8th Row -->

                                        <hr>



                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="form-group">

                                                    <div class="controls">
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_2" name="hot_deals"
                                                                value="1">
                                                            <label for="checkbox_2">Hot Deals</label>
                                                        </fieldset>
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_3" name="featured"
                                                                value="1">
                                                            <label for="checkbox_3">Featured</label>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>



                                            <div class="col-md-6">
                                                <div class="form-group">

                                                    <div class="controls">
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_4" name="special_offer"
                                                                value="1">
                                                            <label for="checkbox_4">Special Offer</label>
                                                        </fieldset>
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_5" name="special_deals"
                                                                value="1">
                                                            <label for="checkbox_5">Special Deals</label>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="text-xs-right">
                                            <input type="submit" class="btn btn-rounded btn-primary mb-5"
                                                value="Add Product">
                                        </div>
                            </form>

                        </div>
                        <!-- /.col -->
                    </div>
                    <!-- /.row -->
                </div>
                <!-- /.box-body -->
            </div>
            <!-- /.box -->

        </section>
        <!-- /.content -->
    </div>

    <script type="text/javascript">
        $(document).ready(function() {
            $('select[name="category_id"]').on('change', function() {
                var category_id = $(this).val();
                if (category_id) {
                    $.ajax({
                        url: "{{ url('/category/subcategory/ajax') }}/" + category_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {

                            $('select[name="subsubcategory_id"]').html('');
                            var d = $('select[name="subcategory_id"]').empty();
                            $('select[name="subcategory_id"]').append(
                                '<option value="' + '' + '">' + '' + '</option>');

                            $.each(data, function(key, value) {
                                $('select[name="subcategory_id"]').append(
                                    '<option value="' + value.id + '">' + value
                                    .subcategory_name_en + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });



            $('select[name="subcategory_id"]').on('change', function() {
                var subcategory_id = $(this).val();
                if (subcategory_id) {
                    $.ajax({
                        url: "{{ url('/category/sub-subcategory/ajax') }}/" + subcategory_id,
                        type: "GET",
                        dataType: "json",
                        success: function(data) {
                            var d = $('select[name="subsubcategory_id"]').empty();
                            $.each(data, function(key, value) {
                                $('select[name="subsubcategory_id"]').append(
                                    '<option value="' + value.id + '">' + value
                                    .subsubcategory_name_en + '</option>');
                            });
                        },
                    });
                } else {
                    alert('danger');
                }
            });


        });
    </script>


    <script type="text/javascript">
        function mainThumbUrl(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();
                reader.onload = function(e) {
                    $('#mainThmb').attr('src', e.target.result).width(80).height(80);
                };
                reader.readAsDataURL(input.files[0]);
            }
        }
    </script>


    <script>
        $(document).ready(function() {
            $('#multiImg').on('change', function() { //on file input change
                if (window.File && window.FileReader && window.FileList && window
                    .Blob) //check File API supported browser
                {
                    var data = $(this)[0].files; //this file data

                    $.each(data, function(index, file) { //loop though each file
                        if (/(\.|\/)(gif|jpe?g|png|jpg)$/i.test(file
                                .type)) { //check supported file type
                            var fRead = new FileReader(); //new filereader
                            fRead.onload = (function(file) { //trigger function on successful read
                                return function(e) {
                                    var img = $('<img/>').addClass('thumb').attr('src',
                                            e.target.result).width(80)
                                        .height(80); //create image element 
                                    $('#preview_img').append(
                                        img); //append image to output element
                                };
                            })(file);
                            fRead.readAsDataURL(file); //URL representing the file's data.
                        }
                    });

                } else {
                    alert("Your browser doesn't support File API!"); //if File API is absent
                }
            });
        });
    </script>




@endsection
