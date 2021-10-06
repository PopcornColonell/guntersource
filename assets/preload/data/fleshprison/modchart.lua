local x4,x5,x6,x7,y4,y5,y6,y7
local funkysway = false
local shakenote = false
local wackybop = false
function start (song)
	x4 = getActorX(4)
	x5 = getActorX(5)
	x6 = getActorX(6)
	x7 = getActorX(7)
	
	y7 = getActorY(7)
	y6 = getActorY(6)
	y5 = getActorY(5)
	y4 = getActorY(4)	
end

function update (elapsed)
	if funkysway == true then
		for i=0,7 do
			setActorY(_G['defaultStrum'..i..'Y'] + 10 * math.cos((currentBeat + i*0.45) * math.pi), i)
			tweenPosYAngle(i,getActorY(i) - 50,0,0.5)
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)
		end
	end
	if shakenote == true then
		for i=0,7 do
			setActorX(_G['defaultStrum'..i..'X'] + 3 * math.sin((currentBeat * 10 + i*0.25) * math.pi), i)
			setActorY(_G['defaultStrum'..i..'Y'] + 3 * math.cos((currentBeat * 10 + i*0.25) * math.pi) + 10, i)
			setActorX(_G['defaultStrum'..i..'X'] + 64 * math.sin((currentBeat + i*0)), i)

		end
	end
end

function beatHit(beat) -- why tf beathit broken 😭
if wackybop == true then 
		setCamZoom(1)
	end
end 
function resetNotes()
	tweenPos(5, x5, y5, 0.35, done)
	tweenPos(6, x6, y6, 0.35, done)
	tweenPos(4, x4, y4, 0.35, done)
	tweenPos(7, x7, y7, 0.35, done)
	tweenAngle(7, 0, 0.25, done)
	tweenAngle(4, 0, 0.25, done)
	tweenAngle(5, 0, 0.25, done)
	tweenAngle(6, 0, 0.25, done)
	tweenAlpha(4, 1, 0.25)
	tweenAlpha(5, 1, 0.25)
	tweenAlpha(6, 1, 0.25)
	tweenAlpha(7, 1, 0.25)
end
function stepHit (beat) 
	if curStep == 128 then 
	end
	if curStep == 256 then 
	end 
	if curStep == 319 then
		scrollSpeed = 1.9
		tweenPos(7, x7, y7+100, 0.35, done)
		tweenPos(4, x4, y4+100, 0.35, done)
	end
	if curStep == 335 then 
		tweenPos(7, x7, y7-100, 0.35, done)
		tweenPos(4, x4, y4-100, 0.35, done)
		tweenPos(5, x5, y5+100, 0.35, done)
		tweenPos(6, x6, y6+100, 0.35, done)
	end
	if curStep == 352 then 
		tweenPos(5, x5, y5-100, 0.35, done)
		tweenPos(6, x6, y6-100, 0.35, done)
		tweenPos(7, x7, y7+100, 0.35, done)
		tweenPos(4, x4, y4+100, 0.35, done)
	end
	if curStep == 367 then 
		tweenPos(7, x7, y7-50, 0.35, done)
		tweenPos(4, x4, y4-50, 0.35, done)
		tweenPos(5, x5, y5+100, 0.35, done)
		tweenPos(6, x6, y6+100, 0.35, done)
	end
	if curStep == 383 then 
		resetNotes()
	end
	if curStep == 447 then 
		tweenAngle(7, 180, 0.25, done)
		tweenAngle(4, 180, 0.25, done)
	end
	if curStep == 463 then 
		tweenAngle(5, 180, 0.25, done)
		tweenAngle(6, 180, 0.25, done)	
		tweenAngle(7, 0, 0.25, done)
		tweenAngle(4, 0, 0.25, done)
	end 
	if curStep == 480 then 
		tweenAngle(4, 180, 0.25, done)
		tweenAngle(7, 180, 0.25, done)	
		tweenAngle(5, 0, 0.25, done)
		tweenAngle(6, 0, 0.25, done)
	end
	if curStep == 495 then
		tweenAngle(4, 180, 0.25, done)
		tweenAngle(7, 180, 0.25, done)	
		tweenAngle(5, 180, 0.25, done)
		tweenAngle(6, 180, 0.25, done)
	end 
	if curStep == 512 then 
		resetNotes()
	end
	if curStep == 576 then 
		tweenPos(6, x6, y6-50, 0.2, done)
	end 
	if curStep == 580 then 
		tweenPos(6, x6, y6, 0.2, done)
		tweenPos(4, x4-50, y4, 0.2, done)
	end 
	if curStep == 584 then 
		tweenPos(6, x6, y6-50, 0.2, done)
		tweenPos(4, x4, y4, 0.2, done)
	end 
	if curStep == 588 then 
		tweenPos(6, x6, y6, 0.2, done)
		tweenPos(7, x7 + 50, y7, 0.2, done)
	end 
	if curStep == 592 then
		tweenPos(7, x7, y7, 0.2, done)
		tweenPos(6, x6, y6-50, 0.2, done)
	end  
	if curStep == 595 then 
		tweenPos(6, x6, y6, 0.2, done)
		tweenPos(5, x5, y5+50, 0.2, done)
	end 
	if curStep == 600 then 
		tweenPos(5, x5, y5, 0.2, done)
		tweenPos(4, x4-50, y4, 0.2, done)
	end
	if curStep == 603 then 
		tweenPos(4, x4, y4, 0.2, done)
		tweenPos(7, x7 + 50, y7, 0.2, done)
	end 
	if curStep == 608 then 
		resetNotes()
	end 
	if curStep == 619 then 
		tweenAngle(4, 180, 0.25, done)
		tweenAngle(7, 180, 0.25, done)	
		tweenAngle(5, 180, 0.25, done)
		tweenAngle(6, 180, 0.25, done)
	end 
	if curStep == 629 then 
		tweenAngle(4, 90, 0.25, done)
		tweenAngle(7, 90, 0.25, done)	
		tweenAngle(5, 90, 0.25, done)
		tweenAngle(6, 90, 0.25, done)
	end 
	if curStep == 640 then 
		resetNotes()
	end
	if curStep == 831 then 
		tweenPos(5, x5, y5+400, 5, done)
		tweenPos(6, x6, y6+400, 5, done)
		tweenPos(7, x7, y7+400, 5, done)
		tweenPos(4, x4, y4+400, 5, done)
	end
	if curStep == 863 then 
		tweenPos(5, x5, y5, 5, done)
		tweenPos(6, x6, y6, 5, done)
		tweenPos(7, x7, y7, 5, done)
		tweenPos(4, x4, y4, 5, done)	
	end
	if curStep == 960 then 
		shakenote = true
		shakenote = true
	end
	if curStep == 1024 then 
		shakenote = false
		resetNotes()
		funkysway = true 
		funkysway = true 
	end
	if curStep == 383 or curStep == 767 then 
		wackybop = true
		wackybop = true
	end 
	if curStep == 511 or curStep == 1023 then 
		wackybop = false 
	end
end

function keyPressed (key)
end
