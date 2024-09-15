/*
 * Created by SharpDevelop.
 * User: georg
 * Date: 2024-09-02
 * Time: 8:20 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Windows.Forms;

namespace Calculatrice
{
	/// <summary>
	/// Description of MainForm.
	/// </summary>
	public partial class MainForm : Form
	{
		public MainForm()
		{
			//
			// The InitializeComponent() call is required for Windows Forms designer support.
			//
			InitializeComponent();
			
			//
			// TODO: Add constructor code after the InitializeComponent() call.
			//
		}

		void Button1Click(object sender, EventArgs e)
		{ 
		//	tbPht et lblPttc sont DesignMode variables locales
		// tandis que tbPht et lbPttc sont des variables de l'instance
		// double pht = double.Parse(this.tbPht.Text);
		
		double pht;
			
		if(double.TryParse(this.tbPht.Text, out pht)){
			   	double pttc = pht*1.2 ;
				this.lblPttc.Text = pttc.ToString();
		   }
		else{
			this.lblPttc.Text = "Erreur";
		};
		
	
			
		}
	}
}
