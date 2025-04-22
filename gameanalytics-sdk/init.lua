local RunService = game:GetService("RunService")

--[[
	This script determines if we should load gameanalytics server or client.
]]

local module = {}

function module.server()
	assert(RunService:IsServer(), "GameAnalytics server module can only be loaded on the server")
	return require(script.GameAnalytics)
end

function module.client()
	assert(RunService:IsClient(), "GameAnalytics client module can only be loaded on the client")
	return require(script.GameAnalyticsClient)
end

return module
