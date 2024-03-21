WITH monthly_fx AS (
    SELECT
        -- get year and month from date nad set it to the first day of the month
        DATE_TRUNC('month', date) AS date,
        dollar_fx,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM date), EXTRACT(MONTH FROM date) ORDER BY date) AS row_num
    FROM econ.tipo_de_cambio
), monthly_interest_rate AS (
    SELECT
        -- get year and month from date nad set it to the first day of the month
        DATE_TRUNC('month', date) AS date,
        tiie,
        ROW_NUMBER() OVER (PARTITION BY EXTRACT(YEAR FROM date), EXTRACT(MONTH FROM date) ORDER BY date) AS row_num
    FROM econ.tasa_de_interes
)
SELECT
    i.date,
    i.inpc,
    fx.dollar_fx,
    ir.tiie
FROM econ.inflacion AS i
LEFT JOIN monthly_fx AS fx
    ON i.date = fx.date
    AND fx.row_num = 1
LEFT JOIN monthly_interest_rate AS ir
    ON i.date = ir.date
    AND ir.row_num = 1
