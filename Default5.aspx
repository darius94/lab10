<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default5.aspx.cs" Inherits="Default5" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="cpMainContent" Runat="Server">
    
      <h2> Validation : Number Required, Between 1-10  </h2>
       
     <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                  
            <asp:RequiredFieldValidator ID="requiredFieldValidator" runat="server" ErrorMessage="RequiredFieldValidator" ControlToValidate="TextBox1">
            
           </asp:RequiredFieldValidator>
        
        <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="not in range"  ControlToValidate="TextBox1" MaximumValue="10" MinimumValue="1" Type="Double"></asp:RangeValidator>
 

     <asp:Button ID="Button1" runat="server" Text="Button" click="function()"  />
    
  <script>
    $(document).ready(function () {
        $('#MainContent').css('background-color', 'green')
        $('#Button1').click(function () {
            $('#MainContent').css('background-color', 'red').animate({ width: '100px', height: '800px' })
        });
    });


</script>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
</asp:Content>


