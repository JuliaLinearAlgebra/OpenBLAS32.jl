module OpenBLAS32

using OpenBLAS32_jll, LinearAlgebra

function __init__()
    if OpenBLAS32_jll.is_available()
        if Base.USE_BLAS64
            BLAS.lbt_forward(libopenblas)
        end
    end
end

end
