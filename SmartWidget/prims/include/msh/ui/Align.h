#pragma once

#include "type_definitions.h"

namespace msh::ui {

struct Align {
    enum class Type { DEFAULT, TOP_LEFT };

    Type align = Type::TOP_LEFT;
    uint32_t top = 0;
    uint32_t left = 0;
};

}  // namespace msh::ui