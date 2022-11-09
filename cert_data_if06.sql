-- Colocaciones IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- LEC IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_colec)::int as total_colec,
    SUM(valor_colec)::real as valor_colec
FROM lecmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FAG IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credgar)::real as valor_credgar
FROM fagmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ICR IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_proy)::int as total_proy,
    SUM(valor_pagado)::real as valor_pagado,
    SUM(valor_credicr)::real as valor_credicr,
    SUM(valor_inver)::real as valor_inver
FROM icrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- ISA IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isamjr_if06
WHERE anio_vigencia = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_valaseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isamjr_if06
WHERE anio_vigencia = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

-- FMR IF06 cifras totales
SELECT mes::int,
    'Total Persona Natural' as sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
UNION
-- esta union corresponde a los totales del anio corrido
SELECT mes::int,
    sexo,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrmjr_if06
WHERE anio = 2022
GROUP BY 1, 2
ORDER BY 1, 2;

