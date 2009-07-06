--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function SilithidInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidInvader_PierceArmor", 10000, 0)
end

function SilithidInvader_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function SilithidInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4131, 1, "SilithidInvader_OnCombat")
RegisterUnitEvent(4131, 2, "SilithidInvader_OnLeaveCombat")
RegisterUnitEvent(4131, 3, "SilithidInvader_OnKilledTarget")
RegisterUnitEvent(4131, 4, "SilithidInvader_OnDied")