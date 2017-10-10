
    # Clean
    IOS_FRAMEWORK_DIR="${PROJECTDIR}/sundar"

    # rm -rf "${IOS_FRAMEWORK_BUILDDIR}"
    mkdir -p "${IOS_FRAMEWORK_BUILDDIR}"

    if [ -d "${SRCROOT}/build" ]; then
        rm -rf "${SRCROOT}/build"
    fi

    # Build
    cd "${PROJECTDIR}"
    FRAMEWORK_CONFIG="Release"
    PROJECT_NAME="swift"

    xcodebuild -workspace "${IOS_FRAMEWORK_WORKSPACE_NAME}" -scheme "${IOS_FRAMEWORK_SCHEME_NAME}" -configuration "${FRAMEWORK_CONFIG}" -arch i386   only_active_arch=no defines_module=yes -sdk "iphonesimulator"  BUILD_DIR="${IOS_FRAMEWORK_BUILDDIR}/32bit"
