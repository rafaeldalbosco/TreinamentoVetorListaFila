unit uForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons;

type
  TFPrinc = class(TForm)
    btArrays: TcxButton;
    btStringList: TcxButton;
    procedure btArraysClick(Sender: TObject);
    procedure btStringListClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPrinc: TFPrinc;

implementation

uses
  uArrays, uStringList;

{$R *.dfm}

procedure TFPrinc.btArraysClick(Sender: TObject);
var
  fr: TFArray;
begin
  fr := TFArray.Create(Self);
  fr.ShowModal;
  FreeAndNil(fr);
end;

procedure TFPrinc.btStringListClick(Sender: TObject);
var
  fr: TFStringList;
begin
  fr := TFStringList.Create(Self);
  fr.ShowModal;
  FreeAndNil(fr);
end;

end.
