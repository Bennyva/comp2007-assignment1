<%--Benjamin Vanarragon
June 1st. 2015
This is the ASPX  code for the design of the main content in the master page.--%>

<%@ Page title="default" MasterPageFile="games.Master" Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="assignment1._default" %>
<%@ Register Src="~/game.ascx" TagPrefix="ucGame" TagName="game" %>

<%--main content here, which is inserted into the master page--%>
<asp:Content ID="mainContent" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <h1>Game Calculator</h1>
        <p class="text-warning">All fields are required. No ties or draws are allowed.</p>
        <div class="container">
            <div class="container-fluid">
                <div class="row">
                    <%--these are the 4 user controls that give the user input for the game--%>
                    <ucGame:game id="game1" gameTitle="Game 1" runat="server" />
                    <ucGame:game id="game2" gameTitle="Game 2" runat="server" />
                    <ucGame:game id="game3" gameTitle="Game 3" runat="server" />
                    <ucGame:game id="game4" gameTitle="Game 4" runat="server" />
                 </div>
            </div>
        </div>
        </div>
        <%--the submit button that calls the code behind to do all the calculations--%>
        <div class="text-center">
            <asp:Button ID="btnSubmit"  runat="server" Text="Calculate Totals" class="btn btn-primary" OnClick="btnSubmit_Click" />
        </div>
        <div>
            <br />
        </div>
            <%--the results panel which displays more information back to the user after the form is complete--%>
            <div class="container">
                <div class="container-fluid">
                    <asp:Panel ID="pnlResults" runat="server" Visible="false" class="col-lg-12">
                        <div class="well">
                            <h2>Results</h2>
                            <div><asp:Label ID="lblGameWon" runat="server" Visible="false" Text="Games Won: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblGamesLost" runat="server" Visible="false" Text="Games Lost: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblWinningPercentage" runat="server" Visible="false" Text="Winning Percentage: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblTotalScored" runat="server" Visible="false" Text="Total Points: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblTotalAllowed" runat="server" Visible="false" Text="Total Points Against: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblPointDiff" runat="server" Visible="false" Text="Point Difference: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblTotalSpectators" runat="server" Visible="false" Text="Total Spectators: " CssClass="control-label"></asp:Label></div>
                            <div><asp:Label ID="lblAvgSpectators" runat="server" Visible="false" Text="Average Spectators: " CssClass="control-label"></asp:Label></div>
                    </div>
                </asp:Panel>
            </div>
        </div>
</asp:Content>