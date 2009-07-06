--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function RavagerSpecimen_OnCombat(Unit, Event)
Unit:RegisterEvent("RavagerSpecimen_Rend", 8000, 0)
end

function RavagerSpecimen_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function RavagerSpecimen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavagerSpecimen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavagerSpecimen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17199, 1, "RavagerSpecimen_OnCombat")
RegisterUnitEvent(17199, 2, "RavagerSpecimen_OnLeaveCombat")
RegisterUnitEvent(17199, 3, "RavagerSpecimen_OnKilledTarget")
RegisterUnitEvent(17199, 4, "RavagerSpecimen_OnDied")