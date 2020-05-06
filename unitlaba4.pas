unit unitlaba4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, MPlayer;

type
  TForm1 = class(TForm)
    timerbackfon: TTimer;
    timerrunner: TTimer;
    img: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure FormActivate(Sender: TObject);
    procedure timerrunnerTimer(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

const
  body = 100;
  arm = body / 2;
  leg = body / 2;
  foot = body / 6;
  neck = body / 10;
  head = body / 1.5;
  allbody = body + leg * 2;
  kf = round(body / 5);

var
  Form1: TForm1;
procedure Man_body(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_1_legs1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_1_arms1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_1_legs2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_1_arms2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_1_legs3(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_1_arms3(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_1_legs4(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_1_arms4(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_1_legs5(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_1_arms5(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_2_legs1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_2_arms1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_2_legs2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_2_arms2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_2_legs3(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_2_arms3(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_3_legs1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_3_arms1(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_3_legs2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_3_arms2(c, d: integer; k: real; canvas: TCanvas);
procedure Ex_3_legs3(a, b: integer; k: real; canvas: TCanvas);
procedure Ex_3_arms3(a, b: integer; k: real; canvas: TCanvas);

implementation

var
  x, y: integer;
  k: real;
  i, j: integer;
  P, Q: real;
  flag_2: boolean;
{$R *.dfm}

procedure Man_body(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    ellipse(round((a - head / 2) * k * P), round((b - head) * k * Q),
      round((a + head / 2) * k * P), round(b * k * Q));
    moveto(round(a * k * P), round(b * k * Q));
    lineto(round(a * k * P), round((b + body) * k * Q));
  end;
end;

procedure Ex_1_legs1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a + leg) * k * P), round((b + body) * k * Q));
    lineto(round((a + leg) * k * P), round((b + body + leg) * k * Q));
    lineto(round((a + leg + foot) * k * P), round((b + body + leg) * k * Q));
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a - 2 * leg / 1.5) * k * P), round((b + body + leg) * k * Q));
    lineto(round((a - 2 * leg / 1.5 - foot) * k * P),
      round((b + body + leg) * k * Q));
  end;
end;

procedure Ex_1_arms1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a + arm) * k * P), round((b + neck) * k * Q));
    lineto(round((a + arm + arm * 0.6) * k * P),
      round((b + neck - arm * 0.6) * k * Q));
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a - arm * 0.8) * k * P), round((b + arm * 0.9) * k * Q));
    lineto(round(a * k * P), round((b + 1.5 * arm) * k * Q));
  end;
end;

procedure Ex_1_legs2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg * 1.5 - kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    lineto(round((c + leg * 1.5 + foot - kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c - leg * 1.5 + kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    lineto(round((c - leg * 1.5 - foot + kf) * k * P),
      round((d + body + leg + kf) * k * Q));
  end;
end;

procedure Ex_1_arms2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm + arm * 0.8) * k * P),
      round((d + neck - arm * 0.4) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm - arm * 0.8) * k * P),
      round((d + neck + arm * 0.4) * k * Q));
  end;
end;

procedure Ex_1_legs3(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a + leg * 1.5 - kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    lineto(round((a + leg * 1.5 + foot - kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a - leg * 1.5 + kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    lineto(round((a - leg * 1.5 - foot + kf) * k * P),
      round((b + body + leg + kf) * k * Q));
  end;
end;

procedure Ex_1_arms3(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a + 2 * arm) * k * P), round((b + neck) * k * Q));
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a - 2 * arm) * k * P), round((b + neck) * k * Q));
  end;
end;

procedure Ex_1_legs4(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg * 1.5 - kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    lineto(round((c + leg * 1.5 + foot - kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c - leg * 1.5 + kf) * k * P),
      round((d + body + leg + kf) * k * Q));
    lineto(round((c - leg * 1.5 - foot + kf) * k * P),
      round((d + body + leg + kf) * k * Q));
  end;
end;

procedure Ex_1_arms4(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm + arm * 0.8) * k * P),
      round((d + neck + arm * 0.4) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm - arm * 0.8) * k * P),
      round((d + neck - arm * 0.4) * k * Q));
  end;
end;

procedure Ex_1_legs5(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body + leg) * k * Q));
    lineto(round((c - leg - foot) * k * P), round((d + body + leg) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + 2 * leg / 1.5) * k * P), round((d + body + leg) * k * Q));
    lineto(round((c + 2 * leg / 1.5 + foot) * k * P),
      round((d + body + leg) * k * Q));
  end;
end;

procedure Ex_1_arms5(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm - arm * 0.6) * k * P),
      round((d + neck - arm * 0.6) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm * 0.8) * k * P), round((d + arm * 0.9) * k * Q));
    lineto(round(c * k * P), round((d + 1.5 * arm) * k * Q));
  end;
end;

procedure Ex_2_legs1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a + leg * 1.5 - kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    lineto(round((a + leg * 1.5 + foot - kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a - leg * 1.5 + kf) * k * P),
      round((b + body + leg + kf) * k * Q));
    lineto(round((a - leg * 1.5 - foot + kf) * k * P),
      round((b + body + leg + kf) * k * Q));
  end;
end;

procedure Ex_2_arms1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a + 2 * arm) * k * P), round((b + neck) * k * Q));
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a - 2 * arm) * k * P), round((b + neck) * k * Q));
  end;
end;

procedure Ex_2_legs2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body + leg) * k * Q));
    lineto(round((c - leg - foot) * k * P), round((d + body + leg) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg) * k * P), round((d + body) * k * Q));
    lineto(round((c + leg) * k * P), round((d + body + leg) * k * Q));
    lineto(round((c + leg + foot) * k * P), round((d + body + leg) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
  end;
end;

procedure Ex_2_arms2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm + arm * 0.8) * k * P),
      round((d + neck - arm * 0.4) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm) * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm - arm * 0.8) * k * P),
      round((d + neck - arm * 0.4) * k * Q));
  end;
end;

procedure Ex_2_legs3(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body - 25) * k * Q));
    lineto(round((c - leg) * k * P), round((d + body + leg - 25) * k * Q));
    lineto(round((c - leg - foot) * k * P),
      round((d + body + leg - 25) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg) * k * P), round((d + body - 25) * k * Q));
    lineto(round((c + leg) * k * P), round((d + body + leg - 25) * k * Q));
    lineto(round((c + leg + foot) * k * P),
      round((d + body + leg - 25) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
  end;
end;

procedure Ex_2_arms3(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm) * k * P), round((d - neck) * k * Q));
    lineto(round((c + arm + arm * 0.8 - neck * 2) * k * P),
      round((d - neck - arm) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm) * k * P), round((d - neck) * k * Q));
    lineto(round((c - arm - arm * 0.8 + neck * 2) * k * P),
      round((d - neck - arm) * k * Q));
  end;
end;

procedure Ex_3_legs1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a + leg*0.5) * k * P), round((b + body + leg*0.5) * k * Q));
    lineto(round((a + leg) * k * P), round((b + body + leg*1.5) * k * Q));
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a - leg*0.3) * k * P), round((b + leg *3) * k * Q));
    lineto(round((a - leg) * k * P), round((b + leg*3.5) * k * Q));
  end;
end;

procedure Ex_3_arms1(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a + arm * 0.6) * k * P), round((b + arm * 0.6) * k * Q));
    lineto(round((a + arm) * k * P), round((b - arm * 0.2) * k * Q));
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a - arm * 0.6) * k * P), round((b + 25) * k * Q));
    lineto(round((a - 10) * k * P), round((b + 60) * k * Q));
  end;
end;

procedure Ex_3_legs2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg*0.7) * k * P), round((d + body+leg*0.5) * k * Q));
    lineto(round((c + leg*1.2) * k * P), round((d + body+ leg*1.5) * k * Q));
    moveto(round(c * k * P), round((d + body) * k * Q));
    lineto(round((c + leg*0.8) * k * P), round((d +body+ leg*0.9) * k * Q));
    lineto(round((c + leg*0.2) * k * P), round((d + body+leg*2) * k * Q));
  end;
end;

procedure Ex_3_arms2(c, d: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c + arm*0.5) * k * P), round((d +arm*1.2) * k * Q));
    lineto(round((c + arm*0.9) * k * P), round((d + arm*0.4) * k * Q));
    moveto(round(c * k * P), round((d + neck) * k * Q));
    lineto(round((c - arm*0.4) * k * P), round((d + arm*1.3) * k * Q));
    lineto(round((c + arm*0.4) * k * P), round((d + arm*0.9) * k * Q));
  end;
end;

procedure Ex_3_legs3(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a - leg*0.3) * k * P), round((b + body +leg*1.2) * k * Q));
    lineto(round((a - leg*0.8) * k * P), round((b + +body +leg*2.1) * k * Q));
    moveto(round(a * k * P), round((b + body) * k * Q));
    lineto(round((a + leg*0.1) * k * P), round((b +body+ leg*1.2) * k * Q));
    lineto(round((a - leg*0.1) * k * P), round((b + body+110) * k * Q));
  end;
end;

procedure Ex_3_arms3(a, b: integer; k: real; canvas: TCanvas);
begin
  with canvas do
  begin
    moveto(round(a * k * P), round((b + neck) * k * Q));
    lineto(round((a - arm*0.5) * k * P), round((b + neck+ arm) * k * Q));
    lineto(round((a + arm*0.6) * k * P), round((b + arm*0.8) * k * Q));
  end;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
  canvas.Pen.Width := 4;
  x := 350;
  y := 350;
  k := 1;
  i := 3;
  j := 0;
  timerrunner.Interval := 150;
end;

procedure TForm1.timerrunnerTimer(Sender: TObject);
begin
  P := ClientWidth / 1000;
  Q := ClientHeight / 600;
  with canvas do
  begin
    // Brush.Color := ClWhite;
    Repaint;
    DoubleBuffered := True;
    // FillRect(Canvas.ClipRect);
  end;
  case i of
    1:
      begin
        Man_body(x, y, k, canvas);
        Ex_1_legs1(x, y, k, canvas);
        Ex_1_arms1(x, y, k, canvas);
        inc(i);
      end;
    2, 8:
      begin
        Man_body(x, y, k, canvas);
        Ex_1_legs2(x, y, k, canvas);
        Ex_1_arms2(x, y, k, canvas);
        if i = 8 then
        begin
          i := 1;
          inc(j);
        end
        else
        begin
          inc(i);
        end;
      end;
    3, 7:
      begin
        Man_body(x, y, k, canvas);
        Ex_1_legs3(x, y, k, canvas);
        Ex_1_arms3(x, y, k, canvas);
        inc(i);
      end;
    4, 6:
      begin
        Man_body(x, y, k, canvas);
        Ex_1_legs4(x, y, k, canvas);
        Ex_1_arms4(x, y, k, canvas);
        inc(i);
      end;
    5:
      begin
        Man_body(x, y, k, canvas);
        Ex_1_legs5(x, y, k, canvas);
        Ex_1_arms5(x, y, k, canvas);
        inc(i);
      end;
    9:
      begin
        Man_body(x, y, k, canvas);
        Ex_2_legs1(x, y, k, canvas);
        Ex_2_arms1(x, y, k, canvas);
        inc(i);
      end;
    10, 12:
      begin
        Man_body(x, y, k, canvas);
        Ex_2_legs2(x, y, k, canvas);
        Ex_2_arms2(x, y, k, canvas);
        if i = 12 then
        begin
          i := 9;
          inc(j);
        end
        else
        begin
          inc(i);
        end;
      end;
    11:
      begin
        Man_body(x, y, k, canvas);
        Ex_2_legs3(x, y, k, canvas);
        Ex_2_arms3(x, y, k, canvas);
        inc(i);
      end;
    13:
      begin
        Man_body(x, y, k, canvas);
        Ex_3_legs1(x, y, k, canvas);
        Ex_3_arms1(x, y, k, canvas);
        inc(i);
      end;
    14,16:
      begin
        Man_body(x, y, k, canvas);
        Ex_3_legs2(x, y, k, canvas);
        Ex_3_arms2(x, y, k, canvas);
        if i = 16 then
        begin
          i := 13;
          inc(j);
        end
        else
        begin
          inc(i);
        end;;
      end;
    15:
      begin
        man_body(x, y, k, canvas);
        Ex_3_legs3(x, y, k, canvas);
        Ex_3_arms3(x, y, k, canvas);
        inc(i);
      end;
  end;
  if (i = 1) then
  begin
    x := x + kf;
    y := y + kf;
  end;
  if (i = 2) or (i = 3) or (i = 4) or (i = 6) or (i = 7) or (i = 8) then
  begin
    x := 350;
    y := 350;
  end;
  if i = 5 then
  begin
    x := x - kf;
    y := y + kf;
  end;
  if j = 5 then
  begin
    x := 350;
    y := 350;
    i := 13;
    inc(j);
  end;
  if i=9 then
  begin
    x:=350+9*kf;
    y:=350;
  end;
  if (i = 10) then
  begin
    y := y + kf;
  end;
  if i = 11 then
  begin
    y := y + 25;
  end;
  if i = 12 then
  begin
    y := y - 25;
  end;
  if (i = 13) or (i = 14) or (i = 15) or (i=16) then
  begin
    x := x + kf;
  end;
  if j=8 then
  begin
    i:=9;
    inc(j);
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  MediaPlayer1.FileName := 'song.mp3';
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

end.
