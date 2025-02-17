# Include the FetchContent module
include(FetchContent)

if(NOT DEFINED ENV{MSH_ROOT_PATH})
    # The environment variable does not exist
    message(FATAL_ERROR ">>>> Environment variable MSH_ROOT_PATH is not defined.")
endif()

# Add a function to handle dependencies
function(add_dependency repo_name repo_url repo_tag local_path)
    # Check if the library exists locally
    if(FETCHCONTENT_FULLY_DISCONNECTED)
        if(local_path STREQUAL "")
            set(local_path "$ENV{MSH_ROOT_PATH}/external/${repo_name}")
        endif()
        if(EXISTS "${local_path}")
            # Specify the local directory as the source for FetchContent
            message(STATUS ">>> Found offline repository for ${repo_name} at ${local_path}")
            # Set the source directory for FetchContent
            set(${repo_name}_SOURCE_DIR "$ENV{MSH_ROOT_PATH}/external/${repo_name}" CACHE STRING "" FORCE)
        else()
            message(FATAL_ERROR ">>>> Offline repository for ${repo_name} not found. Double check the repository path: $ENV{MSH_ROOT_PATH}/external/${repo_name} or make the FETCHCONTENT_FULLY_DISCONNECTED flag OFF.")
        endif()
    endif()

    # FetchContent declaration for the dependency
    fetchcontent_declare(
        ${repo_name}
        SOURCE_DIR ${${repo_name}_SOURCE_DIR}
        GIT_REPOSITORY ${repo_url}
        GIT_TAG ${repo_tag} # Specify the version/tag you want to use
    )

    fetchcontent_makeavailable(${repo_name})
endfunction()

# Add the dependency
add_dependency(Catch2 https://github.com/catchorg/Catch2.git v3.7.1 "")