<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="WebUserSAPVOControl.ascx.cs" Inherits="TQPMODatabase.WebUserSAPVOControl" %>

<%@ Register Src="~/WebUserTableHeaderControl.ascx" TagName="WebUserTableHeaderControl" TagPrefix="TWebControl" %>

    <table>
        <tr>
            <td>
                <asp:Panel class=" " Visible="true" runat="server" Style="border-style: solid; border-color: black; height: auto; width: 100%; display: inline-block;">

                <div class="  col-lg-12" style="height: 25px; display: inline-block;">
                    <div class="col-lg-1" style="height: 25px; display: inline-block;"></div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Left" Font-Size="smaller"
                            RepeatDirection="vertical" RepeatLayout="Table">
                            <asp:ListItem Value="1" Text="2021" />
                            <asp:ListItem Value="2" Text="2022" />
                            <asp:ListItem Value="3" Text="2023" />
                        </asp:RadioButtonList>
                    </div>
                    <div class="col-lg-2" style="height: 25px; display: inline-block; font-size: medium; font-weight: bold; text-align: right;">SAP VO</div>
                    <div class="col-lg-1" style="height: 25px; display: inline-block;">
                        <asp:Image ID="Image15" class="button4" runat="server" src="/Images/exit.jpg"
                            Style="margin-right: 10px;" OnClick="NullAllValuesClick()" />
                    </div>
                    <div class="  col-lg-3" style="height: 25px;">
                        <asp:RadioButtonList ID="RadioButtonList2" runat="server" CssClass="rbl" RepeatColumns="3" TextAlign="Right" Font-Size="12px" RepeatDirection="horizontal" RepeatLayout="Table" Style="display: block;">
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

                <%--SAP VO ====================================================================--%>


                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label32" runat="server" Text="Jan" Font-Bold="true" TabIndex="0"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>

                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT1" runat="server" Width="82px" value=" 65.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT1" runat="server" Width="82px" value="223.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT1" runat="server" Width="82px" value="3.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal1" runat="server" Width="82px"   />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB1" runat="server" Width="82px" value="5.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot1" runat="server" Width="82px"   />
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO1" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(1,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT1" runat="server" Width="82px" value=" 65.00" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT1" runat="server" Width="82px" value="223.00" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT1" runat="server" Width="82px" value="3.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal1" runat="server" Width="82px" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB1" runat="server" Width="82px" value="5.00" />
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot1" runat="server" Width="82px" />
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label333" runat="server" Text="Fev" Font-Bold="true" TabIndex="1"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT2" runat="server" Width="82px" Text="21.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT2" runat="server" Width="82px" Text="22.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT2" runat="server" Width="82px" Text="23.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal2" runat="server" Width="82px"  ></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB2" runat="server" Width="82px" Text="25.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot2" runat="server" Width="82px"  ></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO2" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(2,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT2" runat="server" Width="82px" Text="21.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT2" runat="server" Width="82px" Text="22.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT2" runat="server" Width="82px" Text="23.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal2" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB2" runat="server" Width="82px" Text="25.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot2" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>



                <div class="  col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="  col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label349" runat="server" Text="Mar" Font-Bold="true" TabIndex="2"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal3" runat="server" Width="82px"  ></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot3" runat="server" Width="82px"  ></asp:TextBox>
                    </div>

                    <div class="  col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO3" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(3,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT3" runat="server" Width="82px" Text="31.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT3" runat="server" Width="82px" Text="32.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT3" runat="server" Width="82px" Text="33.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal3" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB3" runat="server" Width="82px" Text="35.99"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot3" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label199" runat="server" Text="Avr" Font-Bold="true" TabIndex="3"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO4" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(4,'SAPVO')" />

                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB4" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot4" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label289" runat="server" Text="Mai" Font-Bold="true" TabIndex="4"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO5" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(5,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB5" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot5" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label399" runat="server" Text="Jun" Font-Bold="true" TabIndex="5"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO6" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(6,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB6" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot6" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label499" runat="server" Text="Jui" Font-Bold="true" TabIndex="6"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO7" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(7,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB7" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot7" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label599" runat="server" Text="Aou" Font-Bold="true" TabIndex="7"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO8" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(8,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB8" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot8" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label699" runat="server" Text="Sep" Font-Bold="true" TabIndex="8"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO9" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(9,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB9" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot9" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label799" runat="server" Text="Oct" Font-Bold="true" TabIndex="9"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot10" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO10" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(10,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB10" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot10" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label898" runat="server" Text="Nov" Font-Bold="true" TabIndex="10"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT11" runat="server" Width="82px" value="1.00"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT11" runat="server" Width="82px" value="2.00"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT11" runat="server" Width="82px" value="3.00"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB11" runat="server" Width="82px" value="4.00"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot11" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO11" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(11,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB11" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot11" runat="server" Width="82px"></asp:TextBox>

                    </div>
                </div>

                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label988" runat="server" Text="Dec" Font-Bold="true" TabIndex="11"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT12" runat="server" Width="82px" value="15.40"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT12" runat="server" Width="82px" value="15.40"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT12" runat="server" Width="82px" value="15.40"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB12" runat="server" Width="82px" value="15.40"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="SAPVO12" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px;" OnClick="pushValueClick(12,'SAPVO')" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewINT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewEXT12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewCTRB12" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot12" runat="server" Width="82px"></asp:TextBox>
                    </div>
                </div>
                <div class="col-lg-12" style="height: 20px; margin-top: 5px;">
                    <div class="col-lg-6" style="text-align: center; float: left; padding-bottom: 10px; display: inline-flex;">
                        <asp:Label ID="Label810" runat="server" Text="Tot" Font-Bold="true" TabIndex="12"
                            Font-Size="smaller" Width="20px" Style="margin-top: 8px; margin-right: 3px;">
                        </asp:Label>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOoldNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>

                    <div class="col-lg-6" style="float: right; padding-right: 2px; height: 20px; padding-bottom: 10px; display: inline-flex;">
                        <asp:Image ID="Image299" class="button4" runat="server" src="/Images/smallLeftArrow.jpg"
                            Style="margin-right: 10px; visibility: hidden" />
                        <asp:TextBox class="laClass" ReadOnly="false" Style="text-align: right" ID="SAPVOnewMAT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewINT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewEXT13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewTotal13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewCTRB13" runat="server" Width="82px"></asp:TextBox>
                        <asp:TextBox class="laClass" ReadOnly="true" Style="text-align: right" ID="SAPVOnewNetTot13" runat="server" Width="82px"></asp:TextBox>
                    </div>
                    <br />
                    <br />
                </div>
                <div class="col-lg-12" style="height: 20px;"></div>
            </asp:Panel>
        </td>
    </tr>
</table>
