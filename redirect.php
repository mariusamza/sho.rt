<?php
    if(isset($_GET['stats'])) {
        
        $short_url = $_GET['redirect'];
        $get_stats ="select * from short_url where short_url='$short_url'";

        $rez_stats = $conn->query($get_stats);
        $rez_stats_arr = $rez_stats->fetch_assoc();
        $rez_views = $rez_stats_arr['views'];


    } else if(isset($_GET['redirect'])) {

        $short_url = $_GET['redirect'];
        // selectie BD
        $select_long_url = "select * from short_url where short_url='$short_url'";
        // rulam slect-ul
        $result = $conn->query($select_long_url);
        // transformam rezultatul in array
        $result_arr = $result->fetch_assoc();
        // scoatem din rezultat URL lung
        $long_url = $result_arr['long_url'];
    
        // +1 views
        $update_views = "update short_url set views=views+1 where short_url='$short_url'";
        $conn->query($update_views);
        // +1 views

        //redirectionam catre Long URl
        header("Location: $long_url");
    }
