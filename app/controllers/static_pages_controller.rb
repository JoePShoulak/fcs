class StaticPagesController < ApplicationController
  def home
    @model_src = "/assets/model.jpg"
  end

  def bio
  end

  def music
    itunes_prefix  = "https://itunes.apple.com/us/album/"
    accident_url,  accident_src   = itunes_prefix + "accidental-love-letters-single/id485158289",  "#"
    forever_url,   forever_src    = itunes_prefix + "forever-and-tomorrow-single/id517796378",     "/assets/forever.jpg"
    green_url,     green_src      = itunes_prefix + "green-single/id510678840",                    "/assets/green.jpg"
    recluse_url,   recluse_src    = itunes_prefix + "the-recluse-ep/id579311062",                  "/assets/recluse.jpg"
    gone_url,      gone_src       = itunes_prefix + "while-i-was-gone/id486808582",                "/assets/gone.jpg"
    @albums = [[accident_url, accident_src],  [forever_url, forever_src],
                [green_url,   green_src],     [recluse_url, recluse_src],
                [gone_url,    gone_src]]
  end

  def videos
    @video_url = "http://www.youtube.com/embed/videoseries?list=PLGy1un5MExBjNU6qEXjfb6TZT07F4kJ3n"
  end

  def photos
    @photos = [ "/assets/blond.jpg",
                "/assets/clap.jpg",
                "/assets/color.jpg",
                "/assets/gatsby.jpg",
                "/assets/laugh.jpg",
                "/assets/mpls.jpg",
                "/assets/quote.jpg",
                "/assets/singing.jpg",
                "/assets/smile.jpg",
                "/assets/smile2.jpg",
                "/assets/terrarium.jpg",
                "/assets/young.jpg"]
  end

  def tour
  end

  def contact
    @pgund_email = "prestongundersonmusic@gmail.com"
  end
end
