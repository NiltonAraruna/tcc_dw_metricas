SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

DROP SCHEMA IF EXISTS `source_info`;
CREATE DATABASE `source_info` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `source_info`;

--
-- criando tabelas para o cubo de violações`
--

CREATE TABLE IF NOT EXISTS `D_Class_Violation` (
  `idClass_violation` int(11) NOT NULL,
  `violation_package_class` varchar(200) DEFAULT NULL,
  `violation_file_class` varchar(200) DEFAULT NULL,
  `violation_line_class` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idClass_violation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `D_Rules` (
  `idRules` int(11) NOT NULL,
  `rule_name` varchar(200) DEFAULT NULL,
  `rule_set` varchar(200) DEFAULT NULL,
  `rule_description` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idRules`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Dumping data for table `D_Rules`
--

INSERT INTO `D_Rules` VALUES (1,'AbstractNaming','Naming','Abstract classes should be named AbstractXXX'),(2,'AtLeastOneConstructor','Controversial','Each class should declare at least one constructor'),(3,'AvoidBranchingStatementAsLastInLoop','Basic','Avoid using a branching statement as the last in a loop.'),(4,'AvoidCatchingGenericException','Strict Exceptions','Avoid catching generic exceptions such as NullPointerException, RuntimeException, Exception in try-catch block'),(5,'AvoidDeeplyNestedIfStmts','Design','Deeply nested if..then statements are hard to read'),(6,'AvoidDuplicateLiterals','String and StringBuffer','The String literal \'demanda\' appears 7 times in this file; the first occurrence is on line 132'),(7,'AvoidFieldNameMatchingMethodName','Naming','Field demandas has the same name as a method'),(8,'AvoidFieldNameMatchingTypeName','Naming','It is somewhat confusing to have a field name matching the declaring class name'),(9,'AvoidFinalLocalVariable','Controversial','Avoid using final local variables, turn them into fields'),(10,'AvoidInstantiatingObjectsInLoops','Optimization','Avoid instantiating new objects inside loops'),(11,'AvoidLiteralsInIfCondition','Controversial','Avoid using Literals in Conditional Statements'),(12,'AvoidReassigningParameters','Design','Avoid reassigning parameters such as \'fornecedor\''),(13,'AvoidThrowingRawExceptionTypes','Strict Exceptions','Avoid throwing raw exception types.'),(14,'BeanMembersShouldSerialize','JavaBeans','Found non-transient, non-static member. Please mark as transient or provide accessors.'),(15,'BigIntegerInstantiation','Basic','Dont create instances of already existing BigInteger and BigDecimal (ZERO, ONE, TEN)'),(16,'BooleanGetMethodName','Naming','A getX() method which returns a boolean should be named isX()'),(17,'ClassWithOnlyPrivateConstructorsShouldBeFinal','Design','A class which only has private constructors should be final'),(18,'CollapsibleIfStatements','Basic','These nested if statements could be combined'),(19,'ConfusingTernary','Design','Avoid if (x != y) ..; else ..;'),(20,'ConsecutiveAppendsShouldReuse','String and StringBuffer','StringBuffer (or StringBuilder).append is called consecutively without reusing the target variable.'),(21,'ConsecutiveLiteralAppends','String and StringBuffer','StringBuffer (or StringBuilder).append is called 2 consecutive times with literal Strings. Use a single append with a single combined String.'),(22,'CyclomaticComplexity','Code Size','The class \'ContatoFornecedor\' has a Cyclomatic Complexity of 3 (Highest = 19).'),(23,'DataflowAnomalyAnalysis','Controversial','Found \'DD\'-anomaly for variable \'bem\' (lines \'19\'-\'28\').'),(24,'DefaultPackage','Controversial','Use explicit scoping instead of the default package private level'),(25,'EmptyCatchBlock','Empty Code','Avoid empty catch blocks'),(26,'EmptyIfStmt','Empty Code','Avoid empty if statements'),(27,'ExcessiveClassLength','Code Size','Avoid really long classes.'),(28,'ExcessiveMethodLength','Code Size','Avoid really long methods.'),(29,'ExcessiveParameterList','Code Size','Avoid long parameter lists.'),(30,'ExcessivePublicCount','Code Size','This class has a bunch of public methods and attributes'),(31,'FieldDeclarationsShouldBeAtStartOfClass','Design','Fields should be declared at the top of the class, before any method declarations, constructors, initializers or inner classes.'),(32,'FinalFieldCouldBeStatic','Design','This final field could be made static'),(33,'GodClass','Design','Possible God class (WMC=49, ATFD=11, TCC=0.015053763440860216)'),(34,'IfStmtsMustUseBraces','Braces','Avoid using if statements without curly braces'),(35,'ImmutableField','Design','Private field \'itensDemandaExcluir\' could be made final; it is only initialized in the declaration or constructor.'),(36,'InefficientStringBuffering','String and StringBuffer','Avoid concatenating nonliterals in a StringBuffer/StringBuilder constructor or append().'),(37,'InsufficientStringBufferDeclaration','String and StringBuffer','StringBuffer constructor is initialized with size 16, but has at least 280 characters appended.'),(38,'IntegerInstantiation','Migration','Avoid instantiating Integer objects. Call Integer.valueOf() instead.'),(39,'JUnit4TestShouldUseTestAnnotation','Migration','JUnit 4 tests that execute tests should use the @Test annotation'),(40,'LocalVariableCouldBeFinal','Optimization','Local variable \'ambiente\' could be declared final'),(41,'LongInstantiation','Migration','Avoid instantiating Long objects.Call Long.valueOf() instead'),(42,'LongVariable','Naming','Avoid excessively long variable names like manterAmbienteBean'),(43,'MethodArgumentCouldBeFinal','Optimization','Parameter \'facesContex\' is not assigned and could be declared final'),(44,'MethodNamingConventions','Naming','Method names should not contain underscores'),(45,'ModifiedCyclomaticComplexity','Code Size','The class \'ContatoFornecedor\' has a Modified Cyclomatic Complexity of 3 (Highest = 19).'),(46,'NcssMethodCount','Code Size','The method gerarRelatorio() has an NCSS line count of 109'),(47,'NPathComplexity','Code Size','The method hashCode() has an NPath complexity of 3125'),(48,'NullAssignment','Controversial','Assigning an Object to null is a code smell.  Consider refactoring.'),(49,'OneDeclarationPerLine','Controversial','Use one line for each declaration, it enhances code readability.'),(50,'OnlyOneReturn','Controversial','A method should have only one exit point, and that should be the last statement in the method'),(51,'PositionLiteralsFirstInComparisons','Design','Position literals first in String comparisons'),(52,'PrematureDeclaration','Optimization','Avoid declaring a variable if it is unreferenced before a possible exit point.'),(53,'PreserveStackTrace','Design','New exception is thrown in catch block, original stack trace may be lost'),(54,'RedundantFieldInitializer','Optimization','Avoid using redundant field initializer for \'icConfirmar\''),(55,'ShortClassName','Naming','Avoid short class names like Bem'),(56,'ShortInstantiation','Migration','Avoid instantiating Short objects. Call Short.valueOf() instead'),(57,'ShortVariable','Naming','Avoid variables with short names like p'),(58,'SignatureDeclareThrowsException','Strict Exceptions','A method/constructor shouldnt explicitly throw java.lang.Exception'),(59,'SimpleDateFormatNeedsLocale','Design','When instantiating a SimpleDateFormat object, specify a Locale'),(60,'SimplifyBooleanReturns','Design','Avoid unnecessary if..then..else statements when returning booleans'),(61,'SingularField','Design','Perhaps \'valorTotalRemanejado\' could be replaced by a local variable.'),(62,'StdCyclomaticComplexity','Code Size','The class \'ContatoFornecedor\' has a Standard Cyclomatic Complexity of 3 (Highest = 19).'),(63,'TooManyFields','Code Size','Too many fields'),(64,'TooManyMethods','Code Size','This class has too many methods, consider refactoring it.'),(65,'UncommentedEmptyConstructor','Design','Document empty constructor'),(66,'UncommentedEmptyMethod','Design','Document empty method'),(67,'UnnecessaryConstructor','Controversial','Avoid unnecessary constructors - the compiler will generate these for you'),(68,'UnnecessaryFullyQualifiedName','Import Statements','Unnecessary use of fully qualified name \'java.util.Date\' due to existing import \'java.util.Date\''),(69,'UnnecessaryLocalBeforeReturn','Design','Consider simply returning the value vs storing it in local variable \'historicoOrcamentos\''),(70,'UnnecessaryParentheses','Controversial','This statement may have some unnecessary parentheses'),(71,'UnusedFormalParameter','Unused Code','Avoid unused method parameters such as \'salvarGeral\'.'),(72,'UnusedImports','Import Statements','Avoid unused imports such as \'javax.persistence.Transient\''),(73,'UnusedLocalVariable','Unused Code','Avoid unused local variables such as \'inibe\'.'),(74,'UnusedModifier','Unused Code','Avoid modifiers which are implied by the context'),(75,'UnusedPrivateField','Unused Code','Avoid unused private fields such as \'valorTotalRemanejado\'.'),(76,'UnusedPrivateMethod','Unused Code','Avoid unused private methods such as \'carregarListas()\'.'),(77,'UseCollectionIsEmpty','Design','Substitute calls to size() == 0 (or size() != 0, size() > 0, size() < 1) with calls to isEmpty()'),(78,'UselessParentheses','Unnecessary','Useless parentheses.'),(79,'UselessStringValueOf','String and StringBuffer','No need to call String.valueOf to append to a string.'),(80,'UseLocaleWithCaseConversions','Design','When doing a String.toLowerCase()/toUpperCase() call, use a Locale'),(81,'UseObjectForClearerAPI','Controversial','Rather than using a lot of String arguments, consider using a container object for those values.'),(82,'UseStringBufferForStringAppends','Optimization','Prefer StringBuffer over += for concatenating strings'),(83,'UseVarargs','Design','Consider using varargs for methods or constructors which take an array the last parameter.'),(84,'VariableNamingConventions','Naming','Variables should start with a lowercase character, \'CoTelefoneContato\' starts with uppercase character.'),(85,'AvoidDuplicateLiterals2','String and StringBuffer','The String literal \'demanda\' appears 7 times in this file; the first occurrence is on line 140'),(86,'AvoidReassigningParameters2','Design','Avoid reassigning parameters such as \'quantidade\''),(87,'CallSuperInConstructor','Controversial','It is a good practice to call super() in a constructor'),(88,'ConsecutiveLiteralAppends2','String and StringBuffer','StringBuffer (or StringBuilder).append is called 3 consecutive times with literal Strings. Use a single append with a single combined String.'),(89,'EmptyStatementNotInLoop','Empty Code','An empty statement (semicolon) not part of a loop'),(90,'ForLoopsMustUseBraces','Braces','Avoid using for statements without curly braces'),(91,'GodClass2','Design','Possible God class (WMC=57, ATFD=14, TCC=0.016129032258064516)'),(92,'InsufficientStringBufferDeclaration2','String and StringBuffer','StringBuffer constructor is initialized with size 52, but has at least 761 characters appended.'),(93,'LogicInversion','Design','Use opposite operator instead of the logic complement operator.'),(94,'NcssMethodCount2','Code Size','The method gerarRelatorio() has an NCSS line count of 125'),(95,'SimplifyBooleanExpressions','Design','Avoid unnecessary comparisons in boolean expressions'),(96,'UnnecessaryCaseChange','String and StringBuffer','Using equalsIgnoreCase() is cleaner than using toUpperCase/toLowerCase().equals().'),(97,'UseConcurrentHashMap','Controversial','If you run in Java5 or newer and have concurrent access, you should use the ConcurrentHashMap implementation'),(98,'UseEqualsToCompareStrings','String and StringBuffer','Use equals() to compare strings instead of \'==\' or \'!=\''),(99,'AvoidReassigningParameters3','Design','Avoid reassigning parameters such as \'i\''),(100,'AvoidRethrowingException','Strict Exceptions','A catch statement that catches an exception only to rethrow it should be avoided.'),(101,'InsufficientStringBufferDeclaration3','String and StringBuffer','StringBuffer constructor is initialized with size 62, but has at least 536 characters appended.'),(102,'InsufficientStringBufferDeclaration4','String and StringBuffer','StringBuffer constructor is initialized with size 62, but has at least 509 characters appended.'),(103,'NcssMethodCount3','Code Size','The method gerarRelatorio() has an NCSS line count of 107'),(104,'AvoidDuplicateLiterals3','String and StringBuffer','The String literal \'demanda\' appears 7 times in this file; the first occurrence is on line 138'),(105,'ConsecutiveLiteralAppends3','String and StringBuffer','StringBuffer (or StringBuilder).append is called 10 consecutive times with literal Strings. Use a single append with a single combined String.'),(106,'NcssMethodCount4','Code Size','The method gerarRelatorio() has an NCSS line count of 108'),(107,'AvoidDuplicateLiterals4','String and StringBuffer','The String literal \'demanda\' appears 7 times in this file; the first occurrence is on line 139'),(108,'UnusedPrivateMethod2','Unused Code','Avoid unused private methods such as \'enviaEmailCancelamentoDemanda(Demanda)\'.'),(109,'UnusedPrivateMethod3','Unused Code','Avoid unused private methods such as \'enviaEmailRejeicaoParticipacao(List)\'.'),(110,'ConsecutiveLiteralAppends4','String and StringBuffer','StringBuffer (or StringBuilder).append is called 9 consecutive times with literal Strings. Use a single append with a single combined String.'),(111,'ConsecutiveLiteralAppends5','String and StringBuffer','StringBuffer (or StringBuilder).append is called 12 consecutive times with literal Strings. Use a single append with a single combined String.'),(112,'InsufficientStringBufferDeclaration5','String and StringBuffer','StringBuffer constructor is initialized with size 52, but has at least 725 characters appended.'),(113,'NcssMethodCount5','Code Size','The method gerarRelatorio() has an NCSS line count of 124');

CREATE TABLE IF NOT EXISTS `D_Severite` (
  `idSeverite` int(11) NOT NULL,
  `severite_name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idSeverite`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


--
-- Fazendo dump de dados para tabela `D_Severite`
--

INSERT INTO `D_Severite` (`idSeverite`, `severite_name`) VALUES
(1, 'muito alta'),
(2, 'alta'),
(3, 'media'),
(4, 'baixa'),
(5, 'muito baixa');

--
-- criando tabelas para o cubo original`
--

CREATE TABLE IF NOT EXISTS `D_Class` (
  `idClass` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(200) DEFAULT NULL,
  `hashcode` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idClass`)

) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=987 ;


CREATE TABLE IF NOT EXISTS `D_Configuration` (
  `idConfiguration` int(11) NOT NULL,
  `configuration_name` varchar(45) DEFAULT NULL,
  `software_reference_name` varchar(45) DEFAULT NULL,
  `language_name` varchar(45) DEFAULT NULL,
  `software_repository_address` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idConfiguration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
--
-- Fazendo dump de dados para tabela `D_Configuration`
--

INSERT INTO `D_Configuration` (`idConfiguration`, `configuration_name`, `software_reference_name`, `language_name`, `software_repository_address`) VALUES
(1, 'Open JDK8 Metrics', 'Open JDK8', 'java', 'http://hg.openjdk.java.net/jdk8'),
(2, 'Tomcat Metrics', 'Tomcat', 'java', 'git://git.apache.org/tomcat70.git');


CREATE TABLE IF NOT EXISTS `D_Metric` (
  `idMetric` int(11) NOT NULL,
  `metric_abbreviation` varchar(45) DEFAULT NULL,
  `metric_name` varchar(45) DEFAULT NULL,
  `metric_category` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMetric`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `D_Metric`
--

INSERT INTO `D_Metric` (`idMetric`, `metric_abbreviation`, `metric_name`, `metric_category`) VALUES
(1, 'LOC', 'Lines of Code', 'Source Code Metric'),
(2, 'ACCM', 'Average Cyclomatic Complexity per Method', 'Source Code Metric'),
(3, 'AMLOC', 'Average Method Lines of Code', 'Source Code Metric'),
(4, 'ACC', 'Afferent Connections per Class', 'Source Code Metric'),
(5, 'ANPM', 'Average Number of Parameters per Method', 'Source Code Metric'),
(6, 'CBO', 'Coupling Between Objects', 'Source Code Metric'),
(7, 'DIT', 'Depth of Inheritance Tree', 'Source Code Metric'),
(8, 'LCOM4', 'Lack of Cohesion in Methods', 'Source Code Metric'),
(9, 'NOC', 'Number of Children', 'Source Code Metric'),
(10, 'NOM', 'Number of Methods', 'Source Code Metric'),
(11, 'NPA', 'Number of Public Attributes', 'Source Code Metric'),
(12, 'RFC', 'Response for Class', 'Source Code Metric');


CREATE TABLE IF NOT EXISTS `D_Project` (
  `idProject` int(11) NOT NULL AUTO_INCREMENT,
  `project_abbreviation` varchar(45) DEFAULT NULL,
  `project_name` varchar(200) DEFAULT NULL,
  `project_language` varchar(45) DEFAULT NULL,
  `organization_owner` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idProject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;


CREATE TABLE IF NOT EXISTS `D_Quality` (
  `idQuality` int(11) NOT NULL,
  `quality_index` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idQuality`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `D_Quality`
--

INSERT INTO `D_Quality` (`idQuality`, `quality_index`) VALUES
(1, 'Excelente'),
(2, 'Bom'),
(3, 'Regular'),
(4, 'Ruim');


CREATE TABLE IF NOT EXISTS `D_Release` (
  `idRelease` int(11) NOT NULL,
  `release_name` varchar(45) DEFAULT NULL,
  `release_number` int(11) DEFAULT NULL,
  PRIMARY KEY (`idRelease`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `D_Scenario_Clean_Code` (
  `idScenario` int(11) NOT NULL,
  `scenario_name` varchar(45) DEFAULT NULL,
  `recomendations` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`idScenario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `D_Scenario_Clean_Code`
--

INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (1, 'Classe Pouco Coesa', 'Reduzir a Subdivisão da Classe');
INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (2, 'Interface dos Métodos', 'Minimizar o número de parâmetros');
INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (3, 'Classes com muitos filhos', 'Trocar Herança por Agregação');
INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (4, 'Classe com métodos grandes e/ou muitos condicionais', 'Quebrar os Métodos');
INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (5, 'Classe com muita Exposição ', 'Reduzir o número de pârametros públicos');
INSERT INTO `source_info`.`D_Scenario_Clean_Code` (`idScenario`, `scenario_name`, `recomendations`) VALUES (6, 'Complexidade Estrutural', 'Reduzir a quantidade de responsabilidades da Classe');

-- --------------------------------------------------------

--
-- Estrutura para tabela `D_Time`
--

CREATE TABLE IF NOT EXISTS `D_Time` (
  `idTime` int(11) NOT NULL,
  `Month` decimal(10,0) DEFAULT NULL,
  `Year` decimal(10,0) DEFAULT NULL,
  PRIMARY KEY (`idTime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



CREATE TABLE IF NOT EXISTS `F_Project_Metric` (
  `idQuality` int(11) NOT NULL AUTO_INCREMENT,
  `percentil_value` double DEFAULT NULL,
  `D_Project_idProject` int(11) NOT NULL,
  `D_Metric_idMetric` int(11) NOT NULL,
  `D_Quality_idQuality` int(11) NOT NULL,
  `D_Configuration_idConfiguration` int(11) NOT NULL,
  `D_Release_idRelease` int(11) NOT NULL,
  `D_Time_idTime` int(11) NOT NULL,
  PRIMARY KEY (`idQuality`),
  KEY `fk_F_Project_Metric_D_Quality1_idx` (`D_Quality_idQuality`),
  KEY `fk_F_Project_Metric_D_Project1_idx` (`D_Project_idProject`),
  KEY `fk_F_Project_Metric_D_Configuration1_idx` (`D_Configuration_idConfiguration`),
  KEY `fk_F_Project_Metric_D_Release1_idx` (`D_Release_idRelease`),
  KEY `fk_F_Project_Metric_D_Time1_idx` (`D_Time_idTime`),
  KEY `fk_F_Project_Metric_D_Metric1_idx` (`D_Metric_idMetric`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=457 ;



CREATE TABLE IF NOT EXISTS `F_Rate_Scenario` (
  `idRateScenario` int(11) NOT NULL AUTO_INCREMENT,
  `RateScenario` double DEFAULT NULL,
  `numberOfClasses` int(11) DEFAULT NULL,
  `Quantiy_Scenarios` double DEFAULT NULL,
  `Quantiy_Violations` double DEFAULT NULL,
  `D_Project_idProject` int(11) NOT NULL,
  `D_Release_idRelease` int(11) NOT NULL,
  PRIMARY KEY (`idRateScenario`),
  UNIQUE KEY `fk_F_Rate_Scenario_D_Release1_idx` (`D_Release_idRelease`),
  KEY `fk_F_Rate_Scenario_D_Project1_idx` (`D_Project_idProject`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10437 ;



CREATE TABLE IF NOT EXISTS `F_Scenario_Class` (
  `idScenarioFact` int(11) NOT NULL AUTO_INCREMENT,
  `quantity_Scenario` int(11) DEFAULT NULL,
  `D_Scenario_Clean_Code_idScenario` int(11) NOT NULL,
  `D_Project_idProject` int(11) NOT NULL,
  `D_Release_idRelease` int(11) NOT NULL,
  `D_Class_idClass` int(11) NOT NULL,
  PRIMARY KEY (`idScenarioFact`),
  KEY `fk_F_Scenario_Class_D_Scenario_Clean_Code1_idx` (`D_Scenario_Clean_Code_idScenario`),
  KEY `fk_F_Scenario_Class_D_Project1_idx` (`D_Project_idProject`),
  KEY `fk_F_Scenario_Class_D_Release1_idx` (`D_Release_idRelease`),
  KEY `fk_F_Scenario_Class_D_Class1_idx` (`D_Class_idClass`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5756 ;

--
-- Criando fato do cubo de violacao`
--

CREATE TABLE IF NOT EXISTS `F_Project_Violation` (
  `idProjectViolation` int(11) NOT NULL AUTO_INCREMENT,
  `quantiy_Violation` double DEFAULT NULL,
  `D_Class_Violation_idClass_violation` int(11) NOT NULL,
  `D_Class_Violation_idRules` int(11) NOT NULL,
  `D_Class_Violation_idSeverite` int(11) NOT NULL,
  `D_Project_idProject` int(11) NOT NULL,
  `D_Release_idRelease` int(11) NOT NULL,
  `D_Time_idTime` int(11) NOT NULL,
  PRIMARY KEY (`idProjectViolation`),
  KEY `fk_F_Project_Violation_D_Class_Violation1_idx` (`D_Class_Violation_idClass_violation`),
  KEY `fk_F_Project_Violation_D_Rules1_idx` (`D_Class_Violation_idRules`),
  KEY `fk_F_Project_Violation_D_Severite1_idx` (`D_Class_Violation_idRules`),
  KEY `fk_F_Project_Violation_D_Project1_idx` (`D_Class_Violation_idSeverite`),
  KEY `fk_F_Project_Violation_D_Release1_idx` (`D_Release_idRelease`),
  KEY `fk_F_Project_Violation_D_Time1_idx` (`D_Time_idTime`)

) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10400;

--
-- Estrutura para tabela `Meta_Metric_Ranges`
--

CREATE TABLE IF NOT EXISTS `Meta_Metric_Ranges` (
  `idMetricRange` int(11) NOT NULL AUTO_INCREMENT,
  `metric_name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `min` double DEFAULT NULL,
  `max` double DEFAULT NULL,
  `language_name` varchar(45) DEFAULT NULL,
  `quality_index` varchar(45) DEFAULT NULL,
  `configuration_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMetricRange`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=97 ;

--
-- Fazendo dump de dados para tabela `Meta_Metric_Ranges`
--

INSERT INTO `Meta_Metric_Ranges` (`idMetricRange`, `metric_name`, `description`, `min`, `max`, `language_name`, `quality_index`, `configuration_name`) VALUES
(1, 'LOC', 'Lines of Code', 0, 33, 'java', 'Excelente', 'Open JDK8 Metrics'),
(2, 'LOC', 'Lines of Code', 34, 87, 'java', 'Bom', 'Open JDK8 Metrics'),
(3, 'LOC', 'Lines of Code', 88, 200, 'java', 'Regular', 'Open JDK8 Metrics'),
(4, 'LOC', 'Lines of Code', 200, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(5, 'LOC', 'Lines of Code', 0, 33, 'java', 'Excelente', 'Tomcat Metrics'),
(6, 'LOC', 'Lines of Code', 34, 105, 'java', 'Bom', 'Tomcat Metrics'),
(7, 'LOC', 'Lines of Code', 106, 276, 'java', 'Regular', 'Tomcat Metrics'),
(8, 'LOC', 'Lines of Code', 276, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(9, 'ACCM', 'Average Cyclomatic Complexity per Method', 0, 2.8, 'java', 'Excelente', 'Open JDK8 Metrics'),
(10, 'ACCM', 'Average Cyclomatic Complexity per Method', 2.9, 4.4, 'java', 'Bom', 'Open JDK8 Metrics'),
(11, 'ACCM', 'Average Cyclomatic Complexity per Method', 4.5, 6, 'java', 'Regular', 'Open JDK8 Metrics'),
(12, 'ACCM', 'Average Cyclomatic Complexity per Method', 6.1, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(13, 'ACCM', 'Average Cyclomatic Complexity per Method', 0, 3.1, 'java', 'Excelente', 'Tomcat Metrics'),
(14, 'ACCM', 'Average Cyclomatic Complexity per Method', 3.1, 4, 'java', 'Bom', 'Tomcat Metrics'),
(15, 'ACCM', 'Average Cyclomatic Complexity per Method', 4.1, 6, 'java', 'Regular', 'Tomcat Metrics'),
(16, 'ACCM', 'Average Cyclomatic Complexity per Method', 6.1, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(17, 'AMLOC', 'Average Method Lines of Code', 0, 8.3, 'java', 'Excelente', 'Open JDK8 Metrics'),
(18, 'AMLOC', 'Average Method Lines of Code', 8.4, 18, 'java', 'Bom', 'Open JDK8 Metrics'),
(19, 'AMLOC', 'Average Method Lines of Code', 19, 34, 'java', 'Regular', 'Open JDK8 Metrics'),
(20, 'AMLOC', 'Average Method Lines of Code', 35, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(21, 'AMLOC', 'Average Method Lines of Code', 0, 8, 'java', 'Excelente', 'Tomcat Metrics'),
(22, 'AMLOC', 'Average Method Lines of Code', 8.1, 16, 'java', 'Bom', 'Tomcat Metrics'),
(23, 'AMLOC', 'Average Method Lines of Code', 16.1, 27, 'java', 'Regular', 'Tomcat Metrics'),
(24, 'AMLOC', 'Average Method Lines of Code', 27, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(25, 'ACC', 'Afferent Connections per Class', 0, 1, 'java', 'Excelente', 'Open JDK8 Metrics'),
(26, 'ACC', 'Afferent Connections per Class', 1.1, 5, 'java', 'Bom', 'Open JDK8 Metrics'),
(27, 'ACC', 'Afferent Connections per Class', 5.1, 12, 'java', 'Regular', 'Open JDK8 Metrics'),
(28, 'ACC', 'Afferent Connections per Class', 12.1, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(29, 'ACC', 'Afferent Connections per Class', 0, 1, 'java', 'Excelente', 'Tomcat Metrics'),
(30, 'ACC', 'Afferent Connections per Class', 1.1, 5, 'java', 'Bom', 'Tomcat Metrics'),
(31, 'ACC', 'Afferent Connections per Class', 5.1, 13, 'java', 'Regular', 'Tomcat Metrics'),
(32, 'ACC', 'Afferent Connections per Class', 13.1, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(33, 'ANPM', 'Average Number of Parameters per Method', 0, 1.5, 'java', 'Excelente', 'Open JDK8 Metrics'),
(34, 'ANPM', 'Average Number of Parameters per Method', 1.6, 2.3, 'java', 'Bom', 'Open JDK8 Metrics'),
(35, 'ANPM', 'Average Number of Parameters per Method', 2.4, 3, 'java', 'Regular', 'Open JDK8 Metrics'),
(36, 'ANPM', 'Average Number of Parameters per Method', 3.1, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(37, 'ANPM', 'Average Number of Parameters per Method', 0, 2, 'java', 'Excelente', 'Tomcat Metrics'),
(38, 'ANPM', 'Average Number of Parameters per Method', 2.1, 3, 'java', 'Bom', 'Tomcat Metrics'),
(39, 'ANPM', 'Average Number of Parameters per Method', 3.1, 5, 'java', 'Regular', 'Tomcat Metrics'),
(40, 'ANPM', 'Average Number of Parameters per Method', 5.1, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(41, 'CBO', 'Coupling Between Objects', 0, 3, 'java', 'Excelente', 'Open JDK8 Metrics'),
(42, 'CBO', 'Coupling Between Objects', 4, 6, 'java', 'Bom', 'Open JDK8 Metrics'),
(43, 'CBO', 'Coupling Between Objects', 7, 9, 'java', 'Regular', 'Open JDK8 Metrics'),
(44, 'CBO', 'Coupling Between Objects', 10, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(45, 'CBO', 'Coupling Between Objects', 0, 2, 'java', 'Excelente', 'Tomcat Metrics'),
(46, 'CBO', 'Coupling Between Objects', 3, 5, 'java', 'Bom', 'Tomcat Metrics'),
(47, 'CBO', 'Coupling Between Objects', 5, 7, 'java', 'Regular', 'Tomcat Metrics'),
(48, 'CBO', 'Coupling Between Objects', 8, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(49, 'DIT', 'Depth of Inheritance Tree', 0, 2, 'java', 'Excelente', 'Open JDK8 Metrics'),
(50, 'DIT', 'Depth of Inheritance Tree', 3, 4, 'java', 'Bom', 'Open JDK8 Metrics'),
(51, 'DIT', 'Depth of Inheritance Tree', 5, 6, 'java', 'Regular', 'Open JDK8 Metrics'),
(52, 'DIT', 'Depth of Inheritance Tree', 7, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(53, 'DIT', 'Depth of Inheritance Tree', 0, 1, 'java', 'Excelente', 'Tomcat Metrics'),
(54, 'DIT', 'Depth of Inheritance Tree', 2, 3, 'java', 'Bom', 'Tomcat Metrics'),
(55, 'DIT', 'Depth of Inheritance Tree', 4, 4, 'java', 'Regular', 'Tomcat Metrics'),
(56, 'DIT', 'Depth of Inheritance Tree', 5, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(57, 'LCOM4', 'Lack of Cohesion in Methods', 0, 3, 'java', 'Excelente', 'Open JDK8 Metrics'),
(58, 'LCOM4', 'Lack of Cohesion in Methods', 4, 7, 'java', 'Bom', 'Open JDK8 Metrics'),
(59, 'LCOM4', 'Lack of Cohesion in Methods', 8, 12, 'java', 'Regular', 'Open JDK8 Metrics'),
(60, 'LCOM4', 'Lack of Cohesion in Methods', 13, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(61, 'LCOM4', 'Lack of Cohesion in Methods', 0, 3, 'java', 'Excelente', 'Tomcat Metrics'),
(62, 'LCOM4', 'Lack of Cohesion in Methods', 4, 7, 'java', 'Bom', 'Tomcat Metrics'),
(63, 'LCOM4', 'Lack of Cohesion in Methods', 8, 11, 'java', 'Regular', 'Tomcat Metrics'),
(64, 'LCOM4', 'Lack of Cohesion in Methods', 12, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(65, 'NOC', 'Number of Children', 0, 0, 'java', 'Excelente', 'Open JDK8 Metrics'),
(66, 'NOC', 'Number of Children', 1, 2, 'java', 'Bom', 'Open JDK8 Metrics'),
(67, 'NOC', 'Number of Children', 3, 3, 'java', 'Regular', 'Open JDK8 Metrics'),
(68, 'NOC', 'Number of Children', 4, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(69, 'NOC', 'Number of Children', 0, 0, 'java', 'Excelente', 'Tomcat Metrics'),
(70, 'NOC', 'Number of Children', 1, 2, 'java', 'Bom', 'Tomcat Metrics'),
(71, 'NOC', 'Number of Children', 3, 3, 'java', 'Regular', 'Tomcat Metrics'),
(72, 'NOC', 'Number of Children', 4, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(73, 'NOM', 'Number of Methods', 0, 8, 'java', 'Excelente', 'Open JDK8 Metrics'),
(74, 'NOM', 'Number of Methods', 9, 17, 'java', 'Bom', 'Open JDK8 Metrics'),
(75, 'NOM', 'Number of Methods', 18, 27, 'java', 'Regular', 'Open JDK8 Metrics'),
(76, 'NOM', 'Number of Methods', 28, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(77, 'NOM', 'Number of Methods', 0, 10, 'java', 'Excelente', 'Tomcat Metrics'),
(78, 'NOM', 'Number of Methods', 11, 21, 'java', 'Bom', 'Tomcat Metrics'),
(79, 'NOM', 'Number of Methods', 22, 35, 'java', 'Regular', 'Tomcat Metrics'),
(80, 'NOM', 'Number of Methods', 36, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(81, 'NPA', 'Number of Public Attributes', 0, 0, 'java', 'Excelente', 'Open JDK8 Metrics'),
(82, 'NPA', 'Number of Public Attributes', 1, 1, 'java', 'Bom', 'Open JDK8 Metrics'),
(83, 'NPA', 'Number of Public Attributes', 2, 3, 'java', 'Regular', 'Open JDK8 Metrics'),
(84, 'NPA', 'Number of Public Attributes', 4, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(85, 'NPA', 'Number of Public Attributes', 0, 0, 'java', 'Excelente', 'Tomcat Metrics'),
(86, 'NPA', 'Number of Public Attributes', 1, 1, 'java', 'Bom', 'Tomcat Metrics'),
(87, 'NPA', 'Number of Public Attributes', 2, 3, 'java', 'Regular', 'Tomcat Metrics'),
(88, 'NPA', 'Number of Public Attributes', 4, 4294967295, 'java', 'Ruim', 'Tomcat Metrics'),
(89, 'RFC', 'Response for Class', 0, 9, 'java', 'Excelente', 'Open JDK8 Metrics'),
(90, 'RFC', 'Response for Class', 10, 26, 'java', 'Bom', 'Open JDK8 Metrics'),
(91, 'RFC', 'Response for Class', 27, 59, 'java', 'Regular', 'Open JDK8 Metrics'),
(92, 'RFC', 'Response for Class', 60, 4294967295, 'java', 'Ruim', 'Open JDK8 Metrics'),
(93, 'RFC', 'Response for Class', 0, 11, 'java', 'Excelente', 'Tomcat Metrics'),
(94, 'RFC', 'Response for Class', 12, 30, 'java', 'Bom', 'Tomcat Metrics'),
(95, 'RFC', 'Response for Class', 31, 74, 'java', 'Regular', 'Tomcat Metrics'),
(96, 'RFC', 'Response for Class', 75, 4294967295, 'java', 'Ruim', 'Tomcat Metrics');


CREATE TABLE IF NOT EXISTS `Meta_Metric_Ranges_Meta_Scenario` (
  `idMeta_Scenario_Ranges` int(11) NOT NULL,
  `Meta_Scenario_idMeta_Scenario` int(11) DEFAULT NULL,
  `Meta_Metric_Ranges_idMetricRange1` int(11) DEFAULT NULL,
  `Meta_Metric_Ranges_idMetricRange2` int(11) DEFAULT NULL,
  PRIMARY KEY (`idMeta_Scenario_Ranges`),
  KEY `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Scenario1_idx` (`Meta_Scenario_idMeta_Scenario`),
  KEY `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Metric_Ranges1_idx` (`Meta_Metric_Ranges_idMetricRange1`),
  KEY `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Metric_Ranges2_idx` (`Meta_Metric_Ranges_idMetricRange2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `Meta_Metric_Ranges_Meta_Scenario`
--

INSERT INTO `Meta_Metric_Ranges_Meta_Scenario` (`idMeta_Scenario_Ranges`, `Meta_Scenario_idMeta_Scenario`, `Meta_Metric_Ranges_idMetricRange1`, `Meta_Metric_Ranges_idMetricRange2`) VALUES
(1, 1, 59, 91),
(2, 1, 59, 92),
(3, 1, 60, 91),
(4, 1, 60, 92),
(5, 2, 35, NULL),
(6, 2, 36, NULL),
(7, 3, 67, NULL),
(8, 3, 68, NULL),
(9, 4, 11, 19),
(10, 4, 11, 20),
(11, 4, 12, 19),
(12, 4, 12, 20),
(13, 5, 83, NULL),
(14, 5, 84, NULL),
(15, 6, 43, 59),
(16, 6, 43, 60),
(17, 6, 44, 59),
(18, 6, 44, 60);

-- --------------------------------------------------------

--
-- Estrutura para tabela `Meta_Scenario`
--

CREATE TABLE IF NOT EXISTS `Meta_Scenario` (
  `idMeta_Scenario` int(11) NOT NULL DEFAULT '0',
  `name_meta_scenario` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idMeta_Scenario`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Fazendo dump de dados para tabela `Meta_Scenario`
--

INSERT INTO `Meta_Scenario` (`idMeta_Scenario`, `name_meta_scenario`) VALUES
(1, 'Classe Pouco Coesa'),
(2, 'Interface dos Métodos'),
(3, 'Classes com muitos filhos'),
(4, 'Classe com métodos grandes e/ou muitos condic'),
(5, 'Classe com muita Exposição '),
(6, 'Complexidade Estrutural');

--
-- Restrições para dumps de tabelas
--

--
-- Restrições para tabelas `F_Project_Metric`
--
ALTER TABLE `F_Project_Metric`
  ADD CONSTRAINT `fk_F_Project_Metric_D_Configuration1` FOREIGN KEY (`D_Configuration_idConfiguration`) REFERENCES `D_Configuration` (`idConfiguration`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Metric_D_Metric1` FOREIGN KEY (`D_Metric_idMetric`) REFERENCES `D_Metric` (`idMetric`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Metric_D_Project1` FOREIGN KEY (`D_Project_idProject`) REFERENCES `D_Project` (`idProject`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Metric_D_Quality1` FOREIGN KEY (`D_Quality_idQuality`) REFERENCES `D_Quality` (`idQuality`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Metric_D_Release1` FOREIGN KEY (`D_Release_idRelease`) REFERENCES `D_Release` (`idRelease`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Metric_D_Time1` FOREIGN KEY (`D_Time_idTime`) REFERENCES `D_Time` (`idTime`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `F_Rate_Scenario`
--
ALTER TABLE `F_Rate_Scenario`
  ADD CONSTRAINT `fk_F_Rate_Scenario_D_Project1` FOREIGN KEY (`D_Project_idProject`) REFERENCES `D_Project` (`idProject`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Rate_Scenario_D_Release1` FOREIGN KEY (`D_Release_idRelease`) REFERENCES `D_Release` (`idRelease`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `F_Scenario_Class`
--
ALTER TABLE `F_Scenario_Class`
  ADD CONSTRAINT `fk_F_Scenario_Class_D_Scenario_Clean_Code1` FOREIGN KEY (`D_Scenario_Clean_Code_idScenario`) REFERENCES `D_Scenario_Clean_Code` (`idScenario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Scenario_Class_D_Project1` FOREIGN KEY (`D_Project_idProject`) REFERENCES `D_Project` (`idProject`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Scenario_Class_D_Release1` FOREIGN KEY (`D_Release_idRelease`) REFERENCES `D_Release` (`idRelease`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Scenario_Class_D_Class1` FOREIGN KEY (`D_Class_idClass`) REFERENCES `D_Class` (`idClass`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Restrições para tabelas `F_Project_Violation`
--
ALTER TABLE `F_Project_Violation`
  ADD CONSTRAINT `fk_F_Project_Violation_D_Class_Violation1` FOREIGN KEY (`D_Class_Violation_idClass_violation`) REFERENCES `D_Class_Violation` (`idClass_violation`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Violation_D_Rules1` FOREIGN KEY (`D_Class_Violation_idRules`) REFERENCES `D_Rules` (`idRules`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Violation_D_Severite1` FOREIGN KEY (`D_Class_Violation_idSeverite`) REFERENCES `D_Severite` (`idSeverite`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Violation_D_Project1` FOREIGN KEY (`D_Project_idProject`) REFERENCES `D_Project` (`idProject`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Violation_D_Release1` FOREIGN KEY (`D_Release_idRelease`) REFERENCES `D_Release` (`idRelease`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_F_Project_Violation_D_Time1` FOREIGN KEY (`D_Time_idTime`) REFERENCES `D_Time` (`idTime`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Restrições para tabelas `Meta_Metric_Ranges_Meta_Scenario`
--
ALTER TABLE `Meta_Metric_Ranges_Meta_Scenario`
  ADD CONSTRAINT `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Metric_Ranges1` FOREIGN KEY (`Meta_Metric_Ranges_idMetricRange1`) REFERENCES `Meta_Metric_Ranges` (`idMetricRange`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Scenario1` FOREIGN KEY (`Meta_Scenario_idMeta_Scenario`) REFERENCES `Meta_Scenario` (`idMeta_Scenario`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_Meta_Metric_Ranges_has_Meta_Scenario_Meta_Metric_Ranges2` FOREIGN KEY (`Meta_Metric_Ranges_idMetricRange2`) REFERENCES `Meta_Metric_Ranges` (`idMetricRange`) ON DELETE NO ACTION ON UPDATE NO ACTION;
