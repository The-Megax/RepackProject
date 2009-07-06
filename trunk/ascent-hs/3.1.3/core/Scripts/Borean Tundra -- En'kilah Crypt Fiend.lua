--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]


function EnkilahCryptFiend_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahCryptFiend_CryptScarabs", 6000, 1)
end

function EnkilahCryptFiend_CryptScarabs(pUnit, Event) 
pUnit:CastSpell(31600) 
end

function EnkilahCryptFiend_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahCryptFiend_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahCryptFiend_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25386, 1, "EnkilahCryptFiend_OnCombat")
RegisterUnitEvent(25386, 2, "EnkilahCryptFiend_OnLeaveCombat")
RegisterUnitEvent(25386, 3, "EnkilahCryptFiend_OnKilledTarget")
RegisterUnitEvent(25386, 4, "EnkilahCryptFiend_OnDied")