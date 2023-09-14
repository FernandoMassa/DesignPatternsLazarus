program Visitor;

{$mode objfpc}{$H+}

uses
    {$IFDEF UNIX}
    cthreads,
    {$ENDIF}
    {$IFDEF HASAMIGA}
    athreads,
    {$ENDIF}
    Interfaces, // this includes the LCL widgetset
    Forms, Visitor.View.Principal, visitor.model.item, 
visitor.model.item.regra.varejos, visitor.model.item.regra.atacado
    { you can add units after this };

{$R *.res}

begin
    RequireDerivedFormResource:=True;
    Application.Scaled:=True;
    Application.Initialize;
		Application.CreateForm(TForm1, Form1);
    Application.Run;
end.
