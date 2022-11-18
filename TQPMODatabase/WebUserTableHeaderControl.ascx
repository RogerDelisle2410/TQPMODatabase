<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserTableHeaderControl.ascx.cs" Inherits="TQPMODatabase.WebUserTableHeaderControl" %>

<div class="col-lg-12" style="text-align: center; height: 20px;">
    <div class="col-lg-1" style="width: 5.1%; height: 20px;"></div>
    <label class="col-lg-5" id="Label14" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 472px; height: 25px;"></label>

    <script>   

        if (<%=language%> == "1") {
            document.getElementById('Label14').innerHTML = "Rapports";
        } else {
            document.getElementById('Label14').innerHTML = "Reports";
        }
    </script>
    <div class="col-lg-1" style="width: 11.0%; text-align: center;">
        <asp:Image ID="Image1" class="button5  " runat="server" src="/Images/zero.jpg"
            Style="border-style: solid; border-color: red;" OnClick="clearAllValuesClick()" />
    </div>
    <label class="col-lg-5" id="Label15" style="font-weight: bold; font-size: smaller; border-style: solid; border-color: black; float: left; width: 472px; height: 25px;"></label>
    <script>   
        if (<%=language%> == "1") {
            document.getElementById('Label15').innerHTML = "Ajustements";
        } else {
            document.getElementById('Label15').innerHTML = "Adjustments";
        }
    </script>

</div>
<div style="height: 25px"></div>
<div class="  col-lg-12" style="height: 20px; font-size: 11px; font-weight: bold;">
    <div class="  col-lg-6" style="padding-bottom: 10px;">
        <asp:Label ID="Label11" runat="server">
        </asp:Label>

        <asp:Label runat="server" Width="80px" Text="MAT" Style="text-align: right; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="INT" Style="text-align: right; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="EXT" Style="text-align: right; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="Total" Style="text-align: right; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="CTRB" Style="text-align: right; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="Net Total" Style="text-align: right; border-style: none"></asp:Label>

    </div>

    <div class="  col-lg-6" style="float: right; height: 20px; padding-bottom: 10px; padding-right: 2px;">
        <asp:Image ID="Image17" class="button4" runat="server" src="/Images/moveAllArrow.jpg" OnClick="pushAllValuesClick()" />
        <asp:Label runat="server" Width="80px" Text="MAT" Style="text-align: center; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="INT" Style="text-align: center; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="EXT" Style="text-align: center; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="Total" Style="text-align: center; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="CTRB" Style="text-align: center; border-style: none"></asp:Label>
        <asp:Label runat="server" Width="80px" Text="Net Total" Style="text-align: center; border-style: none"></asp:Label>
    </div>
</div>
