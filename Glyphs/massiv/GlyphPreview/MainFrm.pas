unit MainFrm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Grids, Buttons, ExtCtrls, ComCtrls, FileCtrl,inifiles,fileutil;

  {NOTE FileUtil is from RX Library. If you don't have RX Library, get it NOW}

const
 maxSpeeds = 12;

type
  TMainForm = class(TForm)
    SpeedButton1: TSpeedButton;
    btnFind: TButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    btnUp: TButton;
    btnDown: TButton;
    DirectoryListBox1: TDirectoryListBox;
    DriveComboBox1: TDriveComboBox;
    lblDir: TLabel;
    edDest: TEdit;
    Label1: TLabel;
    rbDelete: TRadioButton;
    rbCopy: TRadioButton;
    Label2: TLabel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure btnFindClick(Sender: TObject);
    procedure btnUpClick(Sender: TObject);
    procedure btnDownClick(Sender: TObject);
    procedure DirectoryListBox1Change(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure rbDeleteClick(Sender: TObject);
  private
    ini: TInifile;
    Index:integer;
    FileList : TStringList;
    ButArray : Array[1..MaxSpeeds] of TSpeedButton;
    procedure OnFound(const Path : string; const Sr : TSearchRec);
    Procedure GetFiles(Const Dir : String);
    Procedure DrawGlyph(si,fi : Integer);
    procedure drawPage(Fi: Integer);
  public
  end;

  type
  TFileSearch = class
   private
    procedure DoTheSearch(path,wildCard : string);
    procedure FindAllFiles(const path,wildcard : string);
   public
    Terminated : Boolean;
    Attr : Integer;
    Recursive : boolean;
    OnFoundFile: procedure(const Path : string; const Sr : TSearchRec) of object;
    procedure DoSearch(path,wildCard : string);
    constructor create;
  end;

var
  MainForm: TMainForm;

implementation

{$R *.DFM}

procedure TMainForm.FormCreate(Sender: TObject);
var a:integer;
begin
 Ini:=TIniFile.Create(extractfilepath(paramstr(0))+'Options.ini');
 DriveComboBox1.Drive:=(ini.readstring('Options','Drive','C'))[1];
 DirectoryListBox1.Directory:=ini.readstring('Options','Directory','C:\');
 edDest.text:=ini.readstring('Option','Default','C:\Delphi\Projects');
 FileList:=TStringList.create;
 FileList.Sorted:=true;
 for a:=0 to componentcount -1 do
  if (Components[a] is TSpeedButton) and
      (TSpeedButton(Components[a]).tag>0) then
       ButArray[TSpeedButton(Components[a]).tag]:=TSpeedButton(Components[a]);
end;

procedure TMainForm.FormDestroy(Sender: TObject);
var a:integer;
begin
 for a:=0 to filelist.Count-1 do
  TBitBtn(Filelist.Objects[a]).free;
 FileList.free;
 ini.writestring('Options','Drive',DriveComboBox1.Drive);
 ini.writestring('Options','Directory',DirectoryListBox1.Directory);
 ini.writestring('Option','Default',edDest.text);
 ini.free;
end;

procedure TMainForm.btnFindClick(Sender: TObject);
begin
 screen.Cursor:=crHourGlass;
 GetFiles(DirectoryListBox1.Directory);
 DrawPage(index);
 screen.Cursor:=crDefault;
 index:=1;
end;

procedure TMainForm.GetFiles(Const Dir : String);
var fs : TFileSearch;
begin
 FileList.Clear;
 Fs:=TFileSearch.create;
 try
  Fs.OnFoundFile:=OnFound;
  Fs.DoSearch(dir,'*.bmp');
  Fs.DoSearch(dir,'*.ico');
 finally
  fs.free;
 end;
end;

Procedure TMainForm.DrawGlyph(si,fi : Integer);
var ico : TIcon;
begin
 if fi>=0 then begin
  if Uppercase(ExtractFileExt(FileList.Strings[fi]))='.ICO' then begin
   ico:=TIcon.Create;
   try
    ico.LoadFromFile(FileList.Strings[fi]);
    butArray[si].glyph.Width:=ico.Width;
    butArray[si].glyph.height:=ico.height;
    butArray[si].glyph.Canvas.Draw(0,0,ico);

    {This looks like a method that I'm sure can be done a better way.
     Anyway, works fine}

   finally
    ico.free;
   end;
  end else
   butArray[si].glyph.LoadFromFile(FileList.Strings[fi]);
  butArray[si].Hint:=FileList.Strings[fi];
 end else begin
  butArray[si].glyph.FreeImage;
  butArray[si].glyph:=nil;
  butArray[si].Hint:='';
 end;
end;

Procedure TMainForm.drawPage(Fi : Integer);
var a:integer;
begin
 for a:=1 to 12 do
  if fi+a<=Filelist.count
   then DrawGlyph(a,fi+a-1)
   else DrawGlyph(a,-1);
end;

procedure TMainForm.OnFound(const Path: string; const Sr: TSearchRec);
begin
 FileList.Add(path+sr.name);
end;

procedure TMainForm.btnUpClick(Sender: TObject);
begin
 Dec(index,maxspeeds);
 if index<1 then index:=1;
 DrawPage(index);
end;

procedure TMainForm.btnDownClick(Sender: TObject);
begin
 inc(index,maxspeeds);
 if index>FileList.count then index:=FileList.count;
 DrawPage(index);
end;

procedure TMainForm.DirectoryListBox1Change(Sender: TObject);
begin
 lblDir.caption:=DirectoryListBox1.Directory;
end;

procedure TMainForm.SpeedButton1Click(Sender: TObject);
var i:integer;
begin
 if rbcopy.Checked then begin
  if not DirExists(edDest.Text) then begin
   MessageDlg('Destination directory does not exist.', mtError, [mbOK], 0);
   exit;
  end;
  if not fileexists(TSpeedButton(sender).hint) then exit;
  if MessageDlg('Are you sure you want to Copy "'+
   TSpeedButton(sender).hint+'"?',mtWarning, [mbYes, mbCancel], 0)=mryes
   then CopyFile(pchar(TSpeedButton(sender).hint),pchar(EdDest.text),nil);
  end else begin
   if not fileexists(TSpeedButton(sender).hint) then exit;
   if MessageDlg('Are you sure you want to delete "'+
    TSpeedButton(sender).hint+'"?',mtWarning, [mbYes, mbCancel], 0) = mrYes
    then begin
     DeleteFile(TSpeedButton(sender).hint);
     i:=FileList.IndexOf(TSpeedButton(sender).hint);
     if i>=0 then FileList.Delete(i);
     DrawPage(i);
    end;
  end;
end;

procedure TMainForm.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if key = vk_right then begin btnDown.Click; key:=0; end;
 if key = vk_left then begin btnup.Click; key:=0; end;
end;


constructor TFileSearch.create;
begin
 attr:=faArchive;
 Recursive:=true;
 OnFoundFile:=nil;
 Terminated:=false;
 inherited create;
end;

procedure TFileSearch.Findallfiles(const path,wildcard : string);
var sr:TsearchRec;
begin
 if findfirst(path + wildcard,Attr,sr) = 0 then
 try
  repeat
   if assigned(OnFoundFile) then OnFoundFile(path,sr);
  until (findnext(sr)<>0) or Terminated;
 finally
  sysutils.FindClose(sr);
 end;
end;

procedure AddBackSlash(var s:string);
begin
 if s[length(s)]<>'\' then s:=s+'\';
end;

procedure TFileSearch.DoSearch(path, wildCard: string);
begin
 addbackslash(path);
 findallfiles(path,wildcard);
 if recursive then DoTheSearch(Path,wildCard);
end;

procedure TFileSearch.DoTheSearch(path, wildCard: string);
var sr:TsearchRec;
begin
 if findfirst(path + '*.*',faDirectory,sr) = 0
 then
  try
   repeat
    if ((Sr.Attr and fadirectory)<>0)
       and (sr.name[1]<>'.') and (not Terminated) then
    begin
     findallfiles(Path+sr.name+'\',wildcard);
     doThesearch(path+sr.name+'\',wildcard);
    end;
   until (findnext(sr)<>0) or Terminated;
  finally
   sysutils.FindClose(sr);
  end;
end;

procedure TMainForm.rbDeleteClick(Sender: TObject);
begin
 MessageDlg('You selected to DELETE files. OK?', mtWarning, [mbOK], 0);
end;

end.
