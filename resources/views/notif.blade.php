<html>
<head>
	<title>Notification</title>
</head>
<body>
	<h3> Give notification to other user </h3>
	@if (Auth::check())
		Hello, {{ Auth::user()->name }}!!<br><br>
		<form action="/submitNotif" method="post">
			{{ csrf_field() }}
			Choose User : <select name="user">
				@foreach ($users as $user)
					@if ($user->id != Auth::id())
						<option value="{{$user->id}}">{{ $user->name }}</option>
					@endif
				@endforeach
			</select><br>
			<input type="submit" value="Notify!">
		</form>
	@else You need to Login before using this feature.
	@endif
</body>
</html>