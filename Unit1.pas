unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants, System.Math,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls, FMX.Controls.Presentation, FMX.Media,
  FMX.Effects, FMX.Filter.Effects, FMX.Objects;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    lblQuestion: TLabel;
    lblA: TLabel;
    lblB: TLabel;
    lblC: TLabel;
    Rectangle2: TRectangle;
    Label1: TLabel;
    Rectangle1: TRectangle;
    Rectangle4: TRectangle;
    Rectangle5: TRectangle;
    Rectangle6: TRectangle;
    Rectangle7: TRectangle;
    Rectangle8: TRectangle;
    Rectangle9: TRectangle;
    Rectangle10: TRectangle;
    Rectangle11: TRectangle;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Panel2: TPanel;
    Rectangle3: TRectangle;
    Rectangle12: TRectangle;
    Label10: TLabel;

   // procedure Label2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure lblAClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Label6Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label10Click(Sender: TObject);
  private
    param1: integer;
    param2: integer;
    operation: integer;
    { Private declarations }
    procedure Question;
    procedure Question3;
    procedure Question4;
    procedure Question5;
    procedure Question6;
    procedure Question7;
    procedure Question8;
    procedure Question9;
    procedure GenerateRandomQuestion;
    function GetQuestionText(param1, param2: integer; operation: integer): string;
    function GetResultText: string;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}
uses Unit3;
procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
application.Terminate;
end;

procedure TForm1.FormShow(Sender: TObject);
var
  I: Integer;
begin
  Panel1.Visible := false;
end;
procedure TForm1.Question;
begin
   operation := random(2);
  if operation = 0 then
  begin
    param1 := random(10);
    param2 := random(10);
  end
  else
  begin
    param2 := random(7);
    param1 := random(10 - param2) + param2;
  end;
end;
procedure TForm1.GenerateRandomQuestion;
begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(20);
    param2 := random(20);
  end
  else
  begin
    param2 := random(17);
    param1 := random(20 - param2) + param2;
  end;
end;

 procedure TForm1.Question3;
 begin
     begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(30);
    param2 := random(30);
  end
  else
  begin
    param2 := random(27);
    param1 := random(30 - param2) + param2;
  end;
  end;

 end;
 procedure TForm1.Question4;
 begin

  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(40);
    param2 := random(40);
  end
  else
  begin
    param2 := random(37);
    param1 := random(40 - param2) + param2;
  end;
 end;
 procedure TForm1.Question5;
  begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(50);
    param2 := random(50);
  end
  else
  begin
    param2 := random(47);
    param1 := random(50 - param2) + param2;
  end;

 end;
 procedure TForm1.Question6;
 begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(60);
    param2 := random(60);
  end
  else
  begin
    param2 := random(57);
    param1 := random(60 - param2) + param2;
  end;

 end;
 procedure TForm1.Question7;
 begin
   operation := random(2);
  if operation = 0 then
  begin
    param1 := random(70);
    param2 := random(70);
  end
  else
  begin
    param2 := random(67);
    param1 := random(70 - param2) + param2;
  end;
 end;
 procedure TForm1.Question8;
 begin
    operation := random(2);
  if operation = 0 then
  begin
    param1 := random(80);
    param2 := random(80);
  end
  else
  begin
    param2 := random(77);
    param1 := random(80 - param2) + param2;
  end;

 end;
 procedure TForm1.Question9;
 begin
  operation := random(2);
  if operation = 0 then
  begin
    param1 := random(90);
    param2 := random(90);
  end
  else
  begin
    param2 := random(87);
    param1 := random(90 - param2) + param2;
  end;
 end;
function TForm1.GetQuestionText(param1, param2, operation: integer): string;
var
  opstr: string;
begin
  opstr := ' ';
  if operation = 0 then
    opstr := '+'
  else if operation = 1 then
    opstr := '-';

  result := IntToStr(param1) + ' ' +  opstr + ' ' + IntToStr(param2) + ' =';
end;

function TForm1.GetResultText: string;
begin
  if operation = 0 then
    result := IntToStr(param1 + param2)
  else if operation = 1 then
    result := IntToStr(param1 - param2)
end;

procedure TForm1.Label10Click(Sender: TObject);
begin
application.Terminate;
end;

procedure TForm1.Label1Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  GenerateRandomQuestion;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(20));
      end;
    end;
  end;

  Panel1.Visible := true;
end;





procedure TForm1.Label2Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(40));
      end;
    end;
  end;

  Panel1.Visible := true;
end;
procedure TForm1.Label3Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question3;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(60));
      end;
    end;
  end;

  Panel1.Visible := true;
end;
procedure TForm1.Label4Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question4;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(80));
      end;
    end;
  end;

  Panel1.Visible := true;
end;
procedure TForm1.Label5Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question5;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(100));
      end;
    end;
  end;

  Panel1.Visible := true;
end;

procedure TForm1.Label6Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question6;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(120));
      end;
    end;
  end;

  Panel1.Visible := true;
end;

procedure TForm1.Label7Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question7;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(140));
      end;
    end;
  end;

  Panel1.Visible := true;
end;
procedure TForm1.Label8Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question8;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(160));
      end;
    end;
  end;

  Panel1.Visible := true;
end;
procedure TForm1.Label9Click(Sender: TObject);
var
  ch: integer;
  lbls: array [0..2] of TLabel;
  I, I2: Integer;
  same: boolean;
begin
  Question9;
  lblQuestion.Text := GetQuestionText(param1, param2, operation);

  lbls[0] := lblA;
  lbls[1] := lblB;
  lbls[2] := lblC;

  for I := 0 to 2 do
  begin
    lbls[I].Tag := 0;
    lbls[I].Text := GetResultText;
  end;
  ch := random(3);
  lbls[ch].Tag := 1;

  for I := 0 to 2 do
  begin
    if lbls[I].Tag = 0 then
    begin
      same := true;
      while same do
      begin
        same := false;
        for I2 := 0 to 2 do
          if (I2 <> I) and (lbls[I2].Text = lbls[I].Text) then
            same := true;
        if same then
          lbls[I].Text := IntToStr(random(180));
      end;
    end;
  end;

  Panel1.Visible := true;
end;

procedure TForm1.lblAClick(Sender: TObject);
begin
Form3.Visible:=True;
Form1.Hide;

  if TLabel(Sender).Tag = 1 then
  begin


    Form3.Label1.Text:=('TEBRİKLER DOGRU CEVAP') ;

  end

  else

    Form3.Label1.Text:=('YANLIS CEVAP');

     Panel1.Visible := false;
end;

end.
