#include <QtCore>
#include "OpenModelicaScriptingAPI.h"

class OMCInterface : public QObject
{
  Q_OBJECT
public:
  threadData_t *threadData;
  OMCInterface(threadData_t *td);
  typedef struct {
    modelica_boolean success;
    QString moFile;
    QString qtFile;
    QString qtHeader;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + moFile + "\"");
      resultBuffer.append(",");
      resultBuffer.append("\"" + qtFile + "\"");
      resultBuffer.append(",");
      resultBuffer.append("\"" + qtHeader + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } generateScriptingAPI_res;
  generateScriptingAPI_res generateScriptingAPI(QString cl, QString name);
  modelica_boolean deleteInitialState(QString cl, QString state);
  QList<QList<QString > > getInitialStates(QString cl);
  modelica_boolean deleteTransition(QString cl, QString from, QString to, QString condition, modelica_boolean immediate, modelica_boolean reset, modelica_boolean synchronize, modelica_integer priority);
  QList<QList<QString > > getTransitions(QString cl);
  typedef struct {
    QString restriction;
    QString comment;
    modelica_boolean partialPrefix;
    modelica_boolean finalPrefix;
    modelica_boolean encapsulatedPrefix;
    QString fileName;
    modelica_boolean fileReadOnly;
    modelica_integer lineNumberStart;
    modelica_integer columnNumberStart;
    modelica_integer lineNumberEnd;
    modelica_integer columnNumberEnd;
    QList<QString > dimensions;
    modelica_boolean isProtectedClass;
    modelica_boolean isDocumentationClass;
    QString version;
    QString preferredView;
    modelica_boolean state;
    QString access;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append("\"" + restriction + "\"");
      resultBuffer.append(",");
      resultBuffer.append("\"" + comment + "\"");
      resultBuffer.append(",");
      resultBuffer.append(partialPrefix ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(finalPrefix ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(encapsulatedPrefix ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + fileName + "\"");
      resultBuffer.append(",");
      resultBuffer.append(fileReadOnly ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(QString::number(lineNumberStart));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(columnNumberStart));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(lineNumberEnd));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(columnNumberEnd));
      resultBuffer.append(",");
      resultBuffer.append("{");
      int dimensions_i = 0;
      foreach(QString dimensions_elt, dimensions) {
        if (dimensions_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + dimensions_elt + "\"");
        dimensions_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(",");
      resultBuffer.append(isProtectedClass ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(isDocumentationClass ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + version + "\"");
      resultBuffer.append(",");
      resultBuffer.append("\"" + preferredView + "\"");
      resultBuffer.append(",");
      resultBuffer.append(state ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + access + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getClassInformation_res;
  getClassInformation_res getClassInformation(QString cl);
  QList<QString > sortStrings(QList<QString > arr);
  modelica_boolean checkInterfaceOfPackages(QString cl, QList<QList<QString > > dependencyMatrix);
  modelica_boolean GC_set_max_heap_size(modelica_integer size);
  modelica_boolean GC_expand_hp(modelica_integer size);
  void GC_gcollect_and_unmap();
  modelica_real getMemorySize();
  void threadWorkFailed();
  void exit(modelica_integer status);
  QList<modelica_boolean > runScriptParallel(QList<QString > scripts, modelica_integer numThreads, modelica_boolean useThreads);
  modelica_integer numProcessors();
  void generateEntryPoint(QString fileName, QString entryPoint, QString url);
  QString getDerivedClassModifierValue(QString className, QString modifierName);
  QList<QString > getDerivedClassModifierNames(QString className);
  QList<QList<QString > > getUses(QString pack);
  QList<QString > getAvailableLibraries();
  QList<QString > searchClassNames(QString searchText, modelica_boolean findInText);
  modelica_boolean extendsFrom(QString className, QString baseClassName);
  modelica_boolean getBooleanClassAnnotation(QString className, QString annotationName);
  modelica_boolean classAnnotationExists(QString className, QString annotationName);
  QString getAnnotationModifierValue(QString name, QString vendorannotation, QString modifiername);
  QList<QString > getAnnotationNamedModifiers(QString name, QString vendorannotation);
  typedef struct {
    modelica_real startTime;
    modelica_real stopTime;
    modelica_real tolerance;
    modelica_integer numberOfIntervals;
    modelica_real interval;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(QString::number(startTime));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(stopTime));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(tolerance));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(numberOfIntervals));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(interval));
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getSimulationOptions_res;
  getSimulationOptions_res getSimulationOptions(QString name, modelica_real defaultStartTime, modelica_real defaultStopTime, modelica_real defaultTolerance, modelica_integer defaultNumberOfIntervals, modelica_real defaultInterval);
  modelica_boolean isExperiment(QString name);
  QList<QString > getInheritedClasses(QString name);
  QString getBuiltinType(QString cl);
  modelica_boolean isProtectedClass(QString cl, QString c2);
  modelica_boolean isOperatorFunction(QString cl);
  modelica_boolean isOperatorRecord(QString cl);
  modelica_boolean isOperator(QString cl);
  modelica_boolean isEnumeration(QString cl);
  modelica_boolean isOptimization(QString cl);
  modelica_boolean isConnector(QString cl);
  modelica_boolean isModel(QString cl);
  modelica_boolean isPartial(QString cl);
  modelica_boolean isFunction(QString cl);
  modelica_boolean isBlock(QString cl);
  modelica_boolean isRecord(QString cl);
  modelica_boolean isClass(QString cl);
  modelica_boolean isPackage(QString cl);
  modelica_boolean isType(QString cl);
  QString getClassRestriction(QString cl);
  QString basename(QString path);
  QString dirname(QString path);
  QString getClassComment(QString cl);
  QList<QString > typeNameStrings(QString cl);
  QString typeNameString(QString cl);
  QString stringTypeName(QString str);
  typedef struct {
    modelica_real timeStamp;
    QString timeStampAsString;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(QString::number(timeStamp));
      resultBuffer.append(",");
      resultBuffer.append("\"" + timeStampAsString + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getTimeStamp_res;
  getTimeStamp_res getTimeStamp(QString cl);
  modelica_boolean setDocumentationAnnotation(QString class_, QString info, QString revisions);
  QList<QString > getDocumentationAnnotation(QString cl);
  QString iconv(QString string, QString from, QString to);
  QList<QString > getNthImport(QString class_, modelica_integer index);
  modelica_integer getImportCount(QString class_);
  QString getNthAnnotationString(QString class_, modelica_integer index);
  modelica_integer getAnnotationCount(QString class_);
  QString getNthInitialEquationItem(QString class_, modelica_integer index);
  modelica_integer getInitialEquationItemsCount(QString class_);
  QString getNthEquationItem(QString class_, modelica_integer index);
  modelica_integer getEquationItemsCount(QString class_);
  QString getNthInitialEquation(QString class_, modelica_integer index);
  modelica_integer getInitialEquationCount(QString class_);
  QString getNthEquation(QString class_, modelica_integer index);
  modelica_integer getEquationCount(QString class_);
  QString getNthInitialAlgorithmItem(QString class_, modelica_integer index);
  modelica_integer getInitialAlgorithmItemsCount(QString class_);
  QString getNthAlgorithmItem(QString class_, modelica_integer index);
  modelica_integer getAlgorithmItemsCount(QString class_);
  QString getNthInitialAlgorithm(QString class_, modelica_integer index);
  modelica_integer getInitialAlgorithmCount(QString class_);
  QString getNthAlgorithm(QString class_, modelica_integer index);
  modelica_integer getAlgorithmCount(QString class_);
  QList<QString > getNthConnection(QString className, modelica_integer index);
  modelica_integer getConnectionCount(QString className);
  modelica_boolean removeExtendsModifiers(QString className, QString baseClassName, modelica_boolean keepRedeclares);
  modelica_boolean removeComponentModifiers(QString class_, QString componentName, modelica_boolean keepRedeclares);
  QList<QString > getInstantiatedParametersAndValues(QString cls);
  QString getComponentModifierValues(QString class_, QString modifier);
  QString getComponentModifierValue(QString class_, QString modifier);
  QList<QString > getComponentModifierNames(QString class_, QString componentName);
  QString getParameterValue(QString class_, QString parameterName);
  QList<QString > getParameterNames(QString class_);
  modelica_boolean closeSimulationResultFile();
  QList<QString > checkCodeGraph(QString graphfile, QString codefile);
  QList<QString > checkTaskGraph(QString filename, QString reffilename);
  QString diffSimulationResultsHtml(QString var, QString actualFile, QString expectedFile, modelica_real relTol, modelica_real relTolDiffMinMax, modelica_real rangeDelta);
  typedef struct {
    modelica_boolean success;
    QList<QString > failVars;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("{");
      int failVars_i = 0;
      foreach(QString failVars_elt, failVars) {
        if (failVars_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + failVars_elt + "\"");
        failVars_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } diffSimulationResults_res;
  diffSimulationResults_res diffSimulationResults(QString actualFile, QString expectedFile, QString diffPrefix, modelica_real relTol, modelica_real relTolDiffMinMax, modelica_real rangeDelta, QList<QString > vars, modelica_boolean keepEqualResults);
  modelica_real deltaSimulationResults(QString filename, QString reffilename, QString method, QList<QString > vars);
  QList<QString > compareSimulationResults(QString filename, QString reffilename, QString logfilename, modelica_real relTol, modelica_real absTol, QList<QString > vars);
  modelica_boolean filterSimulationResults(QString inFile, QString outFile, QList<QString > vars, modelica_integer numberOfIntervals, modelica_boolean removeDescription);
  QList<QString > readSimulationResultVars(QString fileName, modelica_boolean readParameters, modelica_boolean openmodelicaStyle);
  modelica_integer readSimulationResultSize(QString fileName);
  modelica_boolean plotAll(modelica_boolean externalWindow, QString fileName, QString title, QString grid, modelica_boolean logX, modelica_boolean logY, QString xLabel, QString yLabel, QList<modelica_real > xRange, QList<modelica_real > yRange, modelica_real curveWidth, modelica_integer curveStyle, QString legendPosition, QString footer, modelica_boolean autoScale, modelica_boolean forceOMPlot);
  QList<QString > getPackages(QString class_);
  QList<QString > getUsedClassNames(QString className);
  QList<QString > getClassNames(QString class_, modelica_boolean recursive, modelica_boolean qualified, modelica_boolean sort, modelica_boolean builtin, modelica_boolean showProtected, modelica_boolean includeConstants);
  modelica_boolean setClassComment(QString class_, QString filename);
  modelica_boolean isShortDefinition(QString class_);
  modelica_boolean setSourceFile(QString class_, QString filename);
  QString getSourceFile(QString class_);
  modelica_boolean copyClass(QString className, QString newClassName, QString withIn);
  modelica_boolean moveClassToBottom(QString className);
  modelica_boolean moveClassToTop(QString className);
  modelica_boolean moveClass(QString className, modelica_integer offset);
  QList<QString > reduceTerms(QString className, modelica_real startTime, modelica_real stopTime, modelica_integer numberOfIntervals, modelica_real tolerance, QString method, QString fileNamePrefix, QString options, QString outputFormat, QString variableFilter, QString cflags, QString simflags, QString labelstoCancel);
  QList<QString > buildLabel(QString className, modelica_real startTime, modelica_real stopTime, modelica_integer numberOfIntervals, modelica_real tolerance, QString method, QString fileNamePrefix, QString options, QString outputFormat, QString variableFilter, QString cflags, QString simflags);
  typedef struct {
    modelica_boolean success;
    QString commandOutput;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + commandOutput + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } buildEncryptedPackage_res;
  buildEncryptedPackage_res buildEncryptedPackage(QString className);
  QString buildModelFMU(QString className, QString version, QString fmuType, QString fileNamePrefix, QList<QString > platforms, modelica_boolean includeResources);
  QString translateModelFMU(QString className, QString version, QString fmuType, QString fileNamePrefix, modelica_boolean includeResources);
  QString importFMUModelDescription(QString filename, QString workdir, modelica_integer loglevel, modelica_boolean fullPath, modelica_boolean debugLogging, modelica_boolean generateInputConnectors, modelica_boolean generateOutputConnectors);
  QString importFMU(QString filename, QString workdir, modelica_integer loglevel, modelica_boolean fullPath, modelica_boolean debugLogging, modelica_boolean generateInputConnectors, modelica_boolean generateOutputConnectors);
  QList<QList<QString > > getLoadedLibraries();
  QString uriToFilename(QString uri);
  modelica_boolean rewriteBlockCall(QString className, QString inDefs);
  modelica_boolean generateVerificationScenarios(QString path);
  modelica_boolean inferBindings(QString path);
  modelica_boolean exportToFigaro(QString path, QString directory, QString database, QString mode, QString options, QString processor);
  QString listFile(QString class_);
  QString stringReplace(QString str, QString source, QString target);
  QList<QString > stringSplit(QString string, QString token);
  QList<QString > strtok(QString string, QString token);
  QList<QString > listVariables();
  QList<QString > getDerivedUnits(QString baseUnit);
  typedef struct {
    modelica_boolean unitsCompatible;
    modelica_real scaleFactor;
    modelica_real offset;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(unitsCompatible ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(QString::number(scaleFactor));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(offset));
      resultBuffer.append(")");
      return resultBuffer;
    }
  } convertUnits_res;
  convertUnits_res convertUnits(QString s1, QString s2);
  typedef struct {
    modelica_boolean success;
    QString xmlfileName;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + xmlfileName + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } createXML2RTE_res;
  createXML2RTE_res createXML2RTE(QString className, QString rewriteRulesFile);
  typedef struct {
    modelica_boolean success;
    QString xmlfileName;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append("\"" + xmlfileName + "\"");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } dumpXMLDAE_res;
  dumpXMLDAE_res dumpXMLDAE(QString className, QString translationLevel, modelica_boolean addOriginalIncidenceMatrix, modelica_boolean addSolvingInfo, modelica_boolean addMathMLCode, modelica_boolean dumpResiduals, QString fileNamePrefix, QString rewriteRulesFile);
  QString translateGraphics(QString className);
  modelica_boolean save(QString className);
  modelica_boolean saveTotalModel(QString fileName, QString className, modelica_boolean stripAnnotations, modelica_boolean stripComments);
  modelica_boolean saveModel(QString fileName, QString className);
  modelica_boolean deleteFile(QString fileName);
  modelica_boolean loadModel(QString className, QList<QString > priorityVersion, modelica_boolean notify, QString languageStandard, modelica_boolean requireExactVersion);
  modelica_boolean generateCode(QString className);
  QString runOpenTURNSPythonScript(QString pythonScriptFile);
  QString buildOpenTURNSInterface(QString className, QString pythonTemplateFile, modelica_boolean showFlatModelica);
  QString instantiateModel(QString className);
  QString checkAllModelsRecursive(QString className, modelica_boolean checkProtected);
  QString checkModel(QString className);
  modelica_boolean remove(QString path);
  modelica_boolean copy(QString source, QString destination);
  modelica_boolean mkdir(QString newDirectory);
  QString cd(QString newWorkingDirectory);
  QString getAstAsCorbaString(QString fileName);
  QString getLanguageStandard();
  modelica_boolean getOrderConnections();
  modelica_boolean getShowAnnotations();
  modelica_boolean setShowAnnotations(modelica_boolean show);
  modelica_integer getDefaultOpenCLDevice();
  modelica_integer getVectorizationLimit();
  modelica_boolean setNoSimplify(modelica_boolean noSimplify);
  modelica_boolean getNoSimplify();
  QString getAnnotationVersion();
  QString getClassesInModelicaPath();
  modelica_boolean echo(modelica_boolean setEcho);
  QString runScript(QString fileName);
  modelica_boolean clearMessages();
  typedef struct {
    modelica_integer numMessages;
    modelica_integer numErrors;
    modelica_integer numWarnings;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(QString::number(numMessages));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(numErrors));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(numWarnings));
      resultBuffer.append(")");
      return resultBuffer;
    }
  } countMessages_res;
  countMessages_res countMessages();
  QString getMessagesString();
  QString getErrorString(modelica_boolean warningsAsErrors);
  QString readFileNoNumeric(QString fileName);
  modelica_integer alarm(modelica_integer seconds);
  modelica_boolean compareFiles(QString file1, QString file2);
  modelica_boolean compareFilesAndMove(QString newFile, QString oldFile);
  modelica_boolean writeFile(QString fileName, QString data, modelica_boolean append);
  QString readFile(QString fileName);
  typedef struct {
    modelica_boolean success;
    modelica_real fileSize;
    modelica_real mtime;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append(success ? "true" : "false");
      resultBuffer.append(",");
      resultBuffer.append(QString::number(fileSize));
      resultBuffer.append(",");
      resultBuffer.append(QString::number(mtime));
      resultBuffer.append(")");
      return resultBuffer;
    }
  } stat_res;
  stat_res stat(QString fileName);
  QString getVersion(QString cl);
  modelica_boolean clearCommandLineOptions();
  typedef struct {
    QList<QString > validOptions;
    QString mainDescription;
    QList<QString > descriptions;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append("{");
      int validOptions_i = 0;
      foreach(QString validOptions_elt, validOptions) {
        if (validOptions_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + validOptions_elt + "\"");
        validOptions_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(",");
      resultBuffer.append("\"" + mainDescription + "\"");
      resultBuffer.append(",");
      resultBuffer.append("{");
      int descriptions_i = 0;
      foreach(QString descriptions_elt, descriptions) {
        if (descriptions_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + descriptions_elt + "\"");
        descriptions_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getConfigFlagValidOptions_res;
  getConfigFlagValidOptions_res getConfigFlagValidOptions(QString flag);
  QList<QString > getCommandLineOptions();
  modelica_boolean setCommandLineOptions(QString option);
  typedef struct {
    QList<QString > allChoices;
    QList<QString > allComments;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append("{");
      int allChoices_i = 0;
      foreach(QString allChoices_elt, allChoices) {
        if (allChoices_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allChoices_elt + "\"");
        allChoices_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(",");
      resultBuffer.append("{");
      int allComments_i = 0;
      foreach(QString allComments_elt, allComments) {
        if (allComments_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allComments_elt + "\"");
        allComments_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getAvailableTearingMethods_res;
  getAvailableTearingMethods_res getAvailableTearingMethods();
  QString getTearingMethod();
  typedef struct {
    QList<QString > allChoices;
    QList<QString > allComments;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append("{");
      int allChoices_i = 0;
      foreach(QString allChoices_elt, allChoices) {
        if (allChoices_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allChoices_elt + "\"");
        allChoices_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(",");
      resultBuffer.append("{");
      int allComments_i = 0;
      foreach(QString allComments_elt, allComments) {
        if (allComments_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allComments_elt + "\"");
        allComments_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getAvailableIndexReductionMethods_res;
  getAvailableIndexReductionMethods_res getAvailableIndexReductionMethods();
  QString getIndexReductionMethod();
  typedef struct {
    QList<QString > allChoices;
    QList<QString > allComments;
    QString toString() {
      QString resultBuffer = "(";
      resultBuffer.append("{");
      int allChoices_i = 0;
      foreach(QString allChoices_elt, allChoices) {
        if (allChoices_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allChoices_elt + "\"");
        allChoices_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(",");
      resultBuffer.append("{");
      int allComments_i = 0;
      foreach(QString allComments_elt, allComments) {
        if (allComments_i) {
          resultBuffer.append(",");
        }
        resultBuffer.append("\"" + allComments_elt + "\"");
        allComments_i++;
      }
      resultBuffer.append("}");
      resultBuffer.append(")");
      return resultBuffer;
    }
  } getAvailableMatchingAlgorithms_res;
  getAvailableMatchingAlgorithms_res getAvailableMatchingAlgorithms();
  QString getMatchingAlgorithm();
  modelica_boolean clearDebugFlags();
  modelica_boolean setCompilerFlags(QString compilerFlags);
  QString getModelicaPath();
  modelica_boolean setModelicaPath(QString modelicaPath);
  QString getInstallationDirectoryPath();
  modelica_boolean setInstallationDirectoryPath(QString installationDirectoryPath);
  modelica_boolean setEnvironmentVar(QString var, QString value);
  QString getEnvironmentVar(QString var);
  QString getTempDirectoryPath();
  modelica_boolean setTempDirectoryPath(QString tempDirectoryPath);
  modelica_boolean setPlotCommand(QString plotCommand);
  modelica_boolean setCompileCommand(QString compileCommand);
  QString getCompileCommand();
  modelica_boolean setCompilerPath(QString compilerPath);
  modelica_boolean verifyCompiler();
  modelica_boolean setCXXCompiler(QString compiler);
  QString getCXXCompiler();
  QString getCFlags();
  modelica_boolean setCFlags(QString inString);
  modelica_boolean setCompiler(QString compiler);
  QString getCompiler();
  modelica_boolean setLinkerFlags(QString linkerFlags);
  QString getLinkerFlags();
  modelica_boolean setLinker(QString linker);
  QString getLinker();
  modelica_boolean generateSeparateCodeDependenciesMakefile(QString filename, QString directory, QString suffix);
  QList<QString > generateSeparateCodeDependencies(QString stampSuffix);
  modelica_boolean generateSeparateCode(QString className, modelica_boolean cleanCache);
  modelica_boolean generateHeader(QString fileName);
  modelica_boolean clearVariables();
  modelica_boolean clearProgram();
  modelica_boolean clear();
  QString help(QString topic);
  modelica_boolean saveAll(QString fileName);
  QList<modelica_integer > system_parallel(QList<QString > callStr, modelica_integer numThreads);
  modelica_integer system(QString callStr, QString outputFile);
  QList<QString > loadFileInteractive(QString filename, QString encoding);
  QList<QString > loadFileInteractiveQualified(QString filename, QString encoding);
  QList<QString > parseFile(QString filename, QString encoding);
  QList<QString > parseString(QString data, QString filename);
  modelica_boolean loadString(QString data, QString filename, QString encoding, modelica_boolean merge);
  modelica_boolean reloadClass(QString name, QString encoding);
  modelica_boolean loadEncryptedPackage(QString fileName, QString workdir);
  modelica_boolean loadFiles(QList<QString > fileNames, QString encoding, modelica_integer numThreads);
  modelica_boolean loadFile(QString fileName, QString encoding, modelica_boolean uses);
signals:
  void logCommand(QString command, QTime *commandTime);
  void logResponse(QString command, QString response, QTime *responseTime);
  void throwException(QString exception);
};