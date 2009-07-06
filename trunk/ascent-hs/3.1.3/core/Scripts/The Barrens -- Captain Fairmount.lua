--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function CaptainFairmount_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainFairmount_BattleShout", 1000, 1)
Unit:RegisterEvent("CaptainFairmount_FrighteningShout", 12000, 0)
Unit:RegisterEvent("CaptainFairmount_Pummel", 8000, 0)
end

function CaptainFairmount_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function CaptainFairmount_FrighteningShout(pUnit, Event) 
pUnit:FullCastSpellOnTarget(19134, pUnit:GetMainTank()) 
end

function CaptainFairmount_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function CaptainFairmount_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainFairmount_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainFairmount_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3393, 1, "CaptainFairmount_OnCombat")
RegisterUnitEvent(3393, 2, "CaptainFairmount_OnLeaveCombat")
RegisterUnitEvent(3393, 3, "CaptainFairmount_OnKilledTarget")
RegisterUnitEvent(3393, 4, "CaptainFairmount_OnDied")