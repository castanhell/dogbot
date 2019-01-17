RuleEngine = {}

function RuleEngine.build_rule(tag_name, fields)
  print(tag_name .. " and " .. fields.name)
end

function RuleEngine.parseRule(fn)
  setfenv(fn, setmetatable({}, {
    __index = function(self, tag_name)
      return function(fields)
        return RuleEngine.build_rule(tag_name, fields)
      end
    end
  }))
  fn()
end

function RuleEngine.init()
end
