FROM debian:sid
RUN apt-get update -qq && apt-get install -qqy g++-7 cmake
RUN update-alternatives --install /usr/bin/c++ c++ /usr/bin/g++-7 90 && \
    update-alternatives --install /usr/bin/g++ g++ /usr/bin/g++-7 90
CMD ["/bin/bash"]
