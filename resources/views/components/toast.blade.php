<div
    x-data="{ show: false, message: '', type: 'success' }"
    x-on:toast.window="
        type = $event.detail.type;
        message = $event.detail.message;
        show = true;
        setTimeout(() => show = false, 3000)
    "
    x-show="show"
    x-transition
    class="fixed top-5 right-5 z-50 px-4 py-2 rounded text-white shadow-lg"
    :class="type === 'success' ? 'bg-green-600' : 'bg-red-600'"
>
    <span x-text="message"></span>
</div>
