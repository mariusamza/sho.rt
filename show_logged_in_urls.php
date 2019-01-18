<?php
    /* ########LATEST URLs########### */
    $get_views = "select * from short_url where uid='$uid' order by id DESC limit 5";
    $rez_get_views = $conn->query($get_views);


    echo '<table class="table table-striped">';
    echo '<thead class="thead-dark"><tr><th scope="col">Your Latest 5 URLs</th></tr></thead>';
    
    while($row = $rez_get_views->fetch_assoc()) {
        $short_url = $row['short_url'];
        $long_url = $row['long_url'];

        echo "<tr>";
        echo "<td><b>Short URL:</b> $short_url<br> <b>Long URL:</b> $long_url</td>";
        echo "</tr>";
    }
    
    echo '</table>';
    /* ################### */