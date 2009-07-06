--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SisterHatelash_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterHatelash_LightningBarrier", 1000, 1)
Unit:RegisterEvent("SisterHatelash_LightningBolt", 8000, 0)
end

function SisterHatelash_LightningBarrier(pUnit, Event) 
pUnit:CastSpell(6960) 
end

function SisterHatelash_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetClosestPlayer()) 
end

function SisterHatelash_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterHatelash_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterHatelash_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5785, 1, "SisterHatelash_OnCombat")
RegisterUnitEvent(5785, 2, "SisterHatelash_OnLeaveCombat")
RegisterUnitEvent(5785, 3, "SisterHatelash_OnKilledTarget")
RegisterUnitEvent(5785, 4, "SisterHatelash_OnDied")