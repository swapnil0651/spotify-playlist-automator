resource "spotify_playlist" "MyVibe" {
    name = "MyVibe"
    tracks = ["1Es7AUAhQvapIcoh3qMKDL"]
  
}
data "spotify_search_track" "MGK" {
    artist = "MGK "
  
}
resource "spotify_playlist" "MGK" {
    name = "MachineGoon"
    tracks = [data.spotify_search_track.MGK.tracks[0].id, data.spotify_search_track.MGK.tracks[2].id ,
    data.spotify_search_track.MGK.tracks[1].id] 
  
}