#pragma once

#include "Color.h"
#include "Side.h"

namespace msh::ui {

struct Border {
    uint32_t width = 0;
    uint32_t opacity = 100;
    Color color;
    Side side;
};

}  // namespace msh::ui