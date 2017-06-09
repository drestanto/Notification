<html>
<head>
	<title>Notification</title>
</head>
<body>
	<h3> Give notif to other user </h3>
	@if (Auth::check())
		<form action="/submitNotif" method="post">
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