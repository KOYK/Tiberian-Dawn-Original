--	Script quickly fixed by abcdefg30!! Thank you dude! you are awesome as always!

RepeatGDI1 = function()
    LST_GDI.UnloadPassengers()
    LST_GDI.Wait(250)
    LST_GDI.Move(LEFT_TOP.Location, 0)
    LST_GDI.CallFunc(function()
        RepeatGDI2()
    end)
end

RepeatGDI2 = function()
    LST_GDI.UnloadPassengers()
		if not LST_GDI.HasPassengers then
			LST_GDI.Wait(250)
				LST_GDI.CallFunc(function()
				RepeatGDI1()
				end)
		else
			LST_GDI.Move(LEFT_BOT.Location, 0)
			LST_GDI.CallFunc(function()
			RepeatGDI1()
			end)
	end
end

--	copy pasted code from above for the nod transport
RepeatNOD = function()
	LST_NOD.Move(RIGHT_TOP.Location, 0)
	LST_NOD.Wait(250)
	LST_NOD.UnloadPassengers()
	LST_NOD.Wait(250)
	LST_NOD.Move(RIGHT_BOT.Location, 0)
	LST_NOD.UnloadPassengers()
	LST_NOD.CallFunc(function()
		RepeatNOD()
	end)
end

WorldLoaded = function()
	Trigger.AfterDelay(DateTime.Seconds(10), function()
		RepeatGDI1()
		RepeatNOD()
	end)
end