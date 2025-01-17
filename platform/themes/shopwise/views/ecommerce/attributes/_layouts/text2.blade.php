@foreach($attributes->where('attribute_set_id', $set->id) as $attribute)
    <tr>
        <td>{{ $set->title }}</td>
        <td>{{ $attribute->title }}</td>  
    </tr>
@endforeach