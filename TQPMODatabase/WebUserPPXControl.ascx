<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserPPXControl.ascx.cs" Inherits="TQPMODatabase.WebUserPPXControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>
<table>
    <tr>
        <td>
            <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">


                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList9" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">PPX</div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image65" class="button4" runat="server" src="/Images/notReady.jpg"
                            Style="margin-right: 10px;" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList10" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
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
                        <asp:Label ID="Label52" runat="server" Text="Jan" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT1" Type="numeric" runat="server" Width="82px" value="41.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT1" runat="server" Width="82px" value="42.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT1" runat="server" Width="82px" value="43.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal1" runat="server" Width="82px" value="44.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB1" runat="server" Width="82px" value="45.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot1" runat="server" Width="82px" value="46.99" />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot1" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label53" runat="server" Text="Fev" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT2" runat="server" Width="82px" Text="21.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT2" runat="server" Width="82px" Text="22.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT2" runat="server" Width="82px" Text="23.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal2" runat="server" Width="82px" Text="24.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB2" runat="server" Width="82px" Text="25.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot2" runat="server" Width="82px" Text="26.99"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label54" runat="server" Text="Mar" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal3" runat="server" Width="82px" Text="34.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot3" runat="server" Width="82px" Text="36.99"></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label55" runat="server" Text="Avr" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'PPX')" />

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label56" runat="server" Text="Mai" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label57" runat="server" Text="Jun" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label58" runat="server" Text="Jui" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label59" runat="server" Text="Aou" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label60" runat="server" Text="Sep" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label61" runat="server" Text="Oct" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label62" runat="server" Text="Nov" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label63" runat="server" Text="Dec" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="PPX12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'PPX')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label64" runat="server" Text="Tot" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="PPXnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
