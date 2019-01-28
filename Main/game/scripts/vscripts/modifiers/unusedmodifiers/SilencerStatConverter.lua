require('settings')
if SilencerStatConverter == nil then
	SilencerStatConverter = class({})
end

local heroesmodifiers = {
  {"npc_dota_hero_silencer", "modifier_silencer_int_steal", 1},
}


function SilencerStatConverter:GetAttributes() 
    return MODIFIER_ATTRIBUTE_PERMANENT + MODIFIER_ATTRIBUTE_IGNORE_INVULNERABLE
end

function SilencerStatConverter:DeclareFunctions() --we want to use these functions in this item
    local funcs = {
        MODIFIER_PROPERTY_STATS_AGILITY_BONUS,
        MODIFIER_PROPERTY_STATS_STRENGTH_BONUS,
        MODIFIER_PROPERTY_STATS_INTELLECT_BONUS,
        MODIFIER_EVENT_ON_DEATH,
    }

    return funcs
end

function SilencerStatConverter:OnCreated(kv) 
	local owner = self:GetParent()
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	self.basestrength = 0
	self.baseagility = 0
	self.baseintellect = 0
	if (IsServer()) then
		local counter = 1
		for key, value in ipairs(heroesmodifiers) do
			if value[1] == self:GetParent():GetName() then
				self.hero = counter
				Msg("modified hero in game\n")
				self.basestrength = self:GetParent():GetBaseStrength()
				self.baseagility = self:GetParent():GetBaseAgility()
				self.baseintellect = self:GetParent():GetBaseIntellect()
				self:StartIntervalThink(0.1)
				return
			end
		end
	end
end

function SilencerStatConverter:OnIntervalThink( kv )
	self.strength = 0
	self.agility = 0
	self.intellect = 0
	if (IsServer()) then
		if self.hero ~= nil then
			if self:GetParent():HasModifier(heroesmodifiers[self.hero][2]) then
				local abilitymod = heroesmodifiers[self.hero][2]
				local abilitymodstacks = heroesmodifiers[self.hero][3]
				if abilitymod == "modifier_silencer_int_steal" then
					self:HandleSilencerIntSteal(abilitymod, abilitymodstacks)
				end
			end
		end
	end
end

function SilencerStatConverter:HandleSilencerIntSteal(mod, stacks)
	if self:GetParent():GetModifierStackCount(mod,self:GetParent()) ~= stacks then
		self:GetParent():SetBaseStrength( self.basestrength + (self:GetParent():GetStrengthGain()*(self:GetParent():GetLevel())) + self:GetParent():GetModifierStackCount(mod,self:GetParent()) )
		self:GetParent():SetBaseIntellect( self.baseintellect + (self:GetParent():GetIntellectGain()*(self:GetParent():GetLevel())))
		stacks = self:GetParent():GetModifierStackCount(mod,self:GetParent())
	end
end

function SilencerStatConverter:OnDeath(kv)
	if kv.unit == self:GetParent() then
		for i = 0, 8, 1 do
			if PlayerResource:GetPlayer(i) ~= nil then
				if PlayerResource:GetPlayer(i):GetAssignedHero():HasModifier("modifier_silencer_int_steal") then
					if self:GetParent():GetBaseIntellect() < self.baseintellect+(self:GetParent():GetIntellectGain()*(self:GetParent():GetLevel())) then
						self:HandleSilencerIntStealOther(PlayerResource:GetPlayer(i):GetAssignedHero())
						break
					end
				end
			end
		end
	end
end

function SilencerStatConverter:HandleSilencerIntStealOther(silencer)
		Msg("Had reduced base int due to silencers int steal: fixing by moving deduced value to strength.\n")
		for i = 0,18,1 do
			if silencer:GetAbilityByIndex(i) ~= nil then
				if silencer:GetAbilityByIndex(i):GetAbilityName() == "special_bonus_unique_silencer_2" then
					if silencer:GetAbilityByIndex(i):IsTrained() then
						--this runs if silencer has his int steal talent
						self:GetParent():SetBaseIntellect(self:GetParent():GetBaseIntellect()+4)
						self:GetParent():SetBaseStrength(self:GetParent():GetBaseStrength()-4)
						return
					end
				end
			end
		end
		--this is done if silencer exists but does not have his double int steal talent
		self:GetParent():SetBaseIntellect(self:GetParent():GetBaseIntellect()+2)
		self:GetParent():SetBaseStrength(self:GetParent():GetBaseStrength()-2)
end

function SilencerStatConverter:OnAttackLanded(kv)
	if kv.attacker == self:GetParent() then
		
	end
end

function SilencerStatConverter:OnAbilityStart(kv)
	
end

function SilencerStatConverter:GetModifierBonusStats_Agility()
		return self.agility
end

function SilencerStatConverter:GetModifierBonusStats_Strength()
		return self.strength
end

function SilencerStatConverter:GetModifierBonusStats_Intellect()
		return self.intellect
end

function SilencerStatConverter:IsHidden()
    return true
end

function SilencerStatConverter:IsPermanent() 
	return true
end

function SilencerStatConverter:IsPurgable()
	return false
end