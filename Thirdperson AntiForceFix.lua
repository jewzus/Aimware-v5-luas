local enable = gui.Checkbox(gui.Reference("VISUALS", "LOCAL", "HELPER"), 'pf_deadtp','Thirdperson while dead', false)

callbacks.Register("Draw", function()
    if enable:GetValue() then
	
	local me = entities.GetLocalPlayer();
	if not me then return
	end;

	if not me:IsAlive() then
		if me:GetPropEntity('m_iObserverMode') == 4 then
		me:SetProp('m_iObserverMode', 5)
       end
end
end	end);
