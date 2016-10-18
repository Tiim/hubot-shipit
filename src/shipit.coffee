# Description:
#   Rodent Motivation
#
#   Set the environment variable HUBOT_SHIP_EXTRA_SQUIRRELS (to anything)
#   for additional motivation
#
# Dependencies:
#   None
#
# Configuration:
#   HUBOT_SHIP_EXTRA_SQUIRRELS
#
# Commands:
#   ship it - Display a motivation squirrel
#
# Author:
#   maddox

squirrels = [
  "http://shipitsquirrel.github.io/images/ship%20it%20squirrel.png",
  "http://28.media.tumblr.com/tumblr_lybw63nzPp1r5bvcto1_500.jpg",
  "http://i.imgur.com/DPVM1.png",
  "http://d2f8dzk2mhcqts.cloudfront.net/0772_PEW_Roundup/09_Squirrel.jpg",
  "http://www.cybersalt.org/images/funnypictures/s/supersquirrel.jpg",
  "http://www.zmescience.com/wp-content/uploads/2010/09/squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/sniper-squirrel.jpg",
  "http://1.bp.blogspot.com/_v0neUj-VDa4/TFBEbqFQcII/AAAAAAAAFBU/E8kPNmF1h1E/s640/squirrelbacca-thumb.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/soldier-squirrel.jpg",
  "https://dl.dropboxusercontent.com/u/602885/github/squirrelmobster.jpeg",
  "http://i.imgur.com/5eaSw6w.jpg",
  "http://i.imgur.com/R2jeJBB.png",
  "http://i.imgur.com/aTco5L6.jpg",
  "http://i.imgur.com/D0GQ9Jl.jpg",
  "http://i.imgur.com/rYayJdG.jpg",
  "http://i.imgur.com/PZSskiQ.jpg",
  "http://i.imgur.com/dMsItP3.jpg",
  "http://i.imgur.com/yrK61Pj.jpg",
  "http://i.imgur.com/mw4X8mw.jpg",
  "http://i.imgur.com/s9FRxn2.jpg",
  "http://i.imgur.com/ljyZ3hZ.png",
  "http://i.imgur.com/UyexmV4.jpg",
  "http://i.imgur.com/jiIYOsZ.jpg",
  "http://i.imgur.com/M3BSAAT.jpg",
]

module.exports = (robot) ->

  # Enable a looser regex if environment variable is set
  if process.env.HUBOT_SHIP_EXTRA_SQUIRRELS
    regex = /\bship(ping|z|s|ped)?\s*it\b/i
  else
    regex = /\bship\s*it\b/i

  robot.hear regex, (msg) ->
    msg.send msg.random squirrels
