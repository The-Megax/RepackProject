--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ForceCommanderSteeljaw_OnCombat(Unit, Event)
Unit:RegisterEvent("ForceCommanderSteeljaw_Cleave", 6000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_PiercingHowl", 10000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_SteelJaw", 12000, 0)
Unit:RegisterEvent("ForceCommanderSteeljaw_Whirlwind", 8000, 0)
end

function ForceCommanderSteeljaw_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function ForceCommanderSteeljaw_PiercingHowl(pUnit, Event) 
pUnit:CastSpell(38256) 
end

function ForceCommanderSteeljaw_SteelJaw(pUnit, Event) 
pUnit:CastSpell(50204) 
end

function ForceCommanderSteeljaw_Whirlwind(pUnit, Event) 
pUnit:CastSpell(41057) 
end

function ForceCommanderSteeljaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForceCommanderSteeljaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForceCommanderSteeljaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25359, 1, "ForceCommanderSteeljaw_OnCombat")
RegisterUnitEvent(25359, 2, "ForceCommanderSteeljaw_OnLeaveCombat")
RegisterUnitEvent(25359, 3, "ForceCommanderSteeljaw_OnKilledTarget")
RegisterUnitEvent(25359, 4, "ForceCommanderSteeljaw_OnDied")