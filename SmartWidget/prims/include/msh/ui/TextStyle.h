#pragma once

#include "Color.h"
#include "Font.h"

namespace msh::ui {

struct TextStyle {
    enum class DirType { LTR, RTL, CENTER };
    enum class AlignType { DEFAULT, CENTER };

    Font font;
    Color color;
    uint32_t opacity = 100;
    DirType dir = DirType::LTR;
    AlignType align = AlignType::DEFAULT;
};

}  // namespace msh::ui