with(team){
    text = "";
    players_len = array_length_1d(players);
    for(var p=0; p<players_len; p++){
        text = text+players[p].name+"#";
    }
}
