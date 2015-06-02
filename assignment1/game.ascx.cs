//Benjamin Vanarragon
//June 1st. 2015
//This is the code behind for the user control, it has methods that pass information to the code behind on default.aspx.



using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace assignment1
{
    public partial class game : System.Web.UI.UserControl
    {
        //defining global variables
        public string gameTitle;
        public int gamesWon = 0;
        public int gamesLost = 0;
        public int totalPoints = 0;
        public int totalPointsAgainst = 0;
        public int totalSpectators = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
            //setting a custom attribute, so when we replicate the user control, we can change the title of each one
            lblGameTitle.Text = gameTitle;

        }

        //this method returns how many wins the team got, by counting the radio button that are checked where the value is win
        public int getWins()
        {
            foreach (ListItem item in rbListResult.Items)
            {
                        if (item.Selected)
                        {
                            if (item.Value == "Win")
                            {
                                //get the text value of the selected radio button
                                gamesWon++;
                            }
                        }
             }
            return gamesWon;
        }

        //this method returns the amount of points in the point textbox
        public int getPoints()
        {
            totalPoints += int.Parse(txtBoxScored.Text);
            return totalPoints;
        }

        //this method returns the amount of points against in the point against textbox
        public int getPointsAgainst()
        {
            totalPointsAgainst += int.Parse(txtBoxAllowed.Text);
            return totalPointsAgainst;
        }

        //this method returns the amount of spectators in the spectators text box
        public int getSpectators()
        {
            totalSpectators += int.Parse(txtBoxSpectators.Text);
            return totalSpectators;
        }
       
    }
}