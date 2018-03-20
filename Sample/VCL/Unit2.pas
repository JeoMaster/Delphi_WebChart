unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, Vcl.WinXCtrls,
  Vcl.ExtCtrls, View.WebCharts, Data.DB, Datasnap.DBClient,  Vcl.OleCtrls, SHDocVw,
  Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    WebBrowser1: TWebBrowser;
    ClientDataSet1: TClientDataSet;
    DataSource1: TDataSource;
    ClientDataSet2: TClientDataSet;
    DataSource2: TDataSource;
    ClientDataSet3: TClientDataSet;
    ClientDataSet4: TClientDataSet;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBGrid4: TDBGrid;
    DBGrid3: TDBGrid;
    Panel5: TPanel;
    Label3: TLabel;
    Button3: TButton;
    Panel6: TPanel;
    Label4: TLabel;
    Button4: TButton;
    Panel4: TPanel;
    Label2: TLabel;
    Button2: TButton;
    Panel3: TPanel;
    Label1: TLabel;
    Button1: TButton;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Panel7: TPanel;
    SpeedButton3: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton5: TSpeedButton;
    WebCharts1: TWebCharts;
    ClientDataSet5: TClientDataSet;
    ClientDataSet5SpeciesNo: TFloatField;
    ClientDataSet5Category: TStringField;
    ClientDataSet5Common_Name: TStringField;
    ClientDataSet5SpeciesName: TStringField;
    ClientDataSet5Lengthcm: TFloatField;
    ClientDataSet5Length_In: TFloatField;
    SpeedButton1: TSpeedButton;
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton8Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure SpeedButton10Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
  ClientDataSet1.SaveToFile('..\..\Data\CDSChats.xml');
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  ClientDataSet2.SaveToFile('..\..\Data\CDSChats2.xml');
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  ClientDataSet3.SaveToFile('..\..\Data\CDSChats3.xml');
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  ClientDataSet4.SaveToFile('..\..\Data\CDSChats4.xml');
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;

  WebCharts1
    .NewProject

    .Rows
      .Title
        .Configuracoes
          .H3('Vendas Mensal')
        .&End
      .&End
    .&End

    .Jumpline
    .Jumpline

    .Rows
      .Title
        .Configuracoes
          .H4('Grafico de Barras')
        .&End
      .&End
    .&End

    .Charts
      .Bar
        .Attributes
          .Name('barras1')
          .Title('Meu Grafico de Barras')
          .ColSpan(12)
          .Heigth(80)
          .DataSet
            .DataSet(ClientDataSet1)
            .textLabel('Filial 1')
            //.BackgroundColor('23,25,124')
          .&End
          .DataSet
            .DataSet(ClientDataSet2)
            .textLabel('Filial 2')
            //.BackgroundColor('123,125,124')
          .&End
        .&End
      .&End
    .&End

    .Jumpline
    .Rows
      .Title
        .Configuracoes
          .H4('Entradas / Saidas')
        .&End
      .&End
    .&End

    .Jumpline

    .Rows
      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d1')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End

      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d2')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet4)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End

      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d3')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End
    .&End

    .Jumpline

    .Rows
      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Lines
                .Attributes
                  .Name('l3')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(12)
                  .Heigth(55)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    .Fill('false')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End
    .&End

    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
   TabSheet1.TabVisible := False;
   TabSheet2.TabVisible := False;

  ClientDataSet1.LoadFromFile('..\..\Data\CDSChats.xml');
  ClientDataSet1.Open;

  ClientDataSet2.LoadFromFile('..\..\Data\CDSChats2.xml');
  ClientDataSet2.Open;

  ClientDataSet3.LoadFromFile('..\..\Data\CDSChats3.xml');
  ClientDataSet3.Open;

  ClientDataSet4.LoadFromFile('..\..\Data\CDSChats4.xml');
  ClientDataSet4.Open;
end;

procedure TForm2.SpeedButton10Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
  .NewProject
    .Rows
      .Title
        .Configuracoes
          .H1('Grafico de Barras')
        .&End
      .&End
    .&End
    .Jumpline
    .Jumpline
    .Charts
      .BarHorizontal
        .Attributes
          .Name('Meu Grafico de Barras')
          .ColSpan(12)
          .Title('Meu Grafico de Barras')
          .DataSet
            .textLabel('Meu DataSet 1')
            .DataSet(ClientDataSet1)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton1Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
    .NewProject

    .Rows
      .Title
        .Configuracoes
          .H3('Vendas Mensal')
        .&End
      .&End
    .&End

    .Jumpline
    .Jumpline

    .Rows
      .Title
        .Configuracoes
          .H4('Grafico de Barras')
        .&End
      .&End
    .&End

    .Charts
      .Bar
        .Attributes
          .Name('barras1')
          .Title('Meu Grafico de Barras')
          .ColSpan(12)
          .Heigth(80)
          .DataSet
            .DataSet(ClientDataSet1)
            .textLabel('Filial 1')
            //.BackgroundColor('23,25,124')
          .&End
          .DataSet
            .DataSet(ClientDataSet2)
            .textLabel('Filial 2')
            //.BackgroundColor('123,125,124')
          .&End
        .&End
      .&End
    .&End

    .Jumpline
    .Rows
      .Title
        .Configuracoes
          .H4('Entradas / Saidas')
        .&End
      .&End
    .&End

    .Jumpline

    .Rows
      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d1')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End

      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d2')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet4)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End

      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Doughnut
                .Attributes
                  .Name('d3')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(4)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    //.BackgroundColor('23,25,124')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End
    .&End

    .Jumpline

    .Rows
      .Tag
        .Add(
          WebCharts1
            .ContinuosProject
            .Charts
              .Lines
                .Attributes
                  .Name('l3')
                  .Title('Meu Grafico de Barras')
                  .ColSpan(12)
                  .Heigth(55)
                  .DataSet
                    .DataSet(ClientDataSet3)
                    .textLabel('Filial 1')
                    .Fill('false')
                  .&End
                .&End
              .&End
            .&End
            .HTML
        )
      .&End
    .&End

    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
  .NewProject
    .Charts
      .Doughnut
        .Attributes
          .Name('Meu Grafico Doughnut')
          .ColSpan(12)
          .Title('Meu Grafico Doughnut')
          .DataSet
            .textLabel('Meu DataSet 4')
            .DataSet(ClientDataSet4)
          .&End
          .DataSet
            .textLabel('Meu DataSet 3')
            .DataSet(ClientDataSet3)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton3Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
  .NewProject
    .Rows
      .Title
        .Configuracoes
          .H1('Grafico de Barras')
        .&End
      .&End
    .&End
    .Jumpline
    .Jumpline
    .Charts
      .Bar
        .Attributes
          .Name('Meu Grafico de Barras')
          .ColSpan(12)
          .Title('Meu Grafico de Barras')
          .DataSet
            .textLabel('Meu DataSet 1')
            .DataSet(ClientDataSet1)
          .&End
          .DataSet
            .textLabel('Meu DataSet 2')
            .DataSet(ClientDataSet2)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton4Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
    .NewProject
      .Charts
        .Lines
          .Attributes
            .Name('Meu Grafico de Barras')
            .ColSpan(12)
            .Title('Meu Grafico de Barras')
            .DataSet
              .textLabel('Meu DataSet 1')
              .DataSet(ClientDataSet1)
              .BackgroundColor('227,233,235')
              .BorderColor('227,233,235')
              .Fill('false')
            .&End
            .DataSet
              .textLabel('Meu DataSet 2')
              .DataSet(ClientDataSet2)
              .BackgroundColor('30,182,203')
              .BorderColor('30,182,203')
              .Fill('false')
            .&End

          .&End
        .&End
      .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton5Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TForm2.SpeedButton6Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
    .NewProject
      .Charts
        .LineStacked
          .Attributes
            .Name('Meu Grafico de Barras')
            .ColSpan(12)
            .Title('Meu Grafico de Barras')
            .DataSet
              .textLabel('Meu DataSet 1')
              .DataSet(ClientDataSet1)
              .BackgroundColor('227,233,235')
              .BorderColor('227,233,235')
            .&End
            .DataSet
              .textLabel('Meu DataSet 2')
              .DataSet(ClientDataSet2)
              .BackgroundColor('30,182,203')
              .BorderColor('30,182,203')
            .&End
          .&End
        .&End
      .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

procedure TForm2.SpeedButton7Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
  .NewProject
    .Charts
      .Pie
        .Attributes
          .Name('Meu Grafico Pie')
          .ColSpan(12)
          .Title('Meu Grafico Pie')
          .DataSet
            .textLabel('Meu DataSet 3')
            .DataSet(ClientDataSet3)
          .&End
        .&End
      .&End
    .&End
  .WebBrowser(WebBrowser1)
  .Generated;
end;

procedure TForm2.SpeedButton8Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  WebCharts1
    .NewProject

      .Rows
        .Title
          .Configuracoes
            .H2('Dashboard')
          .&End
        .&End
      .&End

      .Jumpline
      .Jumpline

      .Rows
        .Title
          .Configuracoes
            .H4('Movimento Financeiro')
          .&End
        .&End
      .&End

      .Jumpline

      .Charts
        .Bar
          .Attributes
            .Name('analiseMensal')
            .Title('Analise Mensal')
            .Heigth(80)
            .DataSet
              .DataSet(ClientDataSet1)
            .&End
          .&End
        .&End
      .&End


      .Jumpline

      .Rows
        .Title
          .Configuracoes
            .H4('Entradas/Saidas')
          .&End
        .&End
      .&End



      .Rows

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Name('movimento1')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 1')
                      .DataSet(ClientDataSet3)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Name('movimento2')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 2')
                      .DataSet(ClientDataSet4)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End

        .Tag
          .Add(
            WebCharts1
            .ContinuosProject
              .Charts
                .Doughnut
                  .Attributes
                    .Name('movimento3')
                    .ColSpan(4)
                    .DataSet
                      .textLabel('Movimento 3')
                      .DataSet(ClientDataSet3)
                    .&End
                  .&End
                .&End
              .&End
              .HTML
          )
        .&End
      .&End
      .Jumpline
      .Rows
        .Tag
          .Add(
            WebCharts1
              .ContinuosProject
                .Charts
                  .Lines
                    .Attributes
                      .Name('graficolinhas')
                      .ColSpan(12)
                      .Heigth(50)
                      .DataSet
                        .DataSet(ClientDataSet2)
                        .textLabel('Analise de Compras Mensal')
                        .BackgroundColor('227,233,235')
                        .BorderColor('227,233,235')
                        .Fill('false')
                      .&End
                      .DataSet
                        .DataSet(ClientDataSet1)
                        .textLabel('Analise de Compras Mensal')
                        .BackgroundColor('30,182,203')
                        .BorderColor('30,182,203')
                        .Fill('false')
                      .&End
                    .&End
                  .&End
                .&End
              .HTML
          )
        .&End
      .&End
      .Jumpline
      .Rows
        .Title
          .Configuracoes
            .H4('Registros de Atividades')
          .&End
        .&End
      .&End
    .WebBrowser(WebBrowser1)
    .Generated;
end;

end.
