-- Colocaciones IF03 cifras totales
SELECT 'colocaciones_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'colocaciones_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_if03;
-- Colocaciones IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_dep_if03;
-- Colocaciones IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM colocaciones_geo_reg_if03;

-- Saldos IF03 cifras totales
SELECT 'saldos_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'saldos_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- Colocaciones IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geo_if03;
-- Colocaciones IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_geodep_if03;
-- Colocaciones IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_saldo)::real as valor_coloc
FROM saldos_georeg_if03;

-- LEC IF03 cifras totales
SELECT 'lec_if03' as tabla,
    mes::int,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
FROM lec_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'lec_if03' as tabla,
    0 as mes,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc,
    SUM(valor_subs)::real as valor_subs
FROM lec_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- LEC IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geo_if03;
-- LEC IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_geodep_if03;
-- LEC IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_coloc)::int as total_coloc,
    SUM(valor_coloc)::real as valor_coloc
FROM lec_georeg_if03;

-- FAG Expedidas IF03 cifras totales
SELECT 'fagexp_if03' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagexp_if03' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Expedidas IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geo_if03;
-- FAG Expedidas IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_geodep_if03;
-- FAG Expedidas IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_garant)::real as valor_garant,
    SUM(valor_credfag)::real as valor_credfag
FROM fagexp_georeg_if03;

-- FAG Pagadas IF03 cifras totales
SELECT 'fagpag_if03' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagpag_if03' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Pagadas IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geo_if03;
-- FAG Pagadas IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_geodep_if03;
-- FAG Pagadas IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credgar)::real as valor_credgar,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_pagado)::real as valor_pagado
FROM fagpag_georeg_if03;

-- FAG Vigentes IF03 cifras totales
SELECT 'fagvig_if03' as tabla,
    mes::int,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'fagvig_if03' as tabla,
    0 as mes,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FAG Vigenetes IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_geo_if03;
-- FAG Vigentes IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_geodep_if03;
-- FAG Vigentes IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_cert)::int as total_cert,
    SUM(valor_credfag)::real as valor_credfag,
    SUM(valor_inicial)::real as valor_inicial,
    SUM(valor_actual)::real as valor_actual
FROM fagvig_georeg_if03;

-- ISA IF03 cifras totales
SELECT 'isaunaseg_if03' as tabla,
    mes_vigencia::int as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM vw_isaunaseg_if03
WHERE anio_vigencia = 2022 -- and mes_vigencia BETWEEN 1 and 10
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'isaunaseg_if03' as tabla,
    0 as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM vw_isaunaseg_if03
WHERE anio_vigencia = 2022 --and mes_vigencia BETWEEN 1 and 10
GROUP BY 2
ORDER BY 1, 2;
-- ISA IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_geo_if03;
-- ISA IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_geodep_if03;
-- ISA IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_asegurado)::real as valor_aseg,
    SUM(valor_incentivo)::real as valor_incisa
FROM isapol_georeg_if03;

-- ISA IF03 cifras totales (capa de puntos)
SELECT 'isaunaseg_if03' as tabla,
    mes_vigencia::int as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapoint_geo_if03
WHERE anio_vigencia = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'isaunaseg_if03' as tabla,
    0 as mes,
    SUM(total_unaseg)::int as total_unaseg,
    SUM(valor_aseg)::real as valor_aseg,
    SUM(valor_incisa)::real as valor_incisa,
    SUM(valor_prima)::real as valor_prima
FROM isapoint_geo_if03
WHERE anio_vigencia = 2022
GROUP BY 2
ORDER BY 1, 2;

-- FMR IF03 cifras totales
SELECT 'mfrop_if03' as tabla,
    mes::int as mes,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_if03
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'mfrop_if03' as tabla,
    0 as mes,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_if03
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- FMR IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_geo_if03;
-- FMR IF03 Cifras capa geografica (departamentos)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_geodep_if03;
-- FMR IF03 Cifras capa geografica (regiones)
SELECT 2022 as anio,
    SUM(total_operac)::int as total_operac,
    SUM(valor_cred)::real as valor_cred
FROM mfrop_georeg_if03;

-- CIF IF03 cifras totales
SELECT 'cifop_if03' as tabla,
    c.mes::int as mes,
    COUNT(c.contrato)::int as total_contratos,
    MAX(c.valor_valiq)::real as valor_liqcif,
    SUM(c.valor_pagcif)::real as valor_pagcif,
    SUM(c.area_vig)::real as area_vig
FROM (SELECT DISTINCT anio, mes, contrato, valor_valiq, valor_pagcif, area_vig FROM vw_cifop_if03) c
WHERE anio = 2022
GROUP BY 2
UNION
-- esta union corresponde a los totales del anio corrido (vigencia corrida representada por el valor de 0 en el campo mes)
SELECT 'cifop_if03' as tabla,
    0 as mes,
    COUNT(c.contrato)::int as total_contratos,
    MAX(c.valor_valiq)::real as valor_liqcif,
    SUM(c.valor_pagcif)::real as valor_pagcif,
    SUM(c.area_vig)::real as area_vig
FROM (SELECT DISTINCT anio, mes, contrato, valor_valiq, valor_pagcif, area_vig FROM vw_cifop_if03) c
WHERE anio = 2022
GROUP BY 2
ORDER BY 1, 2;
-- CIF IF03 Cifras capa geografica (municipios)
SELECT 2022 as anio,
    SUM(total_contr)::int as total_contr,
    SUM(valor_valiq)::real as valor_liqcif,
    SUM(valor_pag)::real as valor_pagcif,
    SUM(total_area)::real as area_vig
FROM cifop_geo_if03;