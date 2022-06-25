set(LIB_SRC
  parameters.f90
  initialization.f90
  add.f90
)

add_library(lifegame ${LIB_SRC})

add_executable(${PROJECT_NAME}
  main.f90
)

target_link_libraries(${PROJECT_NAME}
  lifegame
)
