FROM lasote/conangcc54

RUN sudo pip install conan_package_tools conan --upgrade                                \
 && conan remote add bincrafters https://api.bintray.com/conan/bincrafters/public-conan \
 && conan remote add is https://api.bintray.com/conan/labviros/is                       \
 && wget https://cmake.org/files/v3.11/cmake-3.11.1-Linux-x86_64.sh                     \
 && sudo mkdir -p /opt/cmake                                                            \
 && sudo sh cmake-3.11.1-Linux-x86_64.sh --skip-license --prefix=/opt/cmake             \
 && sudo ln -s /opt/cmake/bin/cmake /usr/local/bin/cmake                                \
 && rm cmake-3.11.1-Linux-x86_64.sh