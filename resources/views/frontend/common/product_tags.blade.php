@php
    $tags_en = App\Models\Product::groupBy('product_tags_en')->select('product_tags_en')->get();
    $tags_hin = App\Models\Product::groupBy('product_tags_hin')->select('product_tags_hin')->get();

@endphp


<div class="sidebar-widget product-tag wow fadeInUp">
    <h3 class="section-title">@if (session()->get('language') == 'hindi') उत्पाद टैग @else Product tags @endif</h3>
    <div class="sidebar-widget-body outer-top-xs">
        <div class="tag-list">
            @if (session()->get('language') == 'hindi')  
            @foreach($tags_hin as $tags)
            <a class="item" title="{{ str_replace(',',' ',$tags->product_tags_hin) }}" href="{{ url('product/tag/'.$tags->product_tags_hin) }}">{{ str_replace(',',' ',$tags->product_tags_hin) }}</a>
            @endforeach
            @else 
            @foreach($tags_en as $tags) 
            <a class="item" title="{{ str_replace(',',' ',$tags->product_tags_en) }}" href="{{ url('product/tag/'.$tags->product_tags_en) }}">{{ str_replace(',',' ',$tags->product_tags_en) }}</a>
            @endforeach
            @endif

        </div>
        <!-- /.tag-list -->
    </div>
    <!-- /.sidebar-widget-body -->
</div>
<!-- /.sidebar-widget -->


