using MediaDevices;
using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace 摩托罗拉多开助手
{
    public partial class Form1 : Form
    {
        String jh = "";
        public Form1()
        {
            InitializeComponent();
        }
        //执行命令行命令,获取输出结果
        //cmd_filename: DOS程序文件名
        //arguments: 命令行参数
        public static string ExecCMD(string cmd_filename, string arguments)
        {
            System.Diagnostics.ProcessStartInfo psi = new System.Diagnostics.ProcessStartInfo(cmd_filename, arguments);//如：调用ipconfig ,并传入参数: /all 
            psi.CreateNoWindow = true; //若为false，则会出现cmd的黑窗体 
            psi.RedirectStandardOutput = true;
            psi.UseShellExecute = false;
            System.Diagnostics.Process p = System.Diagnostics.Process.Start(psi);
            return p.StandardOutput.ReadToEnd();
        }
        private void Form1_Load(object sender, EventArgs e)
        {

            string cd = ExecCMD("adb ", "devices");
            string []cs = cd.Split('\n');
            
            for (int i=1; i<cs.Length;i++) {
                if (cs[i].IndexOf("device") != -1)
                {
                    label3.Text = "连接成功，设备：" + cs[i].Split('	')[0];
                }
            }
            string kj = ExecCMD("adb ", "shell pm list users");
            for (int i = 1; i < cs.Length; i++)
            {
                label7.Text = "";
                if (kj.Contains("900"))
                {
                    label7.Text = label7.Text + "可分身空间：900;";
                }
                if (kj.Contains("901"))
                {
                    label7.Text = label7.Text + "可分身空间：901;";
                }
                if (kj.Contains("902"))
                {
                    label7.Text = label7.Text + "可分身空间：902;";
                }
                if (kj.Contains("903"))
                {
                    label7.Text = label7.Text + "可分身空间：903;";
                }
                if (kj.Contains("904"))
                {
                    label7.Text = label7.Text + "可分身空间：904;";
                }
            }
            listBox1.Items.Clear();
            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);


                String jh2 = "";
                while ((jh2 = sr.ReadLine()) != null)
                {
                    if (jh2 == "im大朋友的多开助手") { }
                    jh = jh + jh2 + "\r\n";
                    listBox1.Items.Add(jh2);

                }

                sr.Close();
            }
            catch
            {
                MessageBox.Show("第一次使用请先推送手机助手到手机然后打开，并点击同步应用列表", "摩托罗拉多开助手-BY IM大朋友");
            }

        }

        private void button3_Click(object sender, EventArgs e)
        {
            string cd = ExecCMD("adb ", "devices");
            string[] cs = cd.Split('\n');

            for (int i = 1; i < cs.Length; i++)
            {
                if (cs[i].IndexOf("device") != -1)
                {
                    label3.Text = "连接成功，设备：" + cs[i].Split('	')[0];
                }
            }

        }

        private void toolStripButton1_Click(object sender, EventArgs e)
        {
            MessageBox.Show("1、请先手动去设置开启分身，开启后系统才创建分身分区，否则无论如何多开都会无效，多开几个取决于你有几个多开空间\n2、第一次使用请先推送手机助手到手机然后打开，并点击同步应用列表", "摩托罗拉多开助手-BY IM大朋友");
        }

        private void button5_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);
            
            String jh = "";
            String jh2 = "";
            while ((jh2 = sr.ReadLine()) != null)
            {
                if (jh2 == "im大朋友的多开助手") { }
                //jh = jh + jh2.Split(' ')[0] + "\r\n";
                listBox1.Items.Add(jh2.Split(':')[0]);

            }

            sr.Close();
            }
            catch {
                MessageBox.Show("刷新失败", "摩托罗拉多开助手-BY IM大朋友");
            }

        }
       
        private void button1_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();



            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);
            }
            catch { }

            String jh2 = "";
            try
            {
                while ((jh2 = sr.ReadLine()) != null)
                {
                    if (jh2.Contains ( textBox1.Text)) {
                        jh = jh + jh2 + "\r\n";
                        listBox1.Items.Add(jh2);
                    }
                    

                }
            }
            catch
            {

                MessageBox.Show("请先连接手机同步应用信息");
            }

            sr.Close();
           
        }
        public void spdir() {
            StreamReader sr = null;
            try { sr = new StreamReader("d:/ok.txt", Encoding.UTF8); } catch { }
            String jh = null;
            textBox1.Text = "";
            while ((jh = sr.ReadLine()) != null)
            {
                textBox1.Text = textBox1.Text + jh.Split('!')[3].Replace(".png", "") + "\r\n";
            }
            sr.Close();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();

            string[] cs = jh.Split('\n');
            for (int i = 0; i < cs.Length; i++)
            {
                try { if (cs[i].Split(':')[1].Contains(textBox2.Text)) { listBox1.Items.Add(cs[i]); } }
                catch { MessageBox.Show("请先选择双开的应用"); }

            }
        }

        private void button6_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();   
            string cd = ExecCMD("adb", " shell pm list packages -s");
            string[] cs = cd.Split('\n');
            for (int i = 0; i < cs.Length; i++)
            {
                listBox1.Items.Add(cs[i]);

            }
        }

        private void getDat()
        {
            //读取WPD设备列表
            List<MediaDevice> MediaDeviceList = MediaDevice.GetDevices() as List<MediaDevice>;

            try
            {
                //筛选WPD设备
                using (var driver = MediaDeviceList.First())
                {
                    //连接设备
                    string rootPath = Directory.GetCurrentDirectory();//本软件目录
                    driver.Connect();
                    //读取WPD指定路径的文件
                    MediaFileInfo file = driver.GetFileInfo(@"内部共享存储空间\Android\data\com.imdpy.imdk\files\imdk.dat");
                    //下载WPD上的文件到PC的指定位置
                    FileStream fileStream = File.Create(@rootPath + "/imdk.dat");  //创建流对象
                    driver.DownloadFile(@"内部共享存储空间\Android\data\com.imdpy.imdk\files\imdk.dat", fileStream); //将数据读取到流中

                    fileStream.Flush(); //写入
                    fileStream.Close(); //关闭流
                }
                MessageBox.Show("应用列表读取成功", "摩托罗拉分身助手-BY IM大朋友");
            }
            catch
            {
                MessageBox.Show("请先安装摩托罗拉分身助手并运行", "摩托罗拉分身助手-BY IM大朋友");
            }

        }
        private void button9_Click(object sender, EventArgs e)
        {
            getDat();
            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);
            }
            catch { }

            String jh2 = "";
            try {
                while ((jh2 = sr.ReadLine()) != null)
                {
                    if (jh2 == "im大朋友的多开助手") { }
                    jh = jh + jh2 + "\r\n";
                    listBox1.Items.Add(jh2);

                }
            } catch {

                MessageBox.Show("请先连接手机同步应用信息");
            }

            sr.Close();
        }

        private void button10_Click(object sender, EventArgs e)
        {
            listBox1.Items.Clear();
            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);
            
            
            String jh2 = "";
            while ((jh2 = sr.ReadLine()) != null)
            {
                if (jh2 == "im大朋友的多开助手") { }
                jh = jh + jh2 + "\r\n";
                listBox1.Items.Add(jh2);

            }

            sr.Close();
            }
            catch
            {
                MessageBox.Show("刷新失败", "摩托罗拉多开助手-BY IM大朋友");
            }

        }

        private void listBox1_SelectedIndexChanged(object sender, EventArgs e)
        {
            label5.Text = (String)listBox1.SelectedItem;
        }
        public string imDk()
        {
            string cd = "";
            try {
                cd = ExecCMD("adb ", "shell pm path " + label5.Text.Split(':')[1]);
                //MessageBox.Show("拿到！" + cd, "摩托罗拉多开助手-BY IM大朋友");
            } catch {
                MessageBox.Show("请先选择要分身的应用" + cd, "摩托罗拉多开助手-BY IM大朋友");
            }
            return cd;
        }
        public string imDyh()
        {

            string cd = ExecCMD("adb ", "shell pm list users");
            //MessageBox.Show("拿到！" + cd, "摩托罗拉多开助手-BY IM大朋友");
            return cd;
        }
        private void button4_Click(object sender, EventArgs e)
        {
            eq(903);
        }

        private void button11_Click(object sender, EventArgs e)
        {
            eq(901);
        }

        private void button13_Click(object sender, EventArgs e)
        {
            string  cd= imDk();
            if (cd.Contains("package:"))
            {
                cd = cd.Replace("package:", "");
                //MessageBox.Show("去除！" + cd, "摩托罗拉多开助手-BY IM大朋友");
                try
                {
                    FileStream fs = new FileStream("imt.dat", FileMode.Create);
                    StreamWriter sw = new StreamWriter(fs);
                    //开始写入
                    sw.Write("adb shell pm install -r --user 900 "+cd);
                    //清空缓冲区
                    sw.Flush();
                    //关闭流
                    sw.Close();
                    fs.Close();

                }
                catch { }
                //普通连接
                Process p = new Process();
                try
                {
                    p.StartInfo.FileName = "dk.exe";
                    p.Start();
                }
                catch { }
                System.Threading.Thread.Sleep(3000);  //3秒
                MessageBox.Show("多开成功", "成功提示-摩托罗拉多开助手-BY IM大朋友");
            }
            else MessageBox.Show("多开失败", "错误提示-摩托罗拉多开助手-BY IM大朋友");
        }
        public void eq(int kq) {

            string cd = imDk();
            if (cd.Contains("package:"))
            {
                cd = cd.Replace("package:", "");
                //MessageBox.Show("去除！" + cd, "摩托罗拉多开助手-BY IM大朋友");
                try
                {
                    FileStream fs = new FileStream("imt.dat", FileMode.Create);
                    StreamWriter sw = new StreamWriter(fs);
                    //开始写入
                    sw.Write("adb shell pm install -r --user "+ kq+" " + cd);
                    //清空缓冲区
                    sw.Flush();
                    //关闭流
                    sw.Close();
                    fs.Close();

                }
                catch { }
                //普通连接
                Process p = new Process();
                try
                {
                    p.StartInfo.FileName = "dk.exe";
                    p.Start();
                }
                catch { }
                System.Threading.Thread.Sleep(3000);  //3秒
                MessageBox.Show("多开成功", "成功提示-摩托罗拉多开助手-BY IM大朋友");
            }
            else MessageBox.Show("多开失败", "错误提示-摩托罗拉多开助手-BY IM大朋友");
        }
        private void button12_Click(object sender, EventArgs e)
        {

            string cd = imDk();
            if (cd.Contains("package:"))
            {
                cd = cd.Replace("package:", "");
                //MessageBox.Show("去除！" + cd, "摩托罗拉多开助手-BY IM大朋友");
                try
                {
                    FileStream fs = new FileStream("imt.dat", FileMode.Create);
                    StreamWriter sw = new StreamWriter(fs);
                    //开始写入
                    sw.Write("adb shell pm install -r --user 902 " + cd);
                    //清空缓冲区
                    sw.Flush();
                    //关闭流
                    sw.Close();
                    fs.Close();

                }
                catch { }
                //普通连接
                Process p = new Process();
                try
                {
                    p.StartInfo.FileName = "dk.exe";
                    p.Start();
                }
                catch { }
                System.Threading.Thread.Sleep(3000);  //3秒
                MessageBox.Show("多开成功", "成功提示-摩托罗拉多开助手-BY IM大朋友");
            }
            else MessageBox.Show("多开失败", "错误提示-摩托罗拉多开助手-BY IM大朋友");
        }

        private void button7_Click(object sender, EventArgs e)
        {
            eq(904);
        }

        private void toolStripButton2_Click(object sender, EventArgs e)
        {
            MessageBox.Show("使用多开助手可以多开你手机的任意应用\n你可以在酷安 哔哩哔哩关注我 @im大朋友", "摩托罗拉多开助手-BY IM大朋友");
        }

        private void button8_Click(object sender, EventArgs e)
        {
            string rootPath = Directory.GetCurrentDirectory();
            string cd = ExecCMD("adb ", "install "+rootPath+"/imdkzs.apk");
            MessageBox.Show("理论上助手已经是推送到你的手机上了，但是如果应用列表没找到，就请手动将软件根目录下的imdkzs.apk安装并打开");
        }

        private void button14_Click(object sender, EventArgs e)
        {
            string kj = ExecCMD("adb ", "shell pm list users");
            string[] cs = kj.Split('\n');
            for (int i = 1; i < cs.Length; i++)
            {
                label7.Text = "";
                if (kj.Contains("900"))
                {
                    label7.Text = label7.Text + "可分身空间：900;";
                }
                if (kj.Contains("901"))
                {
                    label7.Text = label7.Text + "可分身空间：901;";
                }
                if (kj.Contains("902"))
                {
                    label7.Text = label7.Text + "可分身空间：902;";
                }
                if (kj.Contains("903"))
                {
                    label7.Text = label7.Text + "可分身空间：903;";
                }
                if (kj.Contains("904"))
                {
                    label7.Text = label7.Text + "可分身空间：904;";
                }
            }
            listBox1.Items.Clear();
            string rootPath = Directory.GetCurrentDirectory();//本软件目录
            StreamReader sr = null;
            try
            {
                sr = new StreamReader("imdk.dat", Encoding.UTF8);


                String jh2 = "";
                while ((jh2 = sr.ReadLine()) != null)
                {
                    if (jh2 == "im大朋友的多开助手") { }
                    jh = jh + jh2 + "\r\n";
                    listBox1.Items.Add(jh2);

                }

                sr.Close();
            }
            catch
            {
                MessageBox.Show("请先同步应用列表", "摩托罗拉多开助手-BY IM大朋友");
            }
        }
    }
}
