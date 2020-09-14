within OpenEMTP.Connectors;
model Bus
  OpenEMTP.Interfaces.MultiPhase.PositivePlug positivePlug1 annotation (
    Placement(visible = true, transformation(origin = {30, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  OpenEMTP.Interfaces.MultiPhase.PositivePlug positivePlug2 annotation (
    Placement(visible = true, transformation(origin = {-16, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {-20, 0}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(positivePlug2, positivePlug1) annotation (
    Line(points = {{-16, 0}, {30, 0}}, color = {0, 0, 255}));
  annotation (
    uses(Modelica(version = "3.2.3")),
    defaultComponentName = "Bus",
    Icon(graphics={  Rectangle(pattern = LinePattern.None, fillPattern = FillPattern.Solid, extent = {{-10, 100}, {10, -100}}), Text(origin = {128, -100}, rotation = 90, lineColor = {0, 0, 255}, extent = {{-150, 40}, {150, 80}}, textString = "%name")}, coordinateSystem(initialScale = 0.1)));
end Bus;
