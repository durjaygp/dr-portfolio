<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Menu extends Model
{
    use HasFactory;

    protected $guarded = ['id'];

    protected $hidden = ['created_at', 'updated_at'];

    protected $casts = [
        'reference_ids' => 'array',
        'status' => 'boolean',
        'enable_livewire' => 'boolean',
        'is_featured' => 'boolean',
    ];

    // Parent / Child relationships
    public function parent()
    {
        return $this->belongsTo(Menu::class, 'parent_id');
    }

    public function children()
    {
        return $this->hasMany(Menu::class, 'parent_id')->where('status', 1)->orderBy('order');
    }

    // Scope for top-level active menus
    public function scopeActive($query)
    {
        return $query->where('status', 1)->whereNull('parent_id')->orderBy('order');
    }
}
