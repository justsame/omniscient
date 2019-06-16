﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Threading;
using System.Windows.Forms;
using System.Drawing;
using System.Diagnostics;

using DiscordRPC;

namespace omniscient
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>

    public partial class MainWindow : Window
    {
        private DispatcherTimer dispatcherTimer; //title update timer
        public DiscordRpcClient client; //discord rpc client
        private DispatcherTimer rpcupdateTimer; //rpc set timer
        public static System.Windows.Forms.NotifyIcon notIco = new System.Windows.Forms.NotifyIcon(); //Tray icon
        private About abt = null;
        public static string BlockList;

        //Initialize the discord rpc client
        void Initialize()
        {
            client = new DiscordRpcClient("551862655103664138");
            client.Initialize();
        }

        public MainWindow()
        {
            var sP = new SetPresence();
            sP.Initialize();

            InitializeComponent();

            SaveSettings.FileLoader();
            BlockedWordsTextBox.Text = SaveSettings.LoadedList;

            //Window title update timer
            dispatcherTimer = new DispatcherTimer();
            dispatcherTimer.Tick += new EventHandler(dispatcherTimer_Tick);
            dispatcherTimer.Interval = new TimeSpan(0, 0, 2);
            dispatcherTimer.Start();

            //Rich presence set timer
            rpcupdateTimer = new DispatcherTimer();
            rpcupdateTimer.Tick += new EventHandler(rpcupdateTimer_Tick);
            rpcupdateTimer.Interval = new TimeSpan(0, 0, 2);
            rpcupdateTimer.Start();

            //Double clicking the tray icon
            notIco.DoubleClick +=
            delegate (object sender, EventArgs args)
            {
                this.Show();
                this.WindowState = WindowState.Normal;
                notIco.Visible = false;
            };

        }

        //Update Window title to Omniscient
        private void dispatcherTimer_Tick(object sender, EventArgs e)
        {
            if (client != null) { client.Invoke(); }
            CurrentlyOpen.Content = GetWindowTitle.GetCaptionOfActiveWindow();
            SetPresence.StatText = CustomStatusText.Text;
            SetPresence.CustAppText = CustomAppText.Text;
            CustomAppText.MaxLength = 128;
            CustomStatusText.MaxLength = 128;

        }

        //Checks Window Title for blocked words
        public void BlockedWordCheck()
        {
            string WindowTitle = GetWindowTitle.GetCaptionOfActiveWindow();

            string blockedWordsString = BlockedWordsTextBox.Text;
            string[] blockedWords = blockedWordsString.Split(' ');

            blockedWords = Array.ConvertAll(blockedWords, d => d.ToLower());

            BlockList = blockedWordsString;

            if (blockedWordsString == "" || blockedWordsString == " ")
            {
                SetPresence.blockedWord = false;
            }
            else if (blockedWords.Any(WindowTitle.ToLower().Contains))
            {
                SetPresence.blockedWord = true;
            }
            else{
                SetPresence.blockedWord = false;
            }
        }

        //Sets the presence
        private void rpcupdateTimer_Tick(object sender, EventArgs e)
        {
            BlockedWordCheck();
            var sP = new SetPresence();
            sP.RPCUpdate();
        }

        //Close Button
        private void closeClick(object sender, RoutedEventArgs e)
        {
            if (client != null)
            {
                client.Dispose();
            }
            notIco.Dispose();
            Close();
        }

        //Dragging from anywhere on the window
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }

        //Minimize to tray (hides window and Creates Tray icon)
        public void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            notIco.Icon = Properties.Resources.omni_icon_white;
            notIco.Visible = true;
            this.Hide();
            notIco.ShowBalloonTip(300, "Omniscient","Omniscient was minimized to the icon tray.",ToolTipIcon.Info);
        }
        //Info Button
        private void Button_Click(object sender, RoutedEventArgs e)
        {
            if (abt == null)
            {
                abt = new About();
                abt.Closed += AboutClosed;
                abt.Show();
            }
        }

        public void AboutClosed(object sender, System.EventArgs e)
        {
            abt = null;
        }

        private void CheckBox_Checked(object sender, RoutedEventArgs e)
        {
            SetPresence.customStatus = true;
        }

        private void CheckBox_Unchecked(object sender, RoutedEventArgs e)
        {
            SetPresence.customStatus = false;
        }

        private void CustomAppTextCheck_Checked(object sender, RoutedEventArgs e)
        {
            SetPresence.customApp = true;
        }

        private void CustomAppTextCheck_Unchecked(object sender, RoutedEventArgs e)
        {
            SetPresence.customApp = false;
        }

        private void SaveBtn_Click(object sender, RoutedEventArgs e)
        {
            SaveSettings.FileSaver();
        }

        private void AltThemeCheck_Checked(object sender, RoutedEventArgs e)
        {
            SetPresence.altTheme = true;
        }

        private void AltThemeCheck_Unchecked(object sender, RoutedEventArgs e)
        {
            SetPresence.altTheme = false;
        }
    }
}
