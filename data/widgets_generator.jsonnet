local Property(name, value) = {
  name: name,
  value: value,
};

local Widget(id, properties=null) =
  if properties == null then {
    id: id,
  } else if std.type(properties) == 'array' then {
    id: id,
    properties: properties,
  } else {
    id: id,
    properties: [properties],
  }
;

// ----------> JSON <----------

{
  version: 1.0,
  widgets: [
    Widget('button', [Property('clickable', true), Property('label:text', 'click me!')]),
    Widget('label', Property('text', 'Hello World')),
    Widget('id'),
  ],
}
