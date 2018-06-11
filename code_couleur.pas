unit code_couleur;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  ExtCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ImgTest: TImage;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
    ImgTest.Canvas.Brush.color:=clred;
  ImgTest.Canvas.Rectangle (0,0,300,300);
end;

  procedure TForm1.Button2Click(Sender: TObject);
var
   Test,Cpt,Cpt2:INTEGER;


begin
  Cpt:=0;
  Cpt2:=0;
  Test:=0;
  If (Test MOD 2 = 0) then

  begin
    While (Test<300) do

     begin

      ImgTest.Canvas.Pen.color:=clBlack;
      ImgTest.Canvas.Brush.color:=clBlack;
      ImgTest.Canvas.Rectangle (Cpt,0,Cpt+30,Cpt+30);
      Test:=Test+1;
      Cpt:=Cpt+60;

     end;
  end
  Else

  ImgTest.Canvas.Brush.color:=clWhite;
  ImgTest.Canvas.Rectangle (Cpt,0,Cpt2+20,Cpt2+20);



end;

  procedure TForm1.Button3Click(Sender: TObject);
var
  Cpt:INTEGER;

begin
   Cpt:=0;
  While (Cpt<300) do
   begin

       ImgTest.Canvas.Pen.color:=clRed;
      ImgTest.Canvas.Line (Cpt,0,Cpt,300);
       ImgTest.Canvas.Pen.color:=clYellow;
      ImgTest.Canvas.Line (Cpt+1,0,Cpt+1,300);
      ImgTest.Canvas.Pen.color:=clGreen;
      ImgTest.Canvas.Line (Cpt+2,0,Cpt+2,300);
      ImgTest.Canvas.Pen.color:=clBlue;
      ImgTest.Canvas.Line (Cpt+3,0,Cpt+3,300);
      Cpt:=Cpt+4;


   end;
end;

  procedure TForm1.Button4Click(Sender: TObject);
begin
  ImgTest.Canvas.Brush.color:=clBlack;
  ImgTest.Canvas.Rectangle (0,0,300,300);
end;

  procedure TForm1.Button5Click(Sender: TObject);
begin
  ImgTest.Canvas.Brush.color:=clRed;
  ImgTest.Canvas.Rectangle (0,0,150,150);
   ImgTest.Canvas.Brush.color:=clBlack;
  ImgTest.Canvas.Rectangle (151,0,300,150);
   ImgTest.Canvas.Brush.color:=clBlue;
  ImgTest.Canvas.Rectangle (0,151,150,300);
   ImgTest.Canvas.Brush.color:=clGreen;
  ImgTest.Canvas.Rectangle (151,151,300,300);
end;

end.

