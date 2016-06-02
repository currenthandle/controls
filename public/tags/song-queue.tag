<song-queue>
	<div>
		<ul>
			<span class="fa fa-comment-o" onclick= { setChat }>Chat</span>
			<span class="fa fa-music" onclick= { setQueue }>Queue</span>
			<span class="fa fa-info-circle" onclick= { setRoom } >Room</span>
		</ul>
		<ul if= { state === 'queue' }>
			<li each={ opts.queue } onclick= { play }>
				<span>{ title }</span>
				<span>{ artist }</span>
				<span>{ length }</span>
			</li>
		</ul>
		
		<div id='chat-stream' if= { state === 'chat' }>
			<ul>
				<li each={ opts.chat }>
					<div>{ message }</div>
					<span>{ author }</span>
					<span>{ sent }</span>
					<script>
					//console.log('hi', opts.songs)
					</script>
				</li>
			</ul>
			<form onsubmit= { sendMessage }>
				<label for='message'>
				<input type='text' name='message' id='message'>
				<label for='author'>
				<input type='text' name='author' id='author'>
				<input type='submit'>	
			</form>
		</div>
		<div if = { state === 'room' }>
			<div>{ opts.room.name }</div>
			<div>{  opts.room.description }</div>
		</div>
	</div>
	
	<script>
		this.state = 'queue'
		sendMessage(e){
			let chatStream = document.getElementById('chat-stream')
			
			let chatUl = chatStream.getElementByTagName('ul')[0]
			
		} 
		setQueue(e) {
			this.state = 'queue'
		}
		setChat(e) {
			this.state = 'chat'
		}
		setRoom(e) {
			this.state = 'room'
		}
		play(e) {
			let previouslyPlaying = document.getElementsByClassName("playing")[0]
			console.log('click')
			if(previouslyPlaying) {
				previouslyPlaying.classList.remove('playing') 
			}
			e.currentTarget.classList.add("playing");
		}
	</script>
	<style scoped>
		:scope {}
		.playing {
			background-color: green;
		}
	</style>
</song-queue>

