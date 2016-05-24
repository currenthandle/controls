<queue>
	<div>
		<ul>
			<li each={ queue } onclick={ play }>
				<span>{ title }</span>
				<span>{ artist }</span>
				<span>{ stringifyTime(length) }</span>
				<div class='time-before'></div>
				<div class='time-after'></div>
			</li>
				
		</ul>
	</div>
	<script>
		this.queue = [
			{ title: 'Are You That Somebody (Album Version)', artist: 'Aaliyah', length: 268 },
			{ title: 'Kiss Me Baby', artist: 'Endor', length: 332 },
			{ title: 'I Eat Beats [Ardalan Remix]', artist: 'Billy Kenny', length: 383 },
			{ title: 'Get High (VIP Mix)', artist: 'Kill Them With Colour', length: 199 },
			{ title: 'Spending a night (Original Mix)', artist: 'Feel Up', length: 279 }
		]
		
		play(e) {
			let previouslyPlaying = document.getElementsByClassName("playing")[0]
			if(previouslyPlaying) {
				previouslyPlaying.classList.remove('playing') 
			}
			e.currentTarget.classList.add("playing");
		}
		stringifyTime(seconds) {
			let secondsRemaining = seconds % 60 
			let minutes = (seconds - secondsRemaining) / 60
			if (secondsRemaining < 10) { secondsRemaining = '0' + secondsRemaining }
			return minutes + ':' + secondsRemaining 
		}
	</script>
	<style scoped>
		:scope {}
		.playing {
			color: orange;
		}
		.playing > .time-before {
			background-color: green;
		}
		.playing > .time-after {
			background-color: red;
		}
	</style>

</queue>
