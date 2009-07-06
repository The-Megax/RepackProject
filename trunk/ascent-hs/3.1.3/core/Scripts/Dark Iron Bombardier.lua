--[[ AscendScripting Script - 
This software is provided as free and open source by the
staff of The AscendScripting Team.This script was
written and is protected by the GPL v2. The following
script was released by a AscendScripting Staff Member.
Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- AscendScripting Staff, May 08, 2009. ]]

function Dark.Iron.Bombardier_OnEnterCombat(Unit,Event)
local HP = Unit:GetHealthPct()
local plr = Unit:GetMainTank()
local PX,PY,PZ = plr:GetX(),plr:GetY(),plr:GetZ()
 if (HP <= 21) then
	Unit:CastSpellAoF(PX,PY,PZ,8858)
end
end

RegisterUnitEvent(4062, 1, "Dark.Iron.Bombardier_OnEnterCombat")