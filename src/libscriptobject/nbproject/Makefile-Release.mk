#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=GNU-Linux-x86
CND_DLIB_EXT=so
CND_CONF=Release
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/md5.o \
	${OBJECTDIR}/script_array.o \
	${OBJECTDIR}/script_array_factory.o \
	${OBJECTDIR}/script_array_vector_source.o \
	${OBJECTDIR}/script_item_ptr.o \
	${OBJECTDIR}/script_object.o \
	${OBJECTDIR}/script_object_definition.o \
	${OBJECTDIR}/script_object_factory.o \
	${OBJECTDIR}/script_object_hash.o \
	${OBJECTDIR}/script_object_keys.o \
	${OBJECTDIR}/script_object_keys_cache.o \
	${OBJECTDIR}/script_object_keys_factory.o \
	${OBJECTDIR}/script_object_vector_source.o

# Test Directory
TESTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}/tests

# Test Files
TESTFILES= \
	${TESTDIR}/TestFiles/f5 \
	${TESTDIR}/TestFiles/f2 \
	${TESTDIR}/TestFiles/f1 \
	${TESTDIR}/TestFiles/f6 \
	${TESTDIR}/TestFiles/f4 \
	${TESTDIR}/TestFiles/f3

# C Compiler Flags
CFLAGS=

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a

${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a: ${OBJECTFILES}
	${MKDIR} -p ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a
	${AR} -rv ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a ${OBJECTFILES} 
	$(RANLIB) ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a

${OBJECTDIR}/md5.o: md5.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/md5.o md5.cpp

${OBJECTDIR}/script_array.o: script_array.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array.o script_array.cpp

${OBJECTDIR}/script_array_factory.o: script_array_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array_factory.o script_array_factory.cpp

${OBJECTDIR}/script_array_vector_source.o: script_array_vector_source.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array_vector_source.o script_array_vector_source.cpp

${OBJECTDIR}/script_item_ptr.o: script_item_ptr.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_item_ptr.o script_item_ptr.cpp

${OBJECTDIR}/script_object.o: script_object.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object.o script_object.cpp

${OBJECTDIR}/script_object_definition.o: script_object_definition.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_definition.o script_object_definition.cpp

${OBJECTDIR}/script_object_factory.o: script_object_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_factory.o script_object_factory.cpp

${OBJECTDIR}/script_object_hash.o: script_object_hash.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_hash.o script_object_hash.cpp

${OBJECTDIR}/script_object_keys.o: script_object_keys.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys.o script_object_keys.cpp

${OBJECTDIR}/script_object_keys_cache.o: script_object_keys_cache.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys_cache.o script_object_keys_cache.cpp

${OBJECTDIR}/script_object_keys_factory.o: script_object_keys_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys_factory.o script_object_keys_factory.cpp

${OBJECTDIR}/script_object_vector_source.o: script_object_vector_source.cpp 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -std=c++11 -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_vector_source.o script_object_vector_source.cpp

# Subprojects
.build-subprojects:

# Build Test Targets
.build-tests-conf: .build-conf ${TESTFILES}
${TESTDIR}/TestFiles/f5: ${TESTDIR}/tests/exception_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f5 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f2: ${TESTDIR}/tests/object_defn_hash_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f2 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f1: ${TESTDIR}/tests/object_keys_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f1 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f6: ${TESTDIR}/tests/script_object_ptr_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f6 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f4: ${TESTDIR}/tests/simple_array_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f4 $^ ${LDLIBSOPTIONS} 

${TESTDIR}/TestFiles/f3: ${TESTDIR}/tests/simple_object_tests.o ${OBJECTFILES:%.o=%_nomain.o}
	${MKDIR} -p ${TESTDIR}/TestFiles
	${LINK.cc} ../../externals/installed/lib/libgtest_main.a ../../externals/installed/lib/libgtest.a  -o ${TESTDIR}/TestFiles/f3 $^ ${LDLIBSOPTIONS} 


${TESTDIR}/tests/exception_tests.o: tests/exception_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/exception_tests.o tests/exception_tests.cpp


${TESTDIR}/tests/object_defn_hash_tests.o: tests/object_defn_hash_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/object_defn_hash_tests.o tests/object_defn_hash_tests.cpp


${TESTDIR}/tests/object_keys_tests.o: tests/object_keys_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/object_keys_tests.o tests/object_keys_tests.cpp


${TESTDIR}/tests/script_object_ptr_tests.o: tests/script_object_ptr_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/script_object_ptr_tests.o tests/script_object_ptr_tests.cpp


${TESTDIR}/tests/simple_array_tests.o: tests/simple_array_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/simple_array_tests.o tests/simple_array_tests.cpp


${TESTDIR}/tests/simple_object_tests.o: tests/simple_object_tests.cpp 
	${MKDIR} -p ${TESTDIR}/tests
	${RM} "$@.d"
	$(COMPILE.cc) -O2 -I../../externals/installed/include -I. -std=c++11 -MMD -MP -MF "$@.d" -o ${TESTDIR}/tests/simple_object_tests.o tests/simple_object_tests.cpp


${OBJECTDIR}/md5_nomain.o: ${OBJECTDIR}/md5.o md5.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/md5.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/md5_nomain.o md5.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/md5.o ${OBJECTDIR}/md5_nomain.o;\
	fi

${OBJECTDIR}/script_array_nomain.o: ${OBJECTDIR}/script_array.o script_array.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_array.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array_nomain.o script_array.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_array.o ${OBJECTDIR}/script_array_nomain.o;\
	fi

${OBJECTDIR}/script_array_factory_nomain.o: ${OBJECTDIR}/script_array_factory.o script_array_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_array_factory.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array_factory_nomain.o script_array_factory.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_array_factory.o ${OBJECTDIR}/script_array_factory_nomain.o;\
	fi

${OBJECTDIR}/script_array_vector_source_nomain.o: ${OBJECTDIR}/script_array_vector_source.o script_array_vector_source.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_array_vector_source.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_array_vector_source_nomain.o script_array_vector_source.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_array_vector_source.o ${OBJECTDIR}/script_array_vector_source_nomain.o;\
	fi

${OBJECTDIR}/script_item_ptr_nomain.o: ${OBJECTDIR}/script_item_ptr.o script_item_ptr.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_item_ptr.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_item_ptr_nomain.o script_item_ptr.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_item_ptr.o ${OBJECTDIR}/script_item_ptr_nomain.o;\
	fi

${OBJECTDIR}/script_object_nomain.o: ${OBJECTDIR}/script_object.o script_object.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_nomain.o script_object.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object.o ${OBJECTDIR}/script_object_nomain.o;\
	fi

${OBJECTDIR}/script_object_definition_nomain.o: ${OBJECTDIR}/script_object_definition.o script_object_definition.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_definition.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_definition_nomain.o script_object_definition.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_definition.o ${OBJECTDIR}/script_object_definition_nomain.o;\
	fi

${OBJECTDIR}/script_object_factory_nomain.o: ${OBJECTDIR}/script_object_factory.o script_object_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_factory.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_factory_nomain.o script_object_factory.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_factory.o ${OBJECTDIR}/script_object_factory_nomain.o;\
	fi

${OBJECTDIR}/script_object_hash_nomain.o: ${OBJECTDIR}/script_object_hash.o script_object_hash.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_hash.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_hash_nomain.o script_object_hash.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_hash.o ${OBJECTDIR}/script_object_hash_nomain.o;\
	fi

${OBJECTDIR}/script_object_keys_nomain.o: ${OBJECTDIR}/script_object_keys.o script_object_keys.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_keys.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys_nomain.o script_object_keys.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_keys.o ${OBJECTDIR}/script_object_keys_nomain.o;\
	fi

${OBJECTDIR}/script_object_keys_cache_nomain.o: ${OBJECTDIR}/script_object_keys_cache.o script_object_keys_cache.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_keys_cache.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys_cache_nomain.o script_object_keys_cache.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_keys_cache.o ${OBJECTDIR}/script_object_keys_cache_nomain.o;\
	fi

${OBJECTDIR}/script_object_keys_factory_nomain.o: ${OBJECTDIR}/script_object_keys_factory.o script_object_keys_factory.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_keys_factory.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_keys_factory_nomain.o script_object_keys_factory.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_keys_factory.o ${OBJECTDIR}/script_object_keys_factory_nomain.o;\
	fi

${OBJECTDIR}/script_object_vector_source_nomain.o: ${OBJECTDIR}/script_object_vector_source.o script_object_vector_source.cpp 
	${MKDIR} -p ${OBJECTDIR}
	@NMOUTPUT=`${NM} ${OBJECTDIR}/script_object_vector_source.o`; \
	if (echo "$$NMOUTPUT" | ${GREP} '|main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T main$$') || \
	   (echo "$$NMOUTPUT" | ${GREP} 'T _main$$'); \
	then  \
	    ${RM} "$@.d";\
	    $(COMPILE.cc) -O2 -std=c++11 -Dmain=__nomain -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/script_object_vector_source_nomain.o script_object_vector_source.cpp;\
	else  \
	    ${CP} ${OBJECTDIR}/script_object_vector_source.o ${OBJECTDIR}/script_object_vector_source_nomain.o;\
	fi

# Run Test Targets
.test-conf:
	@if [ "${TEST}" = "" ]; \
	then  \
	    ${TESTDIR}/TestFiles/f5 || true; \
	    ${TESTDIR}/TestFiles/f2 || true; \
	    ${TESTDIR}/TestFiles/f1 || true; \
	    ${TESTDIR}/TestFiles/f6 || true; \
	    ${TESTDIR}/TestFiles/f4 || true; \
	    ${TESTDIR}/TestFiles/f3 || true; \
	else  \
	    ./${TEST} || true; \
	fi

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} ${CND_DISTDIR}/${CND_CONF}/${CND_PLATFORM}/libscriptobject.a

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
