
# Xcode

echo "Xcode"
rm -rf ~/Library/Caches/com.apple.dt.Xcode/
rm -rf ~/Library/Developer/Xcode/DerivedData/
xcrun --kill-cache
rm -rf ~/Library/Developer/Xcode/iOS\ DeviceSupport/*/Symbols/System/Library/Caches 
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang/ModuleCache"
rm -rf "$(getconf DARWIN_USER_CACHE_DIR)/org.llvm.clang.$(whoami)/ModuleCache"
rm -rf ~/Library/Caches/SwiftLint
pod cache clean --all
rm -rf ~/Library/Caches/org.carthage.CarthageKit
rm -rf ~/Library/Caches/carthage

# Android

# Homebrew

echo "Homebrew"
rm -rf $(brew --cache)


# Docker
# https://gist.github.com/bastman/5b57ddb3c11942094f8d0a97d461b430

docker rmi $(docker images --filter "dangling=true" -q --no-trunc)
docker rm $(docker ps -qa --no-trunc --filter "status=exited")
docker rmi $(docker images | grep "none" | awk '/ / { print $3 }')
