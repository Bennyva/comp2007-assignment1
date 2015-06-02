using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class _default : System.Web.UI.Page
    {
        //declaring global variables
        int     gamesWon = 0;
        int     gamesLost = 0;
        double  winningPercentage = 0;
        int     totalPoints = 0;
        int     totalPointsAgainst = 0;
        int     totalSpectators = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //resetting variables on page load
            if (!IsPostBack)
            {
            gamesWon = 0;
            gamesLost = 0;
            winningPercentage = 0;
            totalPoints = 0;
            totalPointsAgainst = 0;
            totalSpectators = 0;
            }
            
            
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            //resetting labels when the button is clicked
            lblGameWon.Text = "Games Won: ";
            lblGamesLost.Text = "Games Lost: ";
            lblWinningPercentage.Text = "Winning Percentage: ";
            lblTotalScored.Text = "Total Points: ";
            lblTotalAllowed.Text = "Total Points Against: ";
            lblPointDiff.Text = "Point Difference: ";
            lblTotalSpectators.Text = "Total Spectators: ";
            lblAvgSpectators.Text = "Average Spectators: ";


            //making the labels visible
            lblGameWon.Visible              = true;
            lblGamesLost.Visible            = true;
            lblWinningPercentage.Visible    = true;
            lblTotalScored.Visible          = true;
            lblTotalAllowed.Visible         = true;
            lblPointDiff.Visible            = true;
            lblTotalSpectators.Visible      = true;
            lblAvgSpectators.Visible        = true;
            pnlResults.Visible = true;

            //reseting variables on button click
            int gamesWon                =0;
            int gamesLost               =0;
            double winningPercentage    =0;
            int totalPoints             =0;
            int totalPointsAgainst      =0;
            int totalSpectators         =0;

            //setting values of the variables, mostly from methods in the game.ascx.cs class
            gamesWon                = game1.getWins() + game2.getWins() + game3.getWins() + game4.getWins();
            int numberOfGames           = 4;
            gamesLost               = numberOfGames - gamesWon;
            winningPercentage    = (Convert.ToDouble(gamesWon) / (Convert.ToDouble(numberOfGames)));
            totalPoints             = game1.getPoints() + game2.getPoints() + game3.getPoints() + game4.getPoints();
            totalPointsAgainst      = game1.getPointsAgainst() + game2.getPointsAgainst() + game3.getPointsAgainst() + game4.getPointsAgainst();
            totalSpectators         = game1.getSpectators() + game2.getSpectators() + game3.getSpectators() + game4.getSpectators();

            //setting the text of the below labels with the values from the above variables
            lblGameWon.Text += gamesWon.ToString();
            lblGamesLost.Text            += gamesLost.ToString();
            lblWinningPercentage.Text += winningPercentage.ToString();
            lblTotalScored.Text += totalPoints.ToString();
            lblTotalAllowed.Text += totalPointsAgainst.ToString();
            lblPointDiff.Text += (totalPoints - totalPointsAgainst).ToString();
            lblTotalSpectators.Text += totalSpectators.ToString();
            lblAvgSpectators.Text += (totalSpectators / numberOfGames).ToString();

            
        }
    }
}