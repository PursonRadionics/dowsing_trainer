unit main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, ExtCtrls, lclintf;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Image1: TImage;
    Image2: TImage;
    Label1: TLabel;
    Shape1: TShape;
    TargetShape: TShape;
    Target: TLabel;
    RadioGroup1: TRadioGroup;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
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
  Target.Caption := '';
  TargetShape.Hide;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Randomize;
  case RadioGroup1.ItemIndex of
    0: if random(2) = 0 then Target.Caption := 'Yes' else Target.Caption := 'No';
    1: begin
        if random(2) = 0 then begin
          TargetShape.Brush.Color := clRed;
        end else begin
          TargetShape.Brush.Color := clBlack;
        end;
      end;
    2: Target.Caption := IntToStr(random(2));
    3: Target.Caption := IntToStr(random(3));
    4: Target.Caption := IntToStr(random(5));
    5: Target.Caption := IntToStr(random(6));
    6: Target.Caption := IntToStr(random(11));
  end;

  if RadioGroup1.ItemIndex = 1 then begin
    Target.Hide;
    TargetShape.Show;
  end else begin
    Target.Show;
    TargetShape.Hide;
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  Randomize;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  OpenURL('https://github.com/PursonRadionics/dowsing_trainer');
end;

procedure TForm1.Label1Click(Sender: TObject);
begin
  OpenURL('https://github.com/PursonRadionics/dowsing_trainer');
end;



end.

