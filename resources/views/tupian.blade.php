<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tupian List</title>
    <!-- Correct Bootstrap 5 CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" 
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
	<style>
		a {
			color: black;
		}
        .nav-link {
            color: white !important;
        }
		.logo {
			width: 8rem;
		}
        .banner {
            background-color: black;
            color: yellow;
            text-align: center;
            padding: 20px;
        }
        .content img {
            width: 100%;
            height: auto;
        }
        .video-thumbnail {
            position: relative;
            padding-top: 56.25%; /* 16:9 Aspect Ratio */
        }
        .video-thumbnail img {
            position: absolute;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
        }
        footer {
            background-color: #333;
            color: #ddd;
            padding: 20px 0;
        }
        footer a {
            color: #f0ad4e;
            text-decoration: none;
        }
    </style>
</head>
<body>
<div class="container mt-4">
    <h1 class="text-center mb-4">Tupian List</h1>

    <!-- Adding Bootstrap table classes -->
    <table class="table table-striped table-bordered">
        <thead class="table-dark">
            <tr>
                <th>ID</th>
                <th>Image</th>
                <!-- <th>Enable</th> -->
                <th>Position</th>
                <th>Image Column</th>
                <th>Lianjie</th>
                <th>Rank</th>
                <th>Creation Time</th>
                <th>Name</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($alltupians as $tupian)
                <tr>
                    <td>{{ $tupian->id }}</td>
                    <td>{{ $tupian->img }}</td>
                    <!-- <td>{{ $tupian->enable ? 'Yes' : 'No' }}</td> -->
                    <td>{{ $tupian->weizhi }}</td>
                    <td>{{ $tupian->image_column }}</td>
                    <!-- Truncated link with tooltip -->
                    <td>
                        <a href="{{ $tupian->lianjie }}" target="_blank" title="{{ $tupian->lianjie }}">
                            {{ \Illuminate\Support\Str::limit($tupian->lianjie, 30) }}
                        </a>
                    </td>
                    <td>{{ $tupian->paiwei }}</td>
                    <td>{{ $tupian->intime }}</td>
                    <td>{{ $tupian->name }}</td>
                </tr>
            @endforeach
        </tbody>
    </table>
</div>

<!-- Bootstrap 5 JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
</body>
</html>
