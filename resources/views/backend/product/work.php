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
