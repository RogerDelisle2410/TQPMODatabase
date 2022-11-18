<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserCMTSControl.ascx.cs" Inherits="TQPMODatabase.WebUserCMTSControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>
<table>
    <tr>
        <td>
            <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">


                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList5" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">CMTS</div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image33" class="button4" runat="server" src="/Images/notReady.jpg"
                            Style="margin-right: 10px;" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList6" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
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
                        <asp:Label ID="Label322" runat="server" Text="Jan" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT1" Type="numeric" runat="server" Width="82px" value="21.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT1" runat="server" Width="82px" value="22.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT1" runat="server" Width="82px" value="23.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal1" runat="server" Width="82px" value="24.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB1" runat="server" Width="82px" value="25.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot1" runat="server" Width="82px" value="26.99" />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot1" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label33" runat="server" Text="Fev" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT2" runat="server" Width="82px" Text="21.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT2" runat="server" Width="82px" Text="22.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT2" runat="server" Width="82px" Text="23.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal2" runat="server" Width="82px" Text="24.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB2" runat="server" Width="82px" Text="25.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot2" runat="server" Width="82px" Text="26.99"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label34" runat="server" Text="Mar" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal3" runat="server" Width="82px" Text="34.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot3" runat="server" Width="82px" Text="36.99"></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label1" runat="server" Text="Avr" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'CMTS')" />

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label2" runat="server" Text="Mai" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label3" runat="server" Text="Jun" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label4" runat="server" Text="Jui" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label5" runat="server" Text="Aou" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label6" runat="server" Text="Sep" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label7" runat="server" Text="Oct" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label8" runat="server" Text="Nov" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label9" runat="server" Text="Dec" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="CMTS12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'CMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label910" runat="server" Text="Tot" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="CMTSnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
