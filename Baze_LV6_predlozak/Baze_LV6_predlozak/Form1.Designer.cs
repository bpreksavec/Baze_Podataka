namespace Baze_LV6_predlozak
{
    partial class Form1
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.dgvPodaci = new System.Windows.Forms.DataGridView();
            this.lblPrezime = new System.Windows.Forms.Label();
            this.lblIme = new System.Windows.Forms.Label();
            this.btnSve = new System.Windows.Forms.Button();
            this.txtPrezime = new System.Windows.Forms.TextBox();
            this.txtIme = new System.Windows.Forms.TextBox();
            this.btnTrazi = new System.Windows.Forms.Button();
            this.rbM = new System.Windows.Forms.RadioButton();
            this.rbZ = new System.Windows.Forms.RadioButton();
            ((System.ComponentModel.ISupportInitialize)(this.dgvPodaci)).BeginInit();
            this.SuspendLayout();
            // 
            // dgvPodaci
            // 
            this.dgvPodaci.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dgvPodaci.Location = new System.Drawing.Point(12, 75);
            this.dgvPodaci.Name = "dgvPodaci";
            this.dgvPodaci.Size = new System.Drawing.Size(617, 344);
            this.dgvPodaci.TabIndex = 14;
            // 
            // lblPrezime
            // 
            this.lblPrezime.AutoSize = true;
            this.lblPrezime.Location = new System.Drawing.Point(147, 13);
            this.lblPrezime.Name = "lblPrezime";
            this.lblPrezime.Size = new System.Drawing.Size(47, 13);
            this.lblPrezime.TabIndex = 13;
            this.lblPrezime.Text = "Prezime:";
            // 
            // lblIme
            // 
            this.lblIme.AutoSize = true;
            this.lblIme.Location = new System.Drawing.Point(12, 13);
            this.lblIme.Name = "lblIme";
            this.lblIme.Size = new System.Drawing.Size(27, 13);
            this.lblIme.TabIndex = 12;
            this.lblIme.Text = "Ime:";
            // 
            // btnSve
            // 
            this.btnSve.Location = new System.Drawing.Point(510, 29);
            this.btnSve.Name = "btnSve";
            this.btnSve.Size = new System.Drawing.Size(119, 23);
            this.btnSve.TabIndex = 11;
            this.btnSve.Text = "Prikaži sve";
            this.btnSve.UseVisualStyleBackColor = true;
            this.btnSve.Click += new System.EventHandler(this.btnSve_Click);
            // 
            // txtPrezime
            // 
            this.txtPrezime.Location = new System.Drawing.Point(150, 32);
            this.txtPrezime.Name = "txtPrezime";
            this.txtPrezime.Size = new System.Drawing.Size(132, 20);
            this.txtPrezime.TabIndex = 10;
            // 
            // txtIme
            // 
            this.txtIme.Location = new System.Drawing.Point(12, 32);
            this.txtIme.Name = "txtIme";
            this.txtIme.Size = new System.Drawing.Size(132, 20);
            this.txtIme.TabIndex = 9;
            // 
            // btnTrazi
            // 
            this.btnTrazi.Location = new System.Drawing.Point(350, 30);
            this.btnTrazi.Name = "btnTrazi";
            this.btnTrazi.Size = new System.Drawing.Size(75, 23);
            this.btnTrazi.TabIndex = 8;
            this.btnTrazi.Text = "Traži";
            this.btnTrazi.UseVisualStyleBackColor = true;
            this.btnTrazi.Click += new System.EventHandler(this.btnTrazi_Click);
            // 
            // rbM
            // 
            this.rbM.AutoSize = true;
            this.rbM.Checked = true;
            this.rbM.Location = new System.Drawing.Point(301, 23);
            this.rbM.Name = "rbM";
            this.rbM.Size = new System.Drawing.Size(34, 17);
            this.rbM.TabIndex = 15;
            this.rbM.TabStop = true;
            this.rbM.Text = "M";
            this.rbM.UseVisualStyleBackColor = true;
            // 
            // rbZ
            // 
            this.rbZ.AutoSize = true;
            this.rbZ.Location = new System.Drawing.Point(301, 43);
            this.rbZ.Name = "rbZ";
            this.rbZ.Size = new System.Drawing.Size(32, 17);
            this.rbZ.TabIndex = 16;
            this.rbZ.Text = "Z";
            this.rbZ.UseVisualStyleBackColor = true;
            // 
            // Form1
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(645, 441);
            this.Controls.Add(this.rbZ);
            this.Controls.Add(this.rbM);
            this.Controls.Add(this.dgvPodaci);
            this.Controls.Add(this.lblPrezime);
            this.Controls.Add(this.lblIme);
            this.Controls.Add(this.btnSve);
            this.Controls.Add(this.txtPrezime);
            this.Controls.Add(this.txtIme);
            this.Controls.Add(this.btnTrazi);
            this.Name = "Form1";
            this.Text = "Baze Podataka LV6";
            ((System.ComponentModel.ISupportInitialize)(this.dgvPodaci)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        #endregion

        private System.Windows.Forms.DataGridView dgvPodaci;
        private System.Windows.Forms.Label lblPrezime;
        private System.Windows.Forms.Label lblIme;
        private System.Windows.Forms.Button btnSve;
        private System.Windows.Forms.TextBox txtPrezime;
        private System.Windows.Forms.TextBox txtIme;
        private System.Windows.Forms.Button btnTrazi;
        private System.Windows.Forms.RadioButton rbM;
        private System.Windows.Forms.RadioButton rbZ;
    }
}

