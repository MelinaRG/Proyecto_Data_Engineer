-- FUNCTION: public.top_five_movies_by_duration(integer)

-- DROP FUNCTION IF EXISTS public.top_five_movies_by_duration(integer);

CREATE OR REPLACE FUNCTION public.top_five_movies_by_duration(
	input_year integer)
    RETURNS TABLE(title character varying, duration integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
  RETURN QUERY
  SELECT program.title, program.duration
  FROM program
  WHERE EXTRACT(YEAR FROM program.date_released) = input_year
  ORDER BY program.duration DESC
  LIMIT 5;
END;
$BODY$;

ALTER FUNCTION public.top_five_movies_by_duration(integer)
    OWNER TO postgres;
