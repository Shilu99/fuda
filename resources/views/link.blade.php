<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>友情链接</title>
<style>
    li {
        list-style-type: none;
    }
    </style>

    </head>
    <body>
        <ul>
        @foreach($allLinks as $onelink )
            <li>
                <a href="{{ $onelink->link_address }}">
                    {{ $onelink->link_name }}
                </a>
            </li>
        @endforeach
        </ul>
    </body>
</html>
