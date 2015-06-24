
SET @release_number = (SELECT substring_index('?','.',1));

SET @idProject = (SELECT max(idProject) from D_Project);

SET @idTime = (SELECT max(idTime) from D_Time);

SET @idRelease = (SELECT max(idRelease) from D_Release);

SET @Project_Language = (SELECT project_language from D_Project where idProject = @idProject);


SET @idType = (SELECT idType from D_Type where type_name = '?');


SET @idPriority = ( CASE 
     WHEN  '?' IN ('RpC_REPEATED_CONDITIONAL_TEST', '       /ES_COMPARING_PARAMETER_STRING_WITH_EQ', 'ES_COMPARING_PARAMETER_STRING_WITH_EQ', '       /RC_REF_COMPARISON', 'RC_REF_COMPARISON', 'DM_NUMBER_CTOR', 'NP_NULL_ON_SOME_PATH', 'RCN_REDUNDANT_NULLCHECK_OF_NONNULL_VALUE', 'RCN_REDUNDANT_NULLCHECK_OF_NULL_VALUE') THEN '1'
     WHEN  '?' IN ('BX_UNBOXING_IMMEDIATELY_REBOXED', 'WMI_WRONG_MAP_ITERATOR', 'RCN_REDUNDANT_NULLCHECK_WOULD_HAVE_BEEN_A_NPE', '       /EC_UNRELATED_TYPES', '       /SE_BAD_FIELD', 'DB_DUPLICATE_BRANCHES', 'DLS_DEAD_LOCAL_STORE', 'DM_CONVERT_CASE', 'EC_UNRELATED_TYPES', 'EI_EXPOSE_REP', 'EI_EXPOSE_REP2', 'NM_FIELD_NAMING_CONVENTION', 'NP_LOAD_OF_KNOWN_NULL_VALUE', 'RV_RETURN_VALUE_IGNORED_NO_SIDE_EFFECT', 'SE_BAD_FIELD', 'SS_SHOULD_BE_STATIC', 'UCF_USELESS_CONTROL_FLOW') THEN '2'
	 WHEN  '?' IN ('ES_COMPARING_STRINGS_WITH_EQ', '       /ES_COMPARING_STRINGS_WITH_EQ', 'UPM_UNCALLED_PRIVATE_METHOD', 'DE_MIGHT_IGNORE', 'SIC_INNER_SHOULD_BE_STATIC_ANON', 'HE_EQUALS_USE_HASHCODE', 'ME_ENUM_FIELD_SETTER', 'REC_CATCH_EXCEPTION') THEN '3'
     ELSE '0'
 	END);

INSERT INTO `F_Project_Bug`
(`quantiy_Bug`, `D_Class_Bug_idClass_Bug`, `D_Class_Bug_idType`, `D_Class_Bug_idPriority`, 
`D_Project_idProject`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(1, ?, @idType, @idPriority, @idProject, @idRelease, @idTime);


