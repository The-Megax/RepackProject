--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Mugglefin_OnCombat(Unit, Event)
Unit:RegisterEvent("Mugglefin_VolatileInfection", 12000, 0)
end

function Mugglefin_VolatileInfection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3584, pUnit:GetMainTank()) 
end

function Mugglefin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Mugglefin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Mugglefin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10643, 1, "Mugglefin_OnCombat")
RegisterUnitEvent(10643, 2, "Mugglefin_OnLeaveCombat")
RegisterUnitEvent(10643, 3, "Mugglefin_OnKilledTarget")
RegisterUnitEvent(10643, 4, "Mugglefin_OnDied")