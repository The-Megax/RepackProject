--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, February 26, 2009. ]]

function Flayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Flayer_Skin",5000,0)
end

function Flayer_Skin(pUnit,Event)
    pUnit:CastSpell(36576)
end   

function Flayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Flayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20210, 1, "Flayer_OnEnterCombat")
RegisterUnitEvent (20210, 2, "Flayer_OnLeaveCombat")
RegisterUnitEvent (20210, 4, "Flayer_OnDied")