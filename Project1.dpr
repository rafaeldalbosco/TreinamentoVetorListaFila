program Project1;

uses
  Forms,
  uForm in 'uForm.pas' {FPrinc},
  uArrays in 'uArrays.pas' {FArray},
  uStringList in 'uStringList.pas' {FStringList};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFPrinc, FPrinc);
  Application.Run;
end.
