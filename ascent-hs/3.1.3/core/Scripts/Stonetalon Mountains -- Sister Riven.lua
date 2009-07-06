--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SisterRiven_OnCombat(Unit, Event)
Unit:RegisterEvent("SisterRiven_FireShieldII", 1000, 1)
Unit:RegisterEvent("SisterRiven_FlameLash", 4000, 1)
Unit:RegisterEvent("SisterRiven_FlameSpike", 6000, 1)
end

function SisterRiven_FireShieldII(pUnit, Event) 
pUnit:CastSpell(184) 
end

function SisterRiven_FlameLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3356, pUnit:GetMainTank()) 
end

function SisterRiven_FlameSpike(pUnit, Event) 
pUnit:CastSpell(6725) 
end

function SisterRiven_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SisterRiven_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SisterRiven_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5930, 1, "SisterRiven_OnCombat")
RegisterUnitEvent(5930, 2, "SisterRiven_OnLeaveCombat")
RegisterUnitEvent(5930, 3, "SisterRiven_OnKilledTarget")
RegisterUnitEvent(5930, 4, "SisterRiven_OnDied")