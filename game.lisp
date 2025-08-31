(customchars)

(loadchar 48
...xxx..
..xx.xx.
..xx.xx.
..xx.xx.
..xx.xx.
..xx.xx.
...xxx..
........
)

(loadchar 49
..xxx...
...xx...
...xx...
...xx...
...xx...
...xx...
..xxxx..
........
)

(loadchar 50
..xxxx..
..xxxxx.
.....xx.
...xxxx.
..xx....
..xxxxx.
..xxxxx.
........
)

(loadchar 51
...xxx..
..xxxxx.
.....xx.
...xxx..
.....xx.
..xxxxx.
...xxx..
........
)

(loadchar 52
..xx.xx.
..xx.xx.
..xx.xx.
..xxxxx.
...xxxx.
.....xx.
.....xx.
........
)

(loadchar 53
.xxxxx..
.xxxxx..
.xx.....
.xxxxx..
....xx..
.xxxxx..
.xxxx...
........
)

(loadchar 54
..xxxx..
.xxxxx..
.xx.....
.xxxxx..
.xx..xx.
.xxxxxx.
..xxxx..
........
)

(loadchar 55
..xxxxx.
..xxxxx.
....xx..
...xxx..
...xx...
...xx...
...xx...
........
)

(loadchar 56
...xxx..
..xx.xx.
..xx.xx.
...xxx..
..xx.xx.
..xx.xx.
...xxx..
........
)

(loadchar 57
...xxx..
..xx.xx.
..xx.xx.
...xxxx.
.....xx.
.....xx.
.....xx.
........
)

(loadchar 96
........
........
........
........
........
........
........
........
)

(loadchar 32
........
........
........
........
........
........
........
........
)

(loadchar 0
xx.xx.xx
xxxxxxxx
xx.xx.xx
xx.xx.xx
xx.xx.xx
xx.xx.xx
xxxxxxxx
xx.xx.xx
)

(loadchar 1
.....x..
....xx..
....xx..
...xxx..
..xxxx..
..xxxxx.
.xxxxxx.
xxxxxxxx
)

(loadchar 2
..xxxx..
.xxxxxx.
xxx....x
xx......
xx......
xxx....x
.xxxxxx.
..xxxx..
)

(loadsprite 0
.......xxx.......
.......xxx.......
.........xx......
.........xxxxxx..
.....x..xxxx...x.
......xx.xxx.....
)

(loadsprite 1
.........xxx.
......xxxxxxx
.....xxx...xx
....xxx....xx
.....xxx..xxx
....xxxx.xxxx
)

(loadsprite 2
.......xxx......
.......xxx......
.........xx.....
.........xxxxx..
.......xxxxx.x..
.......x.xxx.x..
)

(loadsprite 3
.........xxx.
.......xxxxxx
......xxx.xx.
.....xxx.xx..
......xxx.xx.
.....xxx.xxxx
)

(loadsprite 4
.........xxx.
......xxxxxxx
.....xxx..xx.
....xxx..xxx.
...xxxx...xx.
.........xxxx
)

(loadsprite 5
...xxxxxxxxx....
..xxxxxxxxxxxx..
.xxxxxx..xx..x..
.xxxxxx..xxxxx..
...xxxxxxxx.x...
.....xxxxxxxx...
......x.x.x.x...
......x.x.x.x...
......x.x.x.x...
)

(loadsprite 6
....xxxxx...
....x.x.x...
.....xxx....
......x.....
......x.....
......x.....
......x.....
......x.....
......x.....
......x.....
......x.....
....x.x.x...
....x.x.x...
.....xxx....
......x.....
)

(loadsprite 7
.xxx...xxx.
.x.......x.
.xx.....xx.
.x.......x.
.xxx...xxx.
..xxxxxxx..
...xxxxx...
....xxx....
....xxx....
..xxx.xxx..
)

(plotcolor 1 31 1)
(plotcolor 1 32 1)
(plotcolor 1 33 1)
(plotcolor 1 34 1)
(plotcolor 1 35 1)
(plotcolor 1 36 1)

(plotcolor 2 31 0)
(plotcolor 2 32 0)
(plotcolor 2 33 0)
(plotcolor 2 34 0)
(plotcolor 2 35 0)
(plotcolor 2 36 0)

(put 0 backgroundcolor)
(put 0 bordercolor)

(put 9 player0color)
(put 12 player1color)

(setsprite 0 0)
(setsprite 1 1)

(setsprite 3 6)

(setsprite 4 7)

(setsprite 2 5)

(put 1 player2color)
(put 12 player3color)
(put 3 player4color)

(put 150 player0x)
(put 170 player0y)

(put 150 player1x)
(put (+ 170 12) player1y)

(newvar wipex 0)
(newvar wipey 0)
(routine wipe
  (put 1 wipex)
  (put 1 wipey)
  (loop
    (when (> wipey 23)(break))
    (loop
      (when (equal wipex 30)(break))
      (plot wipey wipex 96)
      (plotcolor wipey wipex 15)
      (put (+ wipex 1) wipex)
    )
    (put 1 wipex)
    (put (+ wipey 1) wipey)
  )
)

(resetscore)
(resetscore2)

(execute wipe)

(plot 2 2 2)
(plotcolor 2 2 7)

(newvar line 0)

(newvar line2 1)
(loop
  (when (equal line2 29) (break))
  (plot 24 line2 1)
  (plotcolor 24 line2 6)
  (put (+ line2 1) line2)
)

(newvar temp 0)

(put 0 temp)
(loop
  (when (equal temp 10)(break))
  (plot 18 (+ 5 temp) 0)
  (put (+ temp 1) temp)
)

(put 0 temp)
(loop
  (when (equal temp 10)(break))
  (plot 18 (+ 15 temp) 0)
  (put (+ temp 1) temp)
)

(loop
  (drawscreen)
  (when (joyfire)(break))
)

(label resetgame)

(mutesound1)
(mutesound2)

(newvar timepassed 0)

(resetscore)
(resetscore2)

(put 0 player2x)
(put 150 player2y)

(put 150 player3x)
(put 0 player3y)

(put 125 player4x)
(put 250 player4y)

(put 150 player0x)
(put 170 player0y)

(put 150 player1x)
(put (+ 170 12) player1y)

(execute wipe)

(plot 2 2 2)
(plotcolor 2 2 7)

(newvar platx 5)
(newvar platy 18)

(newvar platx2 15)
(newvar platy2 18)

(newvar offset 0)
(newvar offset2 0)

(newvar wait 4)

(newvar fall 5)

(newvar movereset 15)

(newvar fally 23)

(put 0 temp)
(loop
  (when (equal temp (- 10 offset))(break))
  (plot platy (+ platx temp) 0)
  (put (+ temp 1) temp)
)

(put 0 temp)
(loop
  (when (equal temp (- 10 offset2))(break))
  (plot platy2 (+ platx2 temp) 0)
  (put (+ temp 1) temp)
)

(routine moveplat
  (when (< player0x 125)
    (put 125 player0x)
    (when (> wait 0)
      (put (- wait 1) wait)
    )
  )
  (when (equal wait 0)

    (put (+ player2x 8) player2x)
    (put (+ player3x 8) player3x)
    (put (+ player4x 8) player4x)

    (put 4 wait)

    (plot platy platx 32)

    (plot platy2 platx2 32)

    (when (equal offset 0)
      (when (< platx 20)
        (put (+ platx 1) platx)
      )
    )
    (when (equal offset2 0)
      (when (< platx2 20)
        (put (+ platx2 1) platx2)
      )
    )

    (when (> offset 0)
      (put (- offset 1) offset)
    )
    (when (> offset2 0)
      (put (- offset2 1) offset2)
    )

    (put 0 temp)
    (loop
      (when (equal temp (- 10 offset))(break))
      (plot platy (+ platx temp) 0)
      (put (+ temp 1) temp)
    )

    (put 0 temp)
    (loop
      (when (equal temp (- 10 offset2))(break))
      (plot platy2 (+ platx2 temp) 0)
      (put (+ temp 1) temp)
    )
    (addpoints 1)
  )

  (when (equal platx 20)
    (put platy fally)
    (put 0 temp)
    (loop
      (when (equal temp (- 10 offset))(break))
      (plot platy (+ platx temp) 32)
      (put (+ temp 1) temp)
    )
    (put 9 offset)
    (put 1 platx)
    (put (random) platy)
    (put (and platy 31) platy)
    (when (< platy 17)
      (put 17 platy)
    )
    (when (> platy 20)
      (put 20 platy)
    )
  )

  (when (equal platx2 20)
    (put platy2 fally)
    (put 0 temp)
    (loop
      (when (equal temp (- 10 offset2))(break))
      (plot platy2 (+ platx2 temp) 32)
      (put (+ temp 1) temp)
    )
    (put 1 platx2)
    (put 9 offset2)
    (put (random) platy2)
    (put (and platy2 31) platy2)
    (when (< platy2 17)
      (put 17 platy2)
    )
    (when (> platy2 20)
      (put 20 platy2)
    )
  )
)

(newvar hitsound 0)

(routine platfall
  (when (< fally 23)
    (when (< timepassed 250)
      (put (+ timepassed 1) timepassed)
    )
    (put 0 temp)
    (loop
      (when (equal temp 10)(break))
      (plot fally (+ 20 temp) 32)
      (put (+ temp 1) temp)
    )
    (put (+ fally 1) fally)
    (put 0 temp)
    (loop
      (when (equal temp 10)(break))
      (plot fally (+ 20 temp) 0)
      (put (+ temp 1) temp)
    )
  )
  (when (equal fally 23)
    (put 15 hitsound)
    (playsound1)
    (put 0 temp)
    (loop
      (when (equal temp 10)(break))
      (plot fally (+ 20 temp) 32)
      (put (+ temp 1) temp)
    )
    (put 24 fally)
  )
)

(newvar wobble 0)
(newvar wobbledir 0)

(newvar fishjump 100)
(newvar fish 0)

(routine enemymove

  (when (> timepassed 100)
    (when (equal fish 0)
      (put (+ player4y 2) player4y)
    )
    (when (equal fish 1)
      (put (- player4y 2) player4y)
    )
  )

  (when (< player4y fishjump)
    (put 0 fish)
  )

  (when (> player4y 250)
    (put (random) player4x)
    (put (random) fishjump)
    (when (> 75 fishjump)
      (put 75 fishjump)
    )
    (when (< 200 fishjump)
      (put 200 fishjump)
    )
    (put 1 fish)
    (put 249 player4y)
  )

  (when (> player4x 225)
    (put 0 fish)
    (put 250 player4y)
  )


  (when (> timepassed 50)
    (put (+ player3y 2) player3y)
  )

  (when (> player3y 240)
    (put 0 player3y)
    (put player0x player3x)
  )

  (when (> player3x 225)
    (put 0 player3y)
    (put player0x player3x)
  )

  (put (+ player2x 1) player2x)
  (when (> player2x 225)
    (put 0 player2x)
    (put (random) player2y)
  )
  (when (> wobble 0)
    (put (- wobble 1) wobble)
    (when (equal wobbledir 0)
      (put (+ player2y 1) player2y)
    )
    (when (equal wobbledir 1)
      (put (- player2y 1) player2y)
    )
  )
  (when (equal wobble 0)
    (put 15 wobble)
    (put (+ wobbledir 1) wobbledir)
    (when (> wobbledir 1)
      (put 0 wobbledir)
    )
  )
)

(resetscore)

(newvar didhit 0)

(newvar downtime 8)
(newvar down 0)
(newvar up 0)
(newvar swinging 0)
(newvar walk 2)
(newvar standing 0)
(newvar stomp 0)
(newvar stomptime 5)
(newvar knockback 0)

(newvar jumpsound 0)

(loop
  (drawscreen)

  (when (> jumpsound 0)
    (put (- jumpsound 1) jumpsound)
  )
  (when (equal jumpsound 0)
    (mutesound2)
  )

  (when (> hitsound 0)
    (put (- hitsound 1) hitsound)
  )
  (when (equal hitsound 0)
    (mutesound1)
  )

  (put bgcollision didhit)
  (execute moveplat)
  (execute platfall)
  (execute enemymove)
  (put 0 standing)
  (when (equal (and didhit 2) 2)
    (when (< player1y 230)
      (put 1 standing)
    )
  )
  (when (> knockback 1)
    (put (+ player0x 1) player0x)
    (put (- knockback 1) knockback)
  )

  (when (> downtime 0)
    (put (- downtime 1) downtime)
  )
  (when (equal downtime 0)
    (put 8 downtime)
    (when (< down 6)
      (put (+ down 1) down)
    )
  )

  (when (equal stomptime 0)
    (put 5 stomptime)
    (put (+ stomp 1) stomp)
    (when (> stomp 1)
      (put 0 stomp)
    )
  )

  (when (> up 0)
    (put (- up 1) up)
    (put (- player0y 4) player0y)
  )
  
  (when (> player0x 225)
    (put 225 player0x)
  )

  (when (< player0y 50)
    (put 50 player0y)
  )

  (when (equal knockback 0)
    (when (joyleft)
      (put (- player0x walk) player0x)
      (when (> stomptime 0)
        (put (- stomptime 1) stomptime)
      )
    )
    (when (joyright)
      (put (+ player0x walk) player0x)
      (when (> stomptime 0)
        (put (- stomptime 1) stomptime)
      )
    )
    (when (joyfire)
      (when (equal standing 1)
        (put 35 up)
        (put 5 jumpsound)
        (playsound2)
      )
    )
  )

  (when (equal stomp 0)
    (setsprite 1 3)
    (setsprite 0 0)
  )
  (when (equal stomp 1)
    (setsprite 1 1)
    (setsprite 0 2)
  )
  (when (equal standing 1)
    (put 0 down)
    (when (< knockback 5)
      (put 0 knockback)
    )
  )
  (when (equal standing 0)
    (put (+ player0y down) player0y)
    (setsprite 1 4)
    (setsprite 0 0)
  )
  (put player0x player1x)
  (put (+ player0y 12) player1y)

  (hitboxes 20 20 15 15)
  (when (collision 0 2)
    (when (equal knockback 0)
      (put 35 knockback)
      (put 35 up)
    )
    (put 0 down)
    (put 0 player2x)
  )

  (hitboxes 10 20 5 15)
  (when (collision 0 3)
    (when (equal knockback 0)
      (put 35 knockback)
      (put 35 up)
    )
    (put 0 down)
    (put 0 player3y)
  )

  (hitboxes 20 20 10 15)
  (when (collision 0 4)
    (when (equal knockback 0)
      (put 35 knockback)
      (put 35 up)
    )
    (put 0 down)
    (put 250 player4y)
    (put 0 fish)
  )

  (when (> player1y 240)
    (goto gameover)
  )

)

(label gameover)

(mutesound1)
(mutesound2)

(newvar reset 50)

(loop
  (drawscreen)
  (when (joyfire)
    (when (> reset 0)
      (put (- reset 1) reset)
    )
  )
  (when (equal reset 0)
    (goto resetgame)
  )
)
