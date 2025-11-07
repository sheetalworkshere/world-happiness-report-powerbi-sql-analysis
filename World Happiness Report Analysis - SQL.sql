SELECT * from World_Happiness_Data;

--AVERAGE 
SELECT
      ROUND(AVG(Happiness_score),2) AS Avg_Happiness_Score,
	  ROUND(AVG(GDP_per_Capita),2) AS Avg_GDP_per_Capita,
	  ROUND(AVG(Social_Support_1_100),2) AS Avg_Social_Support,
	  ROUND(AVG(Healthy_life_expectancy_1_100),2) AS Avg_Healthy_life_expectancy,
	  ROUND(AVG(Freedom_to_make_life_choices_0_1),2) AS Avg_Freedom_to_make_life_choices,
	  ROUND(AVG(Generosity_0_1),2) AS Avg_Generosity,
	  ROUND(AVG(Perceptions_of_corruption_0_1),2) AS Avg_Perceptions_of_corruption
from World_Happiness_Data;

--AVERAGE GDP PER CAPITA BY REGION	

SELECT Regional_indicator,
                          ROUND(AVG(GDP_per_capita),2) AS Avg_GDP_Per_Capita_by_Region from World_Happiness_Data
						  GROUP BY Regional_indicator
						  ORDER BY Avg_GDP_Per_Capita_by_Region DESC;


--YEARLY TREND PER CAPITA / HAPPINESS SCORE		

SELECT YEAR,
             ROUND(AVG(GDP_per_capita),2) AS Avg_GDP_Per_Capita_by_Region,
			 ROUND(AVG(Happiness_score),2) AS Avg_Happiness_Score
from World_Happiness_Data
GROUP BY Year
ORDER BY Avg_Happiness_Score, Avg_GDP_Per_Capita_by_Region;


--TOP 10 SADDEST COUNTRIES	

SELECT TOP 10 Country,
               ROUND(AVG(Happiness_score),2) AS Avg_Happiness_Score
from World_Happiness_Data
GROUP BY Country
ORDER BY Avg_Happiness_Score ASC;

----TOP 10 Happiest COUNTRIES	

SELECT TOP 10 Country,
               ROUND(AVG(Happiness_score),2) AS Avg_Happiness_Score
from World_Happiness_Data
GROUP BY Country
ORDER BY Avg_Happiness_Score DESC;
            

						  






