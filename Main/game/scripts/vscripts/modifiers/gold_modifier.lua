--require('settings')

if gold_modifier == nil then
	gold_modifier = class({})
end

function gold_modifier:GetAttributes() 
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function gold_modifier:OnCreated(kv)
	if ALTERNATIVE_GPM_GENERATOR then
		if IsServer() then
			self:StartIntervalThink( GOLD_TICK_TIME )
		end
	end
end

function gold_modifier:IsHidden()
    return true
end

function gold_modifier:IsPermanent() 
	return true
end

function gold_modifier:IsPurgable()
	return false
end

function gold_modifier:OnIntervalThink()
	if IsServer() then
		if GameRules:GetDOTATime(false, false) > 0 then
			self:GetCaster():ModifyGold(GOLD_PER_TICK, true, 10)
		end
	end
end