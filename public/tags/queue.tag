<queue>
	<div>
		<ul>
			<li each={ queue } onclick={ play }>
				<span>{ title }</span>
				<span>{ artist }</span>
				<span>{ stringifyTime(length) }</span>
				<div class='time-before'>&nbsp;</div>
				<div class='time-after'>&nbsp;</div>
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
		li {
			position: relative;
			display: block;
			text-align: left;
			font-size: 1.2rem;
		}
		span{
			margin-right: .5rem;
		}
		.playing {
			color: orange;
		}
		.time-before , .time-after {
			display: inline-block;
			height: 100%;
			position: absolute;
			top: 0;
			bottom: 0;
		}
		.time-before {
			left: 0;
			right: 50%;
		}
		.time-after{
			left: 50%;
			right: 0;
		}
		.playing > .time-before {
			background-color: rgba(0, 255, 0, 0.5);
		}
		.playing > .time-after {
			background-color: rgba(255, 0, 0, 0.5);
		}
	</style>

</queue>
