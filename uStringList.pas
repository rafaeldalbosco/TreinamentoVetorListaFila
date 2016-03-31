unit uStringList;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus,
  StdCtrls, cxButtons;

type
  TFStringList = class(TForm)
    btPrimeiro: TcxButton;
    mmResultado: TMemo;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStringList: TFStringList;

implementation

{$R *.dfm}

end.
