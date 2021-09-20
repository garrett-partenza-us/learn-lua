local pkg = require 'pkg'

if jit.os == 'Windows' then
  if jit.arch == 'x86' then
    pkg.loadclib(..., 'libgcc_s_sjlj-1')
  else
    pkg.loadclib(..., 'libgcc_s_seh-1')
  end
  pkg.loadclib(..., 'libquadmath-0')
  pkg.loadclib(..., 'libgfortran-3')
elseif jit.os == 'Linux' then -- Versioning after .so removed on Linux.
  pkg.loadclib(..., 'libgcc_s')
  pkg.loadclib(..., 'libquadmath')
  pkg.loadclib(..., 'libgfortran')
end