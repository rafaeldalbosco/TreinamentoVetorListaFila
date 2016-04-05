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
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    cxButton3: TcxButton;
    cxButton4: TcxButton;
    cxButton5: TcxButton;
    cxButton6: TcxButton;
    procedure btPrimeiroClick(Sender: TObject);
    procedure cxButton1Click(Sender: TObject);
    procedure cxButton3Click(Sender: TObject);
    procedure cxButton4Click(Sender: TObject);
    procedure cxButton5Click(Sender: TObject);
    procedure cxButton6Click(Sender: TObject);
    procedure cxButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FStringList: TFStringList;

implementation

{$R *.dfm}

procedure TFStringList.btPrimeiroClick(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas.txt');
    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;
end;

procedure TFStringList.cxButton1Click(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.Add('adicionando o primeiro valor');
    sl.Add('adicionando o segundo valor');

    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas_teste.txt');
    
    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;
end;

procedure TFStringList.cxButton3Click(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas.txt');

    sl.Add('Posição da pesquisa'+ IntToStr(sl.IndexOf('- TStringList;')) );

    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;
end;

procedure TFStringList.cxButton4Click(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas.txt');

    sl.Delete(sl.IndexOf('- TStringList;'));

    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;

end;

procedure TFStringList.cxButton5Click(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas.txt');

    sl.Sort;

    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;
end;

procedure TFStringList.cxButton6Click(Sender: TObject);
var
  sl, sl2: TStringList;
  i, j: Integer;
begin
  sl := TStringList.Create;
  sl2 := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\layout.txt');

    sl2.Delimiter := ';';
    sl2.QuoteChar := '"';
    
    for i := 0 to sl.Count-1 do
      begin
      sl2.DelimitedText := sl.Strings[i];

      for j := 0 to sl2.Count-1 do
        mmResultado.Lines.Add('Posicao coluna='+ IntToStr(j) + ' : '+ sl2.Strings[j]);
    end;
  finally
    FreeAndNil(sl);
    FreeAndNil(sl2);
  end;
end;

procedure TFStringList.cxButton2Click(Sender: TObject);
var
  sl: TStringList;
  i: Integer;
begin
  sl := TStringList.Create;
  try
    sl.LoadFromFile('d:\Users\dal bosco\desktop\listas.txt');

    sl.Add('adicionando o primeiro valor');
    sl.Add('adicionando o segundo valor');

    for i := 0 to sl.Count-1 do
      mmResultado.Lines.Add(sl.Strings[i]);

  finally
    FreeAndNil(sl);
  end;
end;

end.
