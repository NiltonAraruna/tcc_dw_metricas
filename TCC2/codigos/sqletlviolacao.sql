
SET @release_number = (SELECT substring_index('?','.',1));

SET @idProject = (SELECT max(idProject) from D_Project);

SET @idTime = (SELECT max(idTime) from D_Time);

SET @idRelease = (SELECT max(idRelease) from D_Release);

SET @Project_Language = (SELECT project_language from D_Project where idProject = @idProject);

SET @idRules = (SELECT idRules FROM D_Rules where rule_name='?'); 

SET @idSeverite = ( CASE 
     WHEN  '?' IN ('AbstractNaming', 'AtLeastOneConstructor', 'UnnecessaryCaseChange') THEN '1'
     WHEN  '?' IN ('AtLeastOneConstructor', 'AvoidThrowingRawExceptionTypes', 'UseEqualsToCompareStrings') THEN '2'
	 WHEN  '?' IN ('AvoidBranchingStatementAsLastInLoop', 'AvoidCatchingGenericException', 'AvoidDeeplyNestedIfStmts', 'AvoidDuplicateLiterals', 'AvoidFieldNameMatchingMethodName', 'AvoidFieldNameMatchingTypeName', 'AvoidFinalLocalVariable', 'AvoidInstantiatingObjectsInLoops', 'AvoidLiteralsInIfCondition', 'AvoidReassigningParameters', 'AvoidThrowingRawExceptionTypes', 'BeanMembersShouldSerialize', 'BigIntegerInstantiation', 'BooleanGetMethodName', 'ClassWithOnlyPrivateConstructorsShouldBeFinal', 'CollapsibleIfStatements', 'ConfusingTernary', 'ConsecutiveAppendsShouldReuse', 'ConsecutiveLiteralAppends', 'CyclomaticComplexity', 'DataflowAnomalyAnalysis', 'DefaultPackage', 'EmptyCatchBlock', 'EmptyIfStmt', 'ExcessiveClassLength', 'ExcessiveMethodLength', 'ExcessiveParameterList', 'ExcessivePublicCount', 'FieldDeclarationsShouldBeAtStartOfClass', 'FinalFieldCouldBeStatic', 'GodClass', 'IfStmtsMustUseBraces', 'ImmutableField', 'InefficientStringBuffering', 'InsufficientStringBufferDeclaration', 'IntegerInstantiation', 'JUnit4TestShouldUseTestAnnotation', 'LocalVariableCouldBeFinal', 'LongInstantiation', 'LongVariable', 'MethodArgumentCouldBeFinal', 'MethodNamingConventions', 'ModifiedCyclomaticComplexity', 'NcssMethodCount', 'NPathComplexity', 'NullAssignment', 'OneDeclarationPerLine', 'OnlyOneReturn', 'AvoidRethrowingException', 'CallSuperInConstructor', 'ForLoopsMustUseBraces', 'SimplifyBooleanExpressions', 'UseConcurrentHashMap', 'SimplifyBooleanExpressions') THEN '3'
	 WHEN  '?' IN ('PositionLiteralsFirstInComparisons', 'PrematureDeclaration', 'PreserveStackTrace', 'RedundantFieldInitializer', 'ShortClassName', 'ShortInstantiation', 'ShortVariable') THEN '4'
	 WHEN  '?' IN ('SignatureDeclareThrowsException', 'SimpleDateFormatNeedsLocale', 'SimplifyBooleanReturns', 'SingularField', 'StdCyclomaticComplexity', 'TooManyFields', 'TooManyMethods', 'UncommentedEmptyConstructor', 'UncommentedEmptyMethod', 'UnnecessaryConstructor', 'UnnecessaryFullyQualifiedName', 'UnnecessaryLocalBeforeReturn', 'UnnecessaryParentheses', 'UnusedFormalParameter', 'UnusedImports', 'UnusedLocalVariable', 'UnusedModifier', 'UnusedPrivateField', 'UnusedPrivateMethod', 'UseCollectionIsEmpty', 'UselessParentheses', 'UselessStringValueOf', 'UseLocaleWithCaseConversions', 'UseObjectForClearerAPI', 'UseStringBufferForStringAppends', 'UseVarargs', 'VariableNamingConventions', 'EmptyStatementNotInLoop', 'LogicInversion') THEN '5'
     ELSE '0'
 	END);


INSERT INTO `F_Project_Violation`
(`quantiy_Violation`, `D_Class_Violation_idClass_violation`, `D_Class_Violation_idRules`, `D_Class_Violation_idSeverite`, 
`D_Project_idProject`, `D_Release_idRelease`,`D_Time_idTime`)
VALUES
(1, ?, @idRules, @idSeverite, @idProject, @idRelease, @idTime);


