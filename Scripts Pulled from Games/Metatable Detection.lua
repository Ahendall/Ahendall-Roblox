--[[
Detects the Metatable that all exploits (used to) call.
Doesn't work on most executors anymore.
Can still detect scripts that change the metatable (Such as CMD-X during the time of creation (6/20/2021)).
go to this link for more info https://discord.com/channels/806541383363330069/817085696468582432/855934334048272434
]]--

-- Decompiled with the Synapse X Luau decompiler.
local l__LocalPlayer__1 = game.Players.LocalPlayer;
local l__workspace__1 = workspace;
local l__debug_info__2 = debug.info;
local l__xpcall__3 = xpcall;
local l__pcall__4 = pcall;
local l__game__5 = game;
local u6 = nil;
local u7 = nil;
xpcall(function()
    l__workspace__1[{}]();
    l__workspace__1.a();
    l__workspace__1.b();
    l__workspace__1.c();
end, function()
    for v2 = 1, 5 do
        if l__debug_info__2(v2, "s") == "[C]" then
            local v3 = l__debug_info__2(v2, "f");
            if v3 ~= l__xpcall__3 then
                local v4, v5 = l__pcall__4(v3, l__game__5, "ReplicatedFirst");
                if v4 then
                    u6 = v3;
                    u7 = v2;
                    return;
                end;
            end;
        end;
    end;
end);
if u6 and u7 then
    while wait(1) do
        l__xpcall__3(function()
            l__workspace__1[{}]();
            l__workspace__1.a();
            l__workspace__1.b();
            l__workspace__1.c();
        end, function()
            if not u6 or not u7 then
                l__LocalPlayer__1:Kick("Oof, Your exploit is detected, contact your exploit's developer about this and reference bit.ly/RobloxPatch1");
                return;
            end;
            for v6 = 1, 5 do
                if l__debug_info__2(v6, "s") == "[C]" then
                    local v7 = l__debug_info__2(v6, "f");
                    if v7 ~= l__xpcall__3 then
                        local v8, v9 = l__pcall__4(v7, l__game__5, "ReplicatedFirst");
                        if v8 and v7 == u6 then
                            return;
                        end;
                    end;
                end;
            end;
            l__LocalPlayer__1:Kick("Oof, Your exploit is detected, contact your exploit's developer about this and reference bit.ly/RobloxPatch1");
        end);    
    end;
else
    l__LocalPlayer__1:Kick("Oof, Your exploit is detected, contact your exploit's developer about this and reference bit.ly/RobloxPatch1");
end;
