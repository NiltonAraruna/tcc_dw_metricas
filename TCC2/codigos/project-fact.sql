

SET @idProject = (SELECT max(idProject) from D_Project);

SET @idTime = (SELECT max(idTime) from D_Time);

SET @idRelease = (SELECT max(idRelease) from D_Release);

SET @Project_Language = (SELECT project_language from D_Project where idProject = @idProject);

SET @Best_Configuration  = (SELECT idConfiguration FROM D_Configuration where configuration_name like '%Open JDK8 Metrics%' and
language_name LIKE CONCAT('%', @Project_Language, '%')); 

SET @Worst_Configuration  = (SELECT idConfiguration FROM D_Configuration where configuration_name like '%Tomcat Metrics%' and
language_name LIKE CONCAT('%', @Project_Language, '%')); 



SET @idLOC = (SELECT idMetric FROM D_Metric where metric_abbreviation='LOC'); 



SET @qualityBestLOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  'java'
and metric_name='LOC' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstLOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='LOC' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idLOC, @qualityBestLOC, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idLOC, @qualityWorstLOC, @Worst_Configuration, @idRelease, @idTime);




SET @idACCM = (SELECT idMetric FROM D_Metric where metric_abbreviation='ACCM'); 



SET @qualityBestACCM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ACCM' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstACCM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ACCM' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');


INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idACCM, @qualityBestACCM, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idACCM, @qualityWorstACCM, @Worst_Configuration, @idRelease, @idTime);



SET @idAMLOC = (SELECT idMetric FROM D_Metric where metric_abbreviation='AMLOC'); 



SET @qualityBestAMLOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='AMLOC' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstAMLOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='AMLOC' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idAMLOC, @qualityBestAMLOC, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idAMLOC, @qualityWorstAMLOC, @Worst_Configuration, @idRelease, @idTime);



SET @idACC = (SELECT idMetric FROM D_Metric where metric_abbreviation='ACC'); 



SET @qualityBestACC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ACC' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstACC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ACC' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idACC, @qualityBestACC, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idACC, @qualityWorstACC, @Worst_Configuration, @idRelease, @idTime);




SET @idANPM = (SELECT idMetric FROM D_Metric where metric_abbreviation='ANPM'); 



SET @qualityBestANPM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ANPM' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstANPM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='ANPM' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idANPM, @qualityBestANPM, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idANPM, @qualityWorstANPM, @Worst_Configuration, @idRelease, @idTime);



SET @idCBO = (SELECT idMetric FROM D_Metric where metric_abbreviation='CBO'); 



SET @qualityBestCBO = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='CBO' and round(?) <= max AND round(?) >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstCBO = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='CBO' and round(?) <= max AND round(?) >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(round(?), @idProject, @idCBO, @qualityBestCBO, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(round(?), @idProject, @idCBO, @qualityWorstCBO, @Worst_Configuration, @idRelease, @idTime);



SET @idDIT = (SELECT idMetric FROM D_Metric where metric_abbreviation='DIT'); 



SET @qualityBestDIT = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='DIT' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstDIT = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='DIT' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idDIT, @qualityBestDIT, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idDIT, @qualityWorstDIT, @Worst_Configuration, @idRelease, @idTime);






SET @idLCOM4 = (SELECT idMetric FROM D_Metric where metric_abbreviation='LCOM4'); 



SET @qualityBestLCOM4 = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='LCOM4' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstLCOM4 = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='LCOM4' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idLCOM4, @qualityBestLCOM4, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idLCOM4, @qualityWorstLCOM4, @Worst_Configuration, @idRelease, @idTime);








SET @idNOC = (SELECT idMetric FROM D_Metric where metric_abbreviation='NOC'); 



SET @qualityBestNOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NOC' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstNOC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NOC' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNOC, @qualityBestNOC, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNOC, @qualityWorstNOC, @Worst_Configuration, @idRelease, @idTime);




SET @idNOM = (SELECT idMetric FROM D_Metric where metric_abbreviation='NOM'); 



SET @qualityBestNOM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NOM' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstNOM = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NOM' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNOM, @qualityBestNOM, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNOM, @qualityWorstNOM, @Worst_Configuration, @idRelease, @idTime);




SET @idNPA = (SELECT idMetric FROM D_Metric where metric_abbreviation='NPA'); 



SET @qualityBestNPA = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NPA' and ? <= max AND ? >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstNPA = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='NPA' and ? <= max AND ? >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNPA, @qualityBestNPA, @Best_Configuration, @idRelease, @idTime);





INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(?, @idProject, @idNPA, @qualityWorstNPA, @Worst_Configuration, @idRelease, @idTime);



SET @idRFC = (SELECT idMetric FROM D_Metric where metric_abbreviation='RFC'); 



SET @qualityBestRFC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='RFC' and round(?) <= max AND round(?) >= min and configuration_name like '%Open JDK8 Metrics%');




SET @qualityWorstRFC = (SELECT idQuality FROM Meta_Metric_Ranges
INNER JOIN D_Quality
ON Meta_Metric_Ranges.quality_index=D_Quality.quality_index where language_name =  @Project_Language 
and metric_name='RFC' and round(?) <= max AND round(?) >= min and configuration_name like '%Tomcat Metrics%');



INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(round(?), @idProject, @idRFC, @qualityBestRFC, @Best_Configuration, @idRelease, @idTime);




INSERT INTO `F_Project_Metric`
(`percentil_value`, `D_Project_idProject`, `D_Metric_idMetric`, `D_Quality_idQuality`, 
`D_Configuration_idConfiguration`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(round(?), @idProject, @idRFC, @qualityWorstRFC, @Worst_Configuration, @idRelease, @idTime);
