// 09-Sep-99 $$1  MAZ  Created.
// 29-Sep-99 $$2  MAZ  Rm empty line before head.inc
// 23-Jan-01 $$3  TWH   Sun4_solaris_64 changes
#include:head.inc
#include:shlib.inc
#include:sun4_tmpdir.inc

if ($mc =~ sgi*) then
   unsetenv XUSERFILESEARCHPATH
   setenv GLMGRARRAYOPT 1
endif

if ($mc == alpha_unix) then
    limit datasize unlimited
    limit stacksize unlimited
endif
#include:add_path.inc

setenv DIVISIONROOT $prodir
setenv PRO_DIRECTORY $prodir

#includeenv:LM_LICENSE_FILE:lmlic.env
setenv MOCKUP_CONVERTER_FEATURE_NAME "__MOCKUP_CONV_FEATURE_NAME__"

$prodir/$mc/obj/pro2vdi19 $*

