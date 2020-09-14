within OpenEMTP.Examples;

model RLC
  OpenEMTP.Electrical.RLC_Branches.Ground g annotation(
    Placement(visible = true, transformation(origin = {0, -40}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenEMTP.Electrical.Sources.CosineVoltage ac(Phase = 0, Vm = 230, f = 60)  annotation(
    Placement(visible = true, transformation(origin = {-60, -8}, extent = {{-10, -10}, {10, 10}}, rotation = -90)));
  Electrical.RLC_Branches.SeriesRLC rlc(C = 5e-6, L = 150e-3, R = 10, i0 = 0, v0 = 0)  annotation(
    Placement(visible = true, transformation(origin = {-18, 20}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(ac.n, g.p) annotation(
    Line(points = {{-60, -18}, {-60, -18}, {-60, -30}, {0, -30}, {0, -30}}, color = {0, 0, 255}));
  connect(rlc.p, ac.p) annotation(
    Line(points = {{-28, 20}, {-60, 20}, {-60, 2}, {-60, 2}}, color = {0, 0, 255}));
  connect(rlc.n, g.p) annotation(
    Line(points = {{-8, 20}, {20, 20}, {20, -30}, {0, -30}, {0, -30}}, color = {0, 0, 255}));
  annotation(
    experiment(StartTime = 0, StopTime = 0.2, Tolerance = 1e-6, Interval = 0.0001),
    __OpenModelica_commandLineOptions = "--matchingAlgorithm=PFPlusExt --indexReductionMethod=dynamicStateSelection -d=initialization,NLSanalyticJacobian -d=initialization ",
  __OpenModelica_simulationFlags(lv = "LOG_STATS", outputFormat = "mat", s = "dassl"));
end RLC;
