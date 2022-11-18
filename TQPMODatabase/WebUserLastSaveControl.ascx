<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserLastSaveControl.ascx.cs" Inherits="TQPMODatabase.WebUserLastSaveControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>
<table>
    <tr>
        <td>
            <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">


                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList11" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
                            RepeatDirection="horizontal" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text=" " />
                            <asp:ListItem Value="2" Text=" " />
                            <asp:ListItem Value="3" Text=" " />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">Last Save</div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image81" class="button4" runat="server" src="/Images/notReady.jpg"
                            Style="margin-right: 10px;" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList12" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="smaller"
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
                        <asp:Label ID="Label68" runat="server" Text="Jan" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT1" Type="numeric" runat="server" Width="82px" value="1.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT1" runat="server" Width="82px" value="2.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT1" runat="server" Width="82px" value="3.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal1" runat="server" Width="82px" value="4.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB1" runat="server" Width="82px" value="5.99" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot1" runat="server" Width="82px" value="6.99" />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB1" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot1" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label69" runat="server" Text="Fev" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT2" runat="server" Width="82px" Text="521.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT2" runat="server" Width="82px" Text="522.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT2" runat="server" Width="82px" Text="523.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal2" runat="server" Width="82px" Text="524.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB2" runat="server" Width="82px" Text="525.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot2" runat="server" Width="82px" Text="526.99"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label70" runat="server" Text="Mar" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal3" runat="server" Width="82px" Text="34.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot3" runat="server" Width="82px" Text="36.99"></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label71" runat="server" Text="Avr" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'LASTSAVE')" />

                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label72" runat="server" Text="Mai" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label73" runat="server" Text="Jun" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label74" runat="server" Text="Jui" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label75" runat="server" Text="Aou" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label76" runat="server" Text="Sep" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label77" runat="server" Text="Oct" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label78" runat="server" Text="Nov" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label79" runat="server" Text="Dec" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="LASTSAVE12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'LASTSAVE')" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label80" runat="server" Text="Tot" Font-Bold="true"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox ReadOnly="true" Style="text-align: right" ID="LASTSAVEnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
