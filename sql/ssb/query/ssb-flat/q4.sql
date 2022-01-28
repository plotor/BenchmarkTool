--Q2.1
SELECT
    sum(LO_REVENUE),
    (LO_ORDERDATE DIV 10000) AS year,
    P_BRAND
FROM lineorder_flat
WHERE P_CATEGORY = 'MFGR#12' AND S_REGION = 'AMERICA'
GROUP BY
    year,
    P_BRAND
ORDER BY
    year,
    P_BRAND;