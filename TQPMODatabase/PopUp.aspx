<%@ Page Title="PopUp" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="PopUp.aspx.cs" Inherits="TQPMODatabase.PopUp" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">


    


  
        <title>JavaScript Yes/No Confirmation box</title>
        <script>
            const confirmAction = () => {
                const response = confirm("Are you sure you want to do that?");

                if (response) {
                    alert("Ok was pressed");
                } else {
                    alert("Cancel was pressed");
                }
            }
        </script>
  
  
        <button onclick="confirmAction()">
            Perform action
        </button>
 
  

</asp:Content>

