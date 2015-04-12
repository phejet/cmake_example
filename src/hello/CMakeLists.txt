ADD_LIBRARY(Hello 
  speaker.hpp
  speaker.cpp)

INSTALL(TARGETS Hello DESTINATION bin)
INSTALL(FILES speaker.hpp DESTINATION include)
