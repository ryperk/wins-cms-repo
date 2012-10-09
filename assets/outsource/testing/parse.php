<?php
    require('lastRSS.php');	
    $rss = new lastRSS;
    $feed = $rss->get('http://www.buy.com/ct/rss/digitalcameras.xml');
?> 
<h1><?= $feed['title'] ?></h1>
<ul>
<?php foreach ($feed['items'] as $item): ?>
    <li>
			<a href="<?= $item['link']; ?>"><?= $item['title']; ?></a>
			<div><?= $item['enclosure']; ?></div>
		</li>
<?php endforeach; ?>
</ul>