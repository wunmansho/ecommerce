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
                    <h4 class="box-title">View Product Details</h4>
                </div>
                <!-- /.box-header -->
                <div class="box-body">
                    <div class="row">
                        <div class="col">
                            <form method="" action="">
                                @csrf
                                 <div class="row">
                                    <div class="col-12">
                                        <!-- 1st row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Brand</h5>
                                                    <div class="controls">
                                                        <input type="text" name="brand_name_en" id="brand_name_en"
                                                            class="form-control" 
                                                            value="{{ $brands->brand_name_en }}" readonly>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Category</h5>
                                                    <div class="controls">
                                                        <input type="text" name="category_name_en" id="category_name_en"
                                                            class="form-control" 
                                                            value="{{ $categories->category_name_en }}" readonly>
                                                    </div>

 
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>SubCategory</h5>
                                                    <div class="controls">
                                                        <input type="text" name="subcategory_name_en" id="subcategory_name_en"
                                                            class="form-control" 
                                                            value="{{ $subcategory->subcategory_name_en }}" readonly>
                                                    </div>

 
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 1st Row -->


                                        <!-- 2nd row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>SubSubCategory Select </h5>
                                                    <div class="controls">
                                                        <input type="text" name="subsubcategory_name_en" id="subsubcategory_name_en"
                                                            class="form-control" 
                                                            value="{{ $subsubcategory->subsubcategory_name_en }}" readonly>
                                                    </div>


                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Name En</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_en" id="product_name_en"
                                                            class="form-control" 
                                                            value="{{ $products->product_name_en }}" readonly>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Name Hin</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_name_hin" id="product_name_hin"
                                                            class="form-control" 
                                                            value="{{ $products->product_name_hin }}" readonly>
                                                    </div>
 
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 2nd Row -->

                                        <!-- 3rd row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Code</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_code" id="product_code"
                                                            class="form-control" 
                                                            value="{{ $products->product_code }}" readonly>
                                                    </div>
 
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Qty</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_qty" id="product_qty"
                                                            class="form-control" 
                                                            value="{{ $products->product_qty }}" readonly>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Tags En</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_en" id="product_tags_en"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_tags_en }}" readonly disabled>
                                                    </div>
 
                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 3rd Row -->

                                        <!-- 4th row -->
                                        <div class='row'>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Tags Hin</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_tags_hin" id="product_tags_hin"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_tags_hin }}" readonly disabled>
                                                    </div>

                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Size En</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_en" id="product_size_en"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_size_en }}" readonly disabled>
                                                    </div>
 
                                                </div>

                                            </div>
                                            <div class='col-md-4'>
                                                <div class="form-group">
                                                    <h5>Product Size Hin</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_size_hin" id="product_size_hin"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_size_hin }}" readonly disabled>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 4th Row -->

                                        <!-- 5th row -->
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Product Color En</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_en" id="product_color_en"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_color_en }}" readonly disabled>
                                                    </div>
 
                                                </div>

                                            </div>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Product Color Hin</h5>
                                                    <div class="controls">
                                                        <input type="text" name="product_color_hin" id="product_color_hin"
                                                            class="form-control" data-role="tagsinput"
                                                            value="{{ $products->product_color_hin }}" readonly disabled>
                                                    </div>

                                                </div>

                                            </div>
                                        </div>
                                        <!-- End 5th Row -->

                                        <!-- 6th row -->

                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Product Selling Price</h5>
                                                    <div class="controls">
                                                        <input type="text" name="selling_price" id="selling_price"
                                                            class="form-control" 
                                                            value="{{ $products->selling_price }}" readonly>
                                                    </div>
 
                                                </div>

                                            </div>

                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Product Discount Price</h5>
                                                    <div class="controls">
                                                        <input type="text" name="discount_price" id="discount_price"
                                                            class="form-control" 
                                                            value="{{ $products->discount_price }}" readonly>
                                                    </div>
                                                 </div>

                                            </div>
                                        </div>
                                        <!-- End 6th Row -->

                                        <!-- 7th row -->
                                        <div class='row'>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Short Description English</h5>
                                                    <div class="controls">
                                                        <textarea name="short_desc_en" id="short_desc_en"
                                                            class="form-control"  readonly>{{ $products->short_desc_en }}
                                                            </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Short Description Hindi
                                                    </h5>
                                                    <div class="controls">
                                                        <textarea name="short_desc_hin" id="short_desc_hin"
                                                            class="form-control"  readonly>{{ $products->short_desc_hin }}
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
                                                    <h5>Long Description English</h5>
                                                    <div class="controls">
                                                        <textarea id="editor1" name="long_desc_en" rows="10" cols="80" readonly>
                                                                {{ $products->long_desc_en }}
                                                            </textarea>

                                                    </div>

                                                </div>
                                            </div>
                                            <div class='col-md-6'>
                                                <div class="form-group">
                                                    <h5>Long Description Hindi</h5>
                                                    <div class="controls">
                                                        <textarea id="editor2" name="long_desc_hin" rows="10" cols="80" readonly>
                                                                {{ $products->long_desc_hin }}
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
                                                                value="1"
                                                                {{ $products->hot_deals == 1 ? 'checked' : '' }} readonly>
                                                            <label for="checkbox_2">Hot Deals</label>
                                                        </fieldset>
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_3" name="featured" value="1"
                                                                {{ $products->featured == 1 ? 'checked' : '' }} readonly>
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
                                                                value="1"
                                                                {{ $products->special_offer == 1 ? 'checked' : '' }} readonly>
                                                            <label for="checkbox_4">Special Offer</label>
                                                        </fieldset>
                                                        <fieldset>
                                                            <input type="checkbox" id="checkbox_5" name="special_deals"
                                                                value="1"
                                                                {{ $products->special_deals == 1 ? 'checked' : '' }} readonly>
                                                            <label for="checkbox_5">Special Deals</label>
                                                        </fieldset>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="box bt-3 border-info">
                                                    <div class="box-header">
                                                        <h4 class="box-title">Product Multiple Image <strong>View</strong></h4>
                                                    </div>
                            
                                                    <form method="" action="">
                                                        @csrf
                                                        <div class="row row-sm">
                                                            @foreach ($multiImgs as $img)
                                                                <div class="col-md-3">
                            
                                                                    <div class="card">
                                                                        <br><br>
                                                                        <img src="{{ asset($img->photo_name) }}" class="card-img-top"
                                                                            style="height: 130px; width: 280px;">
                                                                        <div class="card-body">
                                                                            <h5 class="card-title">
                                                                             </h5>
                                                                         </div>
                                                                    </div>
                            
                            
                                                                </div> {{-- End col md 3 --}}
                                                            @endforeach
                                                        </div>
                            
                                                        <div class="form-layout-footer">
                             
                                                        </div>
                            
                                                    </form>
                                                </div>
                                            </div>
                            
                            
                                        </div> <!-- end row -->
                                        <div class="row">

                                            <div class="col-md-6">
                                                <div class="box bt-3 border-info">
                                                    <div class="box-header">
                                                        <h4 class="box-title">Product Thumbnail Image <strong>View</strong></h4>
                                                    </div>
                            
                                                    <form method="" action="" >
                                                        @csrf
                                                        <div class="row row-sm">
                            
                                                            <div class="col-md-3">
                            
                                                                <div class="card">
                                                                    <br><br>
                                                                    <img src="{{ asset($products->product_thumbnail) }}" class="card-img-top"
                                                                        style="height: 130px; width: 280px;">
                                                                    <div class="card-body">
                                                                    </div>
                                                                </div>
                            
                            
                                                            </div> {{-- End col md 3 --}}
                            
                                                        </div>
                            
                                                        <div class="form-layout-footer">
                              
                                                        </div>
                            
                                                    </form>
                                                </div>
                                            </div>
                            
                                        </div> <!-- end row -->
                            

                                        <div class="text-xs-right">
                                            <a href="{{ route('manage-product') }}" class="btn btn-rounded btn-primary mb-5" role="button">Continue</a>
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

 @endsection
