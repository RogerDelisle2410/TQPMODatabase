<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserACTCMTSControl.ascx.cs" Inherits="TQPMODatabase.WebUserACTCMTSControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>
<table>
    <tr>
        <td>
            <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">


                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList7" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">ACT + CMTS</div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image49" class="button4" runat="server" src="/Images/notReady.jpg"
                            Style="margin-right: 10px;" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList8" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
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
                        <asp:Label ID="Label17" runat="server" Text="Jan" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT1" Type="numeric" runat="server" Width="82px" value="1.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT1" runat="server" Width="82px" value="2.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT1" runat="server" Width="82px" value="3.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal1" runat="server" Width="82px" value="4.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB1" runat="server" Width="82px" value="5.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot1" runat="server" Width="82px" value="6.99" />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot1" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label37" runat="server" Text="Fev" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT2" runat="server" Width="82px" Text="321.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT2" runat="server" Width="82px" Text="322.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT2" runat="server" Width="82px" Text="323.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal2" runat="server" Width="82px" Text="324.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB2" runat="server" Width="82px" Text="325.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot2" runat="server" Width="82px" Text="326.99"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label38" runat="server" Text="Mar" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal3" runat="server" Width="82px" Text="34.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot3" runat="server" Width="82px" Text="36.99"></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label39" runat="server" Text="Avr" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'ACTCMTS')" />

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label40" runat="server" Text="Mai" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label41" runat="server" Text="Jun" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label42" runat="server" Text="Jui" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label43" runat="server" Text="Aou" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label44" runat="server" Text="Sep" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label45" runat="server" Text="Oct" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label46" runat="server" Text="Nov" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label47" runat="server" Text="Dec" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="ACTCMTS12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'ACTCMTS')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label48" runat="server" Text="Tot" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="ACTCMTSnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
