# @requires interpolate rgb

interpolate_rgb = (col1, col2, f, m) ->
    xyz0 = col1._rgb
    xyz1 = col2._rgb
    new Color(
        xyz0[0] + f * (xyz1[0]-xyz0[0]),
        xyz0[1] + f * (xyz1[1]-xyz0[1]),
        xyz0[2] + f * (xyz1[2]-xyz0[2]),
        m
    )

_interpolators.push ['rgb', interpolate_rgb]
