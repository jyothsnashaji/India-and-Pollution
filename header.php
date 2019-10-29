<?php echo '<header>       <!-- Top Header  -->
		<div class="container"> 
			<div id="branding">
                <h1><span class="highlight"><?php echo $_SESSION[\'username\'];?></span></h1>
			</div>
			<nav >
				<ul>
					<li><a href="user.php">HOME</a></li>
                    <li><a href="events.php">EVENTS</a></li>
					<li><a href="discussion.php">DISCUSS</a></li>			
					<li><a href="logout.php">LOGOUT</a></li>
				</ul>
			</nav>
        </div>
     
	</header>'; ?>