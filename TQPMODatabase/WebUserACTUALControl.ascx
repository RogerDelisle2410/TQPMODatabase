<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserACTUALControl.ascx.cs" Inherits="TQPMODatabase.WebUserACTUALControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>
<table>
    <tr>
        <td>
            <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">


                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList3" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">ACTUAL </div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image16" class="button4" runat="server" src="/Images/notReady.jpg"
                            Style="margin-right: 10px;" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList4" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block;"></div>
                </div> 

                <div style="height: 25px"></div>
               
                 <TWebControl:WebUserTableHeaderControl ID="WebUserTableHeaderControl" runat="server" /> 
                <br />

                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label18" runat="server" Text="Jan" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT1" Type="numeric" runat="server" Width="82px" value="771.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT1" runat="server" Width="82px" value="172.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT1" runat="server" Width="82px" value="173.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal1" runat="server" Width="82px" value="174.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB1" runat="server" Width="82px" value="715.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot1" runat="server" Width="82px" value="176.99" />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot1" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label19" runat="server" Text="Fev" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT2" runat="server" Width="82px" Text="291.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT2" runat="server" Width="82px" Text="292.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT2" runat="server" Width="82px" Text="239.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal2" runat="server" Width="82px" Text="294.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB2" runat="server" Width="82px" Text="295.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot2" runat="server" Width="82px" Text="296.99"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label20" runat="server" Text="Mar" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT3" runat="server" Width="82px" Text="831.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT3" runat="server" Width="82px" Text="382.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT3" runat="server" Width="82px" Text="383.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal3" runat="server" Width="82px" Text="384.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB3" runat="server" Width="82px" Text="385.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot3" runat="server" Width="82px" Text="386.99"></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label21" runat="server" Text="Avr" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'ACTUAL')" />

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label22" runat="server" Text="Mai" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label23" runat="server" Text="Jun" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label24" runat="server" Text="Jui" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label25" runat="server" Text="Aou" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label26" runat="server" Text="Sep" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label27" runat="server" Text="Oct" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label28" runat="server" Text="Nov" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label29" runat="server" Text="Dec" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTUAL12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'ACTUAL')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label36" runat="server" Text="Tot" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTUALnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
