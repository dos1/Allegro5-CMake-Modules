# Try to find allegro 5
#
#  ALLEGRO5_AUDIO_FOUND - system has allegro5
#  ALLEGRO5_AUDIO_INCLUDE_DIR - the allrgo5 include directory
#  ALLEGRO5_AUDIO_LIBRARIES - Link these to use allegro5
#

FIND_PATH(ALLEGRO5_AUDIO_INCLUDE_DIR allegro5/allegro_audio.h)

SET(ALLEGRO5_AUDIO_NAMES ${ALLEGRO5_AUDIO_NAMES} allegro_audio allegro_audio_static liballegro_audio liballegro_audio_static AllegroAudio-5.2 allegro_audio-debug)
FIND_LIBRARY(ALLEGRO5_AUDIO_LIBRARY NAMES ${ALLEGRO5_AUDIO_NAMES} )

# handle the QUIETLY and REQUIRED arguments and set ALLEGRO5_AUDIO_FOUND to TRUE if
# all listed variables are TRUE
INCLUDE(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(ALLEGRO5_AUDIO DEFAULT_MSG ALLEGRO5_AUDIO_LIBRARY ALLEGRO5_AUDIO_INCLUDE_DIR)

IF(ALLEGRO5_AUDIO_FOUND)
  SET(ALLEGRO5_AUDIO_LIBRARIES ${ALLEGRO5_AUDIO_LIBRARY})
  SET(ALLEGRO5_LIBS ${ALLEGRO5_LIBS} ${ALLEGRO5_AUDIO_LIBRARIES})
ENDIF(ALLEGRO5_AUDIO_FOUND)

MARK_AS_ADVANCED(ALLEGRO5_AUDIO_LIBRARY ALLEGRO5_AUDIO_INCLUDE_DIR )
