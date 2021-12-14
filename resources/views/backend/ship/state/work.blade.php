<div class="form-group">
    <h5>District Select <span class="text-danger">*</span></h5>
    <div class="controls">
        <select id="district_id" name="district_id" class="form-control" >
            <option value="" selected="" disabled="">Select District</option>
            @foreach ($district as $dis)
                <option value="">Select District</option>
            @endforeach
        </select>
        @error('district_id')
            <span class="text-danger">{{ $message }}</span>
        @enderror
    </div>
</div>