<%--Benjamin Vanarragon
June 1st. 2015
This is the ASPX  code for the user control that we replicate on the default page--%>


<%@ Control Language="C#" AutoEventWireup="true" CodeBehind="game.ascx.cs" Inherits="assignment1.game" %>

            <div class="col-sm-3 col-md-3">
                <div class="well">
                        <%--input for radio buttons whether the team won or lost--%>
                        <h2><asp:Label ID="lblGameTitle" Text="Game " runat="server" ></asp:Label></h2>
                        <%--form group 1--%>
                        <div class="form-group">
                            <asp:Label ID="lblResult" Text="Result:" runat="server" class="control-label col-sm-4"></asp:Label>
                            <div class="col-sm-8">
                                <asp:RadioButtonList runat="server" class="radio-inline" ID="rbListResult">
                                    <asp:ListItem Value="Win" Text="Win"></asp:ListItem>
                                    <asp:ListItem Value="Loss" Text="Loss"></asp:ListItem>
                                </asp:RadioButtonList>
                                
                            </div>
                        </div>

                        <%--input for how many points scored--%>
                        <div class="form-group">
                        <asp:Label ID="lblScored" Text="Scored: " runat="server" class="control-label col-sm-4"></asp:Label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtBoxScored" runat="server" class="form-control" TextMode="Number" required="true"></asp:TextBox>
                            </div>
                        </div>

                        <%--input for how many point scored against them--%>
                        <div class="form-group">
                            <asp:Label ID="lblAllowed" Text="Allowed:" runat="server" class="control-label col-sm-4"></asp:Label>
                            <div class="col-sm-8">
                                <asp:TextBox ID="txtBoxAllowed" runat="server" class="form-control" TextMode="Number" required="true"></asp:TextBox>
                            </div>
                        </div>

                        <%--input for the number of spectators at the game--%>
                         <div class="form-group">
                            <asp:Label ID="lblSpectators" Text="Spectators:" runat="server" class="control-label col-sm-4"></asp:Label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtBoxSpectators" runat="server" class="form-control" TextMode="Number" required="true"></asp:TextBox>
                                </div>
                             
                         </div>
                    <%--these are the validators for the above input controls.--%>
                    <asp:RequiredFieldValidator ID="rbListResultValidator" runat="server"
                                    ErrorMessage="Result field is Required" ControlToValidate="rbListResult" Display="Dynamic" CssClass="label label-danger">
                    </asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="txtBoxScoredValidator" runat="server"
                                    ErrorMessage="Scored must be 0 or higher" Type="Integer" ControlToValidate="txtBoxScored" MaximumValue="1000000" MinimumValue="0" Display="Dynamic" CssClass="label label-danger">
                    </asp:RangeValidator>
                    <asp:RangeValidator ID="txtBoxAllowedValidator" runat="server"
                                    ErrorMessage="Allowed must be 0 or higher" Type="Integer" ControlToValidate="txtBoxAllowed" MaximumValue="1000000" MinimumValue="0" Display="Dynamic" CssClass="label label-danger">
                    </asp:RangeValidator>
                    <asp:RangeValidator ID="txtBoxSpectatorsValidator" runat="server"
                                    ErrorMessage="Spectators must be 0 or higher" Type="Integer" ControlToValidate="txtBoxSpectators" MaximumValue="1000000" MinimumValue="0" Display="Dynamic" CssClass="label label-danger">
                    </asp:RangeValidator>
                    <asp:CompareValidator runat="server" id="compareForAgainst" controltovalidate="txtBoxScored" 
                        controltocompare="txtBoxAllowed" operator="NotEqual" type="Integer" errormessage="Scored and Allowed must be different" CssClass="label label-danger" >
                    </asp:CompareValidator>
                
                </div>
            </div>
