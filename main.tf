terraform {
  required_providers {
    spotify = {
      version = "~> 0.2.6"
      source  = "conradludgate/spotify"
    }
  }
}

provider "spotify" {
  api_key = var.spotify_api_key
}

resource "spotify_playlist" "playlist" {
  name        = "Vasubabu Playlist"
  description = "This playlist was created by Terraform"
  public      = true

  tracks = [
   data.spotify_track.believer_song.spotify_id,
   data.spotify_track.thunder_song.spotify_id,
   data.spotify_track.start_over_song.spotify_id,
   data.spotify_track.jerusalema_song.spotify_id,
   data.spotify_track.dont_let_me_down_song.spotify_id
  ]
}
