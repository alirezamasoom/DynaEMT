within OpenEMTP.Examples.WBline.IEEE_39Bus;
model Load20
  Electrical.Load_Models.PQ_Load Load20(P=(628/3)*{1,1,1}, Q=(103/3)*{1,1,1}, V = 24, f = 60)
    annotation (Placement(transformation(extent={{-20,-6},{0,14}})));
  Electrical.Transformers.YgD01 LoadTransfo20(
    S=800,
    f=60,
    v1=300,
    v2=25,
    R=0.002,
    X=0.100,
    D=0.5,
    MD=[0.001,1; 0.01,1.075; 0.025,1.15; 0.05,1.2; 0.1,1.23; 0.5,1.37; 1,1.55; 2,1.86],
    Rmg=500) annotation (Placement(transformation(extent={{-52,26},{-32,46}})));
  Modelica.Electrical.MultiPhase.Interfaces.PositivePlug p annotation (Placement(
        transformation(rotation=0, extent={{-10,88},{10,108}}), iconTransformation(extent=
           {{-10,88},{10,108}})));
equation
  connect(LoadTransfo20.m, Load20.positivePlug)
    annotation (Line(points={{-32,36},{-3.2,36},{-3.2,14}}, color={0,0,255}));
  connect(p, LoadTransfo20.k)
    annotation (Line(points={{0,98},{-76,98},{-76,36},{-52,36}}, color={0,0,255}));
  annotation (Icon(graphics={
        Line(points={{0,88},{0,20},{0,20}}, color={0,0,255}),
        Line(points={{-80,20},{16,20},{80,20}}, color={0,0,255}),
        Polygon(
          points={{-60,-30},{-20,-30},{-40,-50},{-60,-30}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{-72,-48},{-4,-112}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="P"),
        Polygon(
          points={{18,-30},{58,-30},{38,-50},{18,-30}},
          lineColor={28,108,200},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid),
        Text(
          extent={{6,-48},{74,-112}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="Q"),
        Line(points={{-40,20},{-40,-26},{-40,-30},{-42,-30},{-40,-30}}, color={0,0,255}),
        Line(points={{40,20},{40,-30}}, color={0,0,255}),
        Text(
          extent={{-134,-112},{90,-190}},
          lineColor={0,0,255},
          fillColor={0,0,255},
          fillPattern=FillPattern.Solid,
          textString="%name")}));
end Load20;
