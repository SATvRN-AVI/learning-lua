function timerSetup()
    textutils.slowPrint("Please enter timer length: ")
    timerlength=io.read()
end

timerSetup()


setTimer = os.startTimer(timerlength)

local event = os.pullEvent()
if event = "timer" then
    textutils.slowPrint("Ring ring!")
end
--[[ alert = os.pullEvent("timer")

os.pull
if alert == true then
    textutils.slowPrint("The timer went off!")
end
]]