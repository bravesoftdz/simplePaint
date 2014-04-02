unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, ColorGrd, Menus, StdCtrls, ExtDlgs, Buttons;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ColorGrid1: TColorGrid;
    MainMenu1: TMainMenu;
    Plik1: TMenuItem;
    Otwrz1: TMenuItem;
    Zapisz1: TMenuItem;
    Zamknij1: TMenuItem;
    Button2: TButton;
    Button4: TButton;
    Col2: TColorGrid;
    Button6: TButton;
    Timer1: TTimer;
    Label1: TLabel;
    OPD: TOpenPictureDialog;
    SPD: TSavePictureDialog;
    procedure Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure Image1MouseDown(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormCreate(Sender: TObject);
    procedure ColorGrid1Change(Sender: TObject);
    procedure Zamknij1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Zapisz1Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Col2Change(Sender: TObject);
    procedure Otwrz1Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  rysuj:boolean;

implementation

{$R *.dfm}

procedure TForm1.Image1MouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
        if rysuj then Image1.Canvas.LineTo(x,y);
end;

procedure TForm1.Image1MouseDown(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
        Rysuj:=not rysuj;
        if rysuj then Image1.Canvas.MoveTo(x,y); 
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
form1.DoubleBuffered:=True;
end;

procedure TForm1.ColorGrid1Change(Sender: TObject);
begin
image1.Canvas.Pen.Color:=ColorGrid1.ForegroundColor;
end;

procedure TForm1.Zamknij1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
if OPD.execute   then
  begin
  Image1.Picture.LoadFromFile(OPD.FileName);
  Form1.Caption:= 'Super Paint Tomasza Potañskiego -' + OPD.FileName;
  end
  else
  beep;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
if SPD.execute   then
  begin
  Image1.Picture.SaveToFile(SPD.FileName);
  Form1.Caption:= 'Super Paint Tomasza Potañskiego -' + SPD.FileName;
  end
  else
  beep;
end;

procedure TForm1.Zapisz1Click(Sender: TObject);
begin
MessageBox(0,'Wybierz kolor z paletki i przesuñ kursor na p³ótnie (jesli klikniesz przestaniesz malowac, kliknij jeszcze raz a zaczniesz) reszty sam siê domyslisz.','Instrukcja',MB_OK);
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
Col2.Visible:=not Col2.Visible;
end;

procedure TForm1.Col2Change(Sender: TObject);
begin
Image1.Canvas.Brush.Color:=clRed;
image1.Canvas.FloodFill(0,0,clred,fsSurface);
end;

procedure TForm1.Otwrz1Click(Sender: TObject);
begin
image1.canvas.Brush.Color:=rgb(255,255,255);
image1.canvas.Pen.Color:=rgb(255,255,255);
Image1.Canvas.Rectangle(0,0,width,height);
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
Label1.Visible:=True;
Image1.Visible:=False;
close;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
Label1.Visible:=True;
Image1.Visible:=False;
MessageBox(0, 'Autorem Super Painta jest Tomasz Potañski', 'Autor', MB_OK);
CanClose:=True;
end;

end.
