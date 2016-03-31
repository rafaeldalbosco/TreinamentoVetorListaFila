unit uArrays;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters,
  Menus, cxButtons;

type

  TFArray = class(TForm)
    mmResultado: TMemo;
    btVetorFixo: TcxButton;
    btVetorRecord: TcxButton;
    btVetorVariant: TcxButton;
    btVetorBiDimensional: TcxButton;
    procedure btVetorFixoClick(Sender: TObject);
    procedure btVetorRecordClick(Sender: TObject);
    procedure btVetorVariantClick(Sender: TObject);
    procedure btVetorBiDimensionalClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  RecPessoa = record
    Id: Integer;
    Nome: string;
    DataNasc: TDateTime;
  end;

var                            
  FArray: TFArray;
  Vetor1 : array[0..1] of string = ('Posicao1', 'Posicao2');
  Vetor2 : array[0..1] of integer = (123, 1234);
  Vetor3 : array of Variant;
  Vetor4: array of array of Variant;

implementation

uses
  BibStr;

{$R *.dfm}

procedure TFArray.btVetorFixoClick(Sender: TObject);
var
  i: Integer;
begin
  mmResultado.Lines.Add('Vetor Tamanho Fixo de String');
  for i := 0 to Length(Vetor1)-1 do
    mmResultado.Lines.Add(Vetor1[i]);

  mmResultado.Lines.Add('Vetor Tamanho Fixo de Inteiros');
  for i := 0 to High(Vetor2) do
    mmResultado.Lines.Add( IntToStr(Vetor2[i]) );
end;

procedure TFArray.btVetorRecordClick(Sender: TObject);
var
  vetorRecord : array of RecPessoa;
  i: Integer;
begin
  SetLength(vetorRecord, 2);

  vetorRecord[0].Id := 54;
  vetorRecord[0].Nome := 'Toninho';
  vetorRecord[0].DataNasc := StrToDateTime('14/05/1997');


  vetorRecord[1].Id := 53;
  vetorRecord[1].Nome := 'Juca Bala';
  vetorRecord[1].DataNasc := StrToDateTime('10/01/1985');

  mmResultado.Lines.Add('Vetor Dinamico de Record');
  for i := 0 to High(vetorRecord) do
    begin
    mmResultado.Lines.Add( IntToStr(vetorRecord[i].Id) );
    mmResultado.Lines.Add( vetorRecord[i].Nome );
    mmResultado.Lines.Add( DateTimeToStr(vetorRecord[i].DataNasc) );
  end;
end;

procedure TFArray.btVetorVariantClick(Sender: TObject);
var
  i : Integer;
begin
  SetLength(Vetor3, 3);
  Vetor3[0] := 21;
  Vetor3[1] := 'String';
  Vetor3[2] := 21.6;

  mmResultado.Lines.Add('Vetor Dinamico de Variant');
  for i := 0 to High(Vetor3) do
    mmResultado.Lines.Add( StrOf(Vetor3[i]) );
end;

procedure TFArray.btVetorBiDimensionalClick(Sender: TObject);
var
  i, j: Integer;
begin
  SetLength(Vetor4, 3);
  SetLength(Vetor4[0], 2);
  Vetor4[0, 0] := 'Joao';
  Vetor4[0, 1] := 15;

  SetLength(Vetor4[1], 3);
  Vetor4[1, 0] := 'Maria';
  Vetor4[1, 1] := 18;
  Vetor4[1, 2] := 'Pato Branco';

  SetLength(Vetor4[2], 4);
  Vetor4[2, 0]  := 'Toninho';
  Vetor4[2, 1]  := 19;
  Vetor4[2, 2]  := 'Feitosinha';
  Vetor4[2, 3]  := 'Centro';

  mmResultado.Lines.Add('Vetor Dinamico Bi-dimensional');
  for i := 0 to High(Vetor4) do
    begin
    for j := 0 to High(Vetor4[i]) do
      mmResultado.Lines.Add( StrOf(Vetor4[i, j]) );
  end;
end;

end.
