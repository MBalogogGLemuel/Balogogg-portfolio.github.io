/*
 * Created by SharpDevelop.
 * User: georg
 * Date: 2024-09-02
 * Time: 8:20 PM
 * 
 * To change this template use Tools | Options | Coding | Edit Standard Headers.
 */
namespace Calculatrice
{
	partial class MainForm
	{
		/// <summary>
		/// Designer variable used to keep track of non-visual components.
		/// </summary>
		private System.ComponentModel.IContainer components = null;
		private System.Windows.Forms.Button button1;
		private System.Windows.Forms.Label label1;
		private System.Windows.Forms.TextBox tbPht;
		private System.Windows.Forms.Label label2;
		private System.Windows.Forms.Label lblPttc;
		
		/// <summary>
		/// Disposes resources used by the form.
		/// </summary>
		/// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
		protected override void Dispose(bool disposing)
		{
			if (disposing) {
				if (components != null) {
					components.Dispose();
				}
			}
			base.Dispose(disposing);
		}
		
		/// <summary>
		/// This method is required for Windows Forms designer support.
		/// Do not change the method contents inside the source code editor. The Forms designer might
		/// not be able to load this method if it was changed manually.
		/// </summary>
		private void InitializeComponent()
		{
			this.button1 = new System.Windows.Forms.Button();
			this.label1 = new System.Windows.Forms.Label();
			this.tbPht = new System.Windows.Forms.TextBox();
			this.label2 = new System.Windows.Forms.Label();
			this.lblPttc = new System.Windows.Forms.Label();
			this.SuspendLayout();
			// 
			// button1
			// 
			this.button1.Location = new System.Drawing.Point(28, 98);
			this.button1.Name = "button1";
			this.button1.Size = new System.Drawing.Size(259, 82);
			this.button1.TabIndex = 0;
			this.button1.Text = "Calculer";
			this.button1.UseVisualStyleBackColor = true;
			this.button1.Click += new System.EventHandler(this.Button1Click);
			// 
			// label1
			// 
			this.label1.Location = new System.Drawing.Point(28, 39);
			this.label1.Name = "label1";
			this.label1.Size = new System.Drawing.Size(100, 23);
			this.label1.TabIndex = 1;
			this.label1.Text = "PHT :";
			// 
			// tbPht
			// 
			this.tbPht.Location = new System.Drawing.Point(121, 39);
			this.tbPht.Name = "tbPht";
			this.tbPht.Size = new System.Drawing.Size(166, 31);
			this.tbPht.TabIndex = 2;
			this.tbPht.Text = "0";
			this.tbPht.TextAlign = System.Windows.Forms.HorizontalAlignment.Right;
			this.tbPht.TextChanged += new System.EventHandler(this.Button1Click);
			// 
			// label2
			// 
			this.label2.Location = new System.Drawing.Point(28, 238);
			this.label2.Name = "label2";
			this.label2.Size = new System.Drawing.Size(79, 35);
			this.label2.TabIndex = 3;
			this.label2.Text = " TTC :";
			// 
			// lblPttc
			// 
			this.lblPttc.Location = new System.Drawing.Point(121, 238);
			this.lblPttc.Name = "lblPttc";
			this.lblPttc.Size = new System.Drawing.Size(166, 26);
			this.lblPttc.TabIndex = 4;
			this.lblPttc.Text = "0";
			// 
			// MainForm
			// 
			this.AutoScaleDimensions = new System.Drawing.SizeF(12F, 25F);
			this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
			this.ClientSize = new System.Drawing.Size(380, 318);
			this.Controls.Add(this.lblPttc);
			this.Controls.Add(this.label2);
			this.Controls.Add(this.tbPht);
			this.Controls.Add(this.label1);
			this.Controls.Add(this.button1);
			this.Name = "MainForm";
			this.Text = "Calculatrice";
			this.ResumeLayout(false);
			this.PerformLayout();

		}
	}
}
