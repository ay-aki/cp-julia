
using Random

"""
"""
function gen_RandArray(siz, valnz; seed=0)
  Random.seed!(seed);
  m, n  = siz;
  nz = size(valnz, 1); 
  if m*n < nz
    exit();
  end
  A = zeros(m * n); 
  A[1:nz] .= valnz; 
  Random.shuffle!(A); 
  reshape!(A, (n, m));
  return A;
end
