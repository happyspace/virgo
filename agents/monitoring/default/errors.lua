--[[
Copyright 2012 Rackspace

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS-IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--]]
local Error = require('core').Error

--[[ HttpResponseError --]]
local HttpResponseError = Error:extend()
function HttpResponseError:initialize(statusCode, method, path, data)
  Error.initialize(self)
  self.statusCode = statusCode
  self.method = method
  self.path = path
  self.data = data
end

--[[ UserResponseError --]]
local UserResponseError = Error:extend()
function UserResponseError:initialize(message)
  Error.initialize(self)
  self.message = message
end

--[[ AuthTimeoutError --]]
local AuthTimeoutError = Error:extend()
function AuthTimeoutError:initialize(message)
  Error.initialize(self)
  self.message = message
end

--[[ Exports ]]--

local exports = {}
exports.HttpResponseError = HttpResponseError
exports.UserResponseError = UserResponseError
exports.AuthTimeoutError = AuthTimeoutError
return exports