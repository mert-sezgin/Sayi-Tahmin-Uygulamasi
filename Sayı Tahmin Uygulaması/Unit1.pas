﻿unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Edit1Click(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  tut:Integer;
  sayi:Integer;

implementation

{$R *.dfm}

procedure TForm1.Button2Click(Sender: TObject);
begin
sayi:=1;
tut:= Random(1000)+1;
ShowMessage('Lütfen 1 ile 1000 arasında bir sayı giriniz.')
end;

procedure TForm1.Button1Click(Sender: TObject);

var

tahmin: Integer;

begin

  tahmin:=StrtoInt(Edit1.Text);

  if tahmin=tut then
  begin
  ShowMessage('Tebrikler! Tutulan sayıyı  '+ InttoStr(sayi) +'  tahmin sonucunda buldunuz.');
  end


  else if tahmin<tut then
  begin
  inc(sayi);
  ShowMessage('Tahmin ettiğiniz sayı doğru değildir. Lütfen daha büyük sayı giriniz.');
  end


  else if tahmin>tut then
  begin
  inc(sayi);
  ShowMessage('Tahmin ettiğiniz sayı doğru değildir. Lütfen daha küçük sayı giriniz.');
  end

end;

procedure TForm1.Edit1Click(Sender: TObject);

begin

     if Edit1.Text='Tahmin ettiğiniz sayıyı giriniz.' then
     begin
       Edit1.Text:='';
       Edit1.Font.Color:=clBlack;
     end

end;

procedure TForm1.Edit1Exit(Sender: TObject);
begin
     if Edit1.Text='' then
     begin
       Edit1.Text:='Tahmin ettiğiniz sayıyı giriniz.';
       Edit1.Font.Color:=clSilver;
     end
end;

end.
