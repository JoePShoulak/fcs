class StaticPagesController < ApplicationController
  def home
    @model_src = "/assets/model-pic.jpg"
    @quote_src = "/assets/quote.jpg"
  end

  def bio
  end

  def music
    itunes_prefix     = "https://itunes.apple.com/us/album/"
    accident_url      = itunes_prefix + "accidental-love-letters-single/id485158289"
    forever_url       = itunes_prefix + "forever-and-tomorrow-single/id517796378"
    green_url         = itunes_prefix + "green-single/id510678840"
    recluse_url       = itunes_prefix + "the-recluse-ep/id579311062"
    gone_url          = itunes_prefix + "while-i-was-gone/id486808582"
    accident_src      = "/assets/accident.jpg"
    forever_src       = "/assets/forever.jpg"
    green_src         = "/assets/green.jpg"
    recluse_src       = "/assets/recluse.jpg"
    gone_src          = "/assets/gone.jpg"
    accident_name     = "Accidental Love Letters"
    forever_name      = "Forever and Tomorrow"
    green_name        = "Green"
    recluse_name      = "The Recluse"
    gone_name         = "While I Was Gone"
    @albums = [ [accident_url,  accident_src, accident_name ],
                [forever_url,   forever_src,  forever_name  ],
                [green_url,     green_src,    green_name    ],
                [recluse_url,   recluse_src,  recluse_name  ],
                [gone_url,      gone_src,     gone_name     ] ]
  end

  def videos
    @video_url = "http://www.youtube.com/embed/videoseries?list=PLGy1un5MExBjNU6qEXjfb6TZT07F4kJ3n"
  end

  def photos
    @photos = [ ["/assets/blond.jpg",     "/assets/blond.jpg"],
                ["/assets/clap.jpg",      "/assets/clap.jpg"],
                ["/assets/color.jpg",     "/assets/color.jpg"],
                ["/assets/gatsby.jpg",    "/assets/gatsby.jpg"],
                ["/assets/laugh.jpg",     "/assets/laugh.jpg"],
                ["/assets/mpls.jpg",      "/assets/mpls.jpg"],
                ["/assets/singing.jpg",   "/assets/singing.jpg"],
                ["/assets/smile.jpg",     "/assets/smile.jpg"],
                ["/assets/smile2.jpg",    "/assets/smile2.jpg"],
                ["/assets/terrarium.jpg", "/assets/terrarium.jpg"],
                ["/assets/young.jpg",     "/assets/young.jpg"] ]
  end

  def tour
  end

  def contact
    @pgund_email = "prestongundersonmusic@gmail.com"
  end
end
