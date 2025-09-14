
default:
  nix develop . --command bash -c "cmake -S . -B build && cmake --build build"
