<controls>
	<ul>
		<span class="fa fa-comment-o" onclick= { setChat }>Chat</span>
		<span class="fa fa-music" onclick= { setQueue }>Queue</span>
		<span class="fa fa-info-circle" onclick= { setRoom } >Room</span>
	</ul>
	<chat show= { state === 'chat' }></chat>
	<queue show= { state === 'queue' } ></queue>
	<room-description show= { state === 'room' }></room-description>
	<script>
		this.state='queue'
		setChat(e) { this.state = 'chat' }
		setQueue(e) { this.state = 'queue' }
		setRoom(e) { this.state = 'room' }
	</script>
</controls>
