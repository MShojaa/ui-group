#pragma once

#include <filesystem>
#include <string>

#include "type_definitions.h"

namespace msh::ui {

struct Font {
    std::string family = "arial";
    std::filesystem::path src = "";
    uint32_t size;
};

}  // namespace msh::ui