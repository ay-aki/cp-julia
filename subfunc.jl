

using LinearAlgebra
using Random

"""
[構文]
Q = orth(A)
[説明]
Q = orth(A) は、A の範囲の正規直交基底を返す。
行列 Q の列は、A の範囲を張るベクトルである。
Q の列数は A のランクと等しくなります。
"""
function orth(A)
  q, _ = qr(A)
  return q
end

"""
[構文]
orth!(A)
"""
function orth!(A)
  qr!(A)
end


"""
for svd
[構文]
S = (0.005 .+ (0 : 0.01: 1.99)); 
# S=(- 1/n .+ (1/n) .* Array(1 : n));

gen_matrix_svd(1000, 200, S)
"""
function gen_matrix_svd(m, n, S)
  Random.seed!(0);
  U, V = orth(rand(m,n)), orth(rand(n,n));
  A    = U * diagm(S) * V' ;
  return A, (U, S, V)
end


