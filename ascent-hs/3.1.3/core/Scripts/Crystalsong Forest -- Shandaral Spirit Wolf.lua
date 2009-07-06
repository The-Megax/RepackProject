--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function ShandaralSpiritWolf_OnCombat(Unit, Event)
Unit:RegisterEvent("ShandaralSpiritWolf_TendonRip", 8000, 0)
end

function ShandaralSpiritWolf_TendonRip(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3604, pUnit:GetMainTank()) 
end

function ShandaralSpiritWolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ShandaralSpiritWolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ShandaralSpiritWolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31123, 1, "ShandaralSpiritWolf_OnCombat")
RegisterUnitEvent(31123, 2, "ShandaralSpiritWolf_OnLeaveCombat")
RegisterUnitEvent(31123, 3, "ShandaralSpiritWolf_OnKilledTarget")
RegisterUnitEvent(31123, 4, "ShandaralSpiritWolf_OnDied")