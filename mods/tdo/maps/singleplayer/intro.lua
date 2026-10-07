WorldLoaded = function()

	-- Media.PlayMovieFullscreen("intro2.vqa")

	Media.SetBackgroundMusic()

	Media.PlayMovieInRadar("logo.vqa")
	Media.DisplayMessage("this is a test, If you see this message, inform the developer of the mod")
	

	Trigger.AfterDelay(DateTime.Seconds(28), function()
		Media.SetBackgroundMusic("map1")
	end)

end

-- oh man this is what i call "cool idea"