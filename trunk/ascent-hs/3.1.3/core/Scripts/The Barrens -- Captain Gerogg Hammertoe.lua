--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CaptainGeroggHammertoe_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainGeroggHammertoe_ShieldBash", 10000, 0)
end

function CaptainGeroggHammertoe_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1672, pUnit:GetMainTank()) 
end

function CaptainGeroggHammertoe_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainGeroggHammertoe_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainGeroggHammertoe_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5851, 1, "CaptainGeroggHammertoe_OnCombat")
RegisterUnitEvent(5851, 2, "CaptainGeroggHammertoe_OnLeaveCombat")
RegisterUnitEvent(5851, 3, "CaptainGeroggHammertoe_OnKilledTarget")
RegisterUnitEvent(5851, 4, "CaptainGeroggHammertoe_OnDied")