<?php echo '<header style="position:fixed; top:0; width:100%">       <!-- Top Header  -->
		<div class="container"> 
			<div id="branding">
                <h1><span class="highlight"><?php echo $_SESSION[\'username\'];?></span></h1>
			</div>
			<nav >
				<ul>
					<li class="current"><a href="user.php">HOME</a></li>
                    <li><a href="events.php">EVENTS</a></li>
					<li><a href="complain.php">REPORT</a></li>
					<li><a href="vote.php">UPVOTE</a></li>
					<li><a href="history.php">HISTORY</a></li>
					<li><a href="logout.php">LOGOUT</a></li>
				</ul>
			</nav>
        </div>
	</header>'; ?>