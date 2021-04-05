<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EjemploHerencia._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <div class="jumbotron">
        <h1>Control de Alumnos</h1>
    </div>

    <div class="row">
        <div class="row">
                    <div class="col-xs-2">
                        Nombre
                        <asp:TextBox ID="TextBoxNombre" runat="server"></asp:TextBox>
                    </div>
                <div class="col-xs-2">
                    Apellido
                    <asp:TextBox ID="TextBoxApellido" runat="server"></asp:TextBox>
                </div>
                <div class="col-xs-2">
                    Dirección
                    <asp:TextBox ID="TextBoxDireccion" runat="server"></asp:TextBox>
                </div>
            </div>
        <br />
        <div class="col-xs-6" style="background-color:cadetblue">
            Fecha de Nacimiento
            <asp:Calendar ID="CalendarNacimiento" runat="server"></asp:Calendar>    
        </div> 
        <div class="col-xs-6" style="background-color:antiquewhite">
            <strong>Notas:</strong><br />
            Curso
            <asp:DropDownList ID="DropDownListCurso" runat="server">
                <asp:ListItem>Matematica</asp:ListItem>
                <asp:ListItem>Programación</asp:ListItem>
                <asp:ListItem>Electrónica</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            Nota
            <asp:TextBox ID="TextBoxNota" runat="server"></asp:TextBox>
            <br />
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBoxNota" ErrorMessage="Debe ingresar un número entre 1 y 100" MaximumValue="100" MinimumValue="1" Type="Integer"></asp:RangeValidator>
            <br />
            <asp:Button ID="Button2" runat="server" Text="Ingresar Nota" class="btn btn-primary btn-sm" CausesValidation="False" OnClick="Button2_Click" />
        </div> 
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Guardar datos" class="btn btn-primary btn-lg" OnClick="Button1_Click" />
    </div>

</asp:Content>
