// ----------> Prims <----------

local Align(align='top-left', top=0, left=0) = {
  align: align,
  top: top,
  left: left,
};
local Size(width=0, height=0) = {
  width: width,
  height: height,
};
local Padding(top=0, left=0, right=0, bottom=0) = {
  top: top,
  left: left,
  right: right,
  bottom: bottom,
};
local Color(r=0, g=0, b=0) = {
  r: r,
  g: g,
  b: b,
};
local BorderSide(top=false, left=false, right=false, bottom=false) = {
  top: top,
  left: left,
  right: right,
  bottom: bottom,
};
local Border(width=0, opacity=100, color=Color(), side=BorderSide()) = {
  width: width,
  opacity: opacity,
  color: color,
  side: side,
};
local Font(family='arial', src='', size=8) = {
  family: family,
  src: src,
  size: size,
};
local TextStyle(font=Font(), color=Color(), opacity=100, dir='ltr', align='center') = {
  font: font,
  color: color,
  opacity: opacity,
  dir: dir,
  align: align,
};

// ----------> DTO <----------

local Widget(id,
             type,
             align=Align(),
             size=Size(),
             padding=Padding(),
             border=Border(),
             radius=0,
             opacity=100,
             clickable=false,
             scrollable=false,
             children=null) =
  if children == null then {
    id: id,
    type: type,
    align: align,
    size: size,
    padding: padding,
    border: border,
    radius: radius,
    opacity: opacity,
    clickable: clickable,
    scrollable: scrollable,
  } else {
    id: id,
    type: type,
    align: align,
    size: size,
    padding: padding,
    border: border,
    radius: radius,
    opacity: opacity,
    clickable: clickable,
    scrollable: scrollable,
    children: children,
  }
;
local Button(widget=Widget('button_1', 'button')) = widget;
local MediaBox(widget=Widget('mediabox_1', 'mediabox'), src='') = widget { src: src };
local Image(widget=MediaBox(Widget('image_1', 'image'))) = widget;
local Gif(widget=MediaBox(Widget('gif_1', 'gif'))) = widget;
local Table(widget=Widget('table_1', 'table'), content=null) =
  if content == null then
    widget
  else
    widget { content: content }
;
local Label(widget=Widget('label_1', 'label'), text_style=TextStyle()) = widget {
  text_style: text_style,
};


// ----------> JSON <----------

{
  version: 1.0,
  type: 'stylesheet',
  widgets: [
    Widget('id', 'widget'),
    Image(),
  ],
}
