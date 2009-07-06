--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CaptainFlatTusk_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFlatTusk_HeroicStrike", 5000, 0)
end

function CaptainFlatTusk_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25710, pUnit:GetMainTank()) 
end

function CaptainFlatTusk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFlatTusk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFlatTusk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5824, 1, "CaptainFlatTusk_OnCombat")
RegisterUnitEvent(5824, 2, "CaptainFlatTusk_OnLeaveCombat")
RegisterUnitEvent(5824, 3, "CaptainFlatTusk_OnKilledTarget")
RegisterUnitEvent(5824, 4, "CaptainFlatTusk_OnDied")