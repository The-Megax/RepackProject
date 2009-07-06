--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function Threggil_OnCombat(Unit, Event)
Unit:RegisterEvent("Threggil_Strike", 6000, 0)
end

function Threggil_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function Threggil_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Threggil_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Threggil_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14432, 1, "Threggil_OnCombat")
RegisterUnitEvent(14432, 2, "Threggil_OnLeaveCombat")
RegisterUnitEvent(14432, 3, "Threggil_OnKilledTarget")
RegisterUnitEvent(14432, 4, "Threggil_OnDied")