using System;
using System.Collections.Generic;
using System.Linq;
using System.Windows;
using System.Windows.Input;

namespace Calculator
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {

        public List<int> levels;

        public MainWindow()
        {
            InitializeComponent();
            this.levels = new List<int> () { 60, 70, 80, 110, 160, 210, 280, 360, 450, 550, 670, 790, 930, 1080, 1250, 1420, 1610, 1810, 2020, 2250,
                    70, 80, 100, 140, 190, 250, 330, 430, 540, 660, 800, 950, 1120, 1300, 1500, 1710, 1940, 2180, 2430, 2700,
                    80, 90, 120, 160, 230, 310, 410, 530, 670, 820, 1000, 1190, 1400, 1630, 1880, 2140, 2430, 2730, 3050, 3390,
                    90, 100, 130, 190, 270, 370, 490, 630, 800, 990, 1200, 1430, 1710, 1960, 2260, 2580, 2920, 3290, 3670, 4080, 
                    100, 110, 150, 220, 320, 440, 590, 770, 970, 1200, 1460, 1750, 2060, 2400, 2770, 3160, 3580, 4030, 4510, 5010,
                    110, 120, 170, 240, 340, 460, 620, 800, 1020, 1260, 1530, 1830, 2160, 2510, 2890, 3300, 3740, 4210, 4700, 5220
                    };
        }

        private void TopBar_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
            {
                this.DragMove();
            }
        }

        private void Close_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void Minimize_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void Calculate_Click(object sender, RoutedEventArgs e)
        {

            if (Level_Input.Text != "" && DesiredLevel_Input.Text != "" && EXPGain_Input.Text != "" && EXP_Input.Text != "")
            {
                int currentLevel = 0;
                int EXP = 0;
                int desiredLevel = 0;
                double gain = 0;
                try
                {
                    currentLevel = int.Parse(Level_Input.Text);
                    desiredLevel = int.Parse(DesiredLevel_Input.Text);
                    EXP = int.Parse(EXP_Input.Text);
                    gain = int.Parse(EXPGain_Input.Text);

                    if (currentLevel >= 0 &&
                    currentLevel < 120 &&
                    currentLevel < desiredLevel &&
                    desiredLevel >= 0 &&
                    desiredLevel <= 120 &&
                    gain > 0 &&
                    EXP < this.levels[currentLevel])
                    {
                        int allSum = this.levels.Sum();
                        double expNeeded = this.levels.GetRange(currentLevel, desiredLevel - currentLevel).Sum() - EXP;
                        double gamesNeeded = expNeeded / gain;

                        Calculate_Button.Content = $"You need {Math.Ceiling(gamesNeeded)} games";
                    }
                    else
                    {
                        MessageBox.Show("Invalid number format");
                    }

                }
                catch (FormatException exception)
                {
                    MessageBox.Show("Type an integer");
                }
            }
            else 
            {
                MessageBox.Show("Calculating nothing... DONE!");
            }
        }
    }
}
